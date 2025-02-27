
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_10__ {size_t targ_mapped_lun; } ;
struct TYPE_9__ {TYPE_5__ nexus; } ;
struct TYPE_6__ {int page_code; scalar_t__ subpage; int data; } ;
union ctl_ha_msg {TYPE_4__ hdr; TYPE_1__ mode; } ;
typedef size_t uint32_t ;
typedef size_t u_int ;
struct ctl_softc {int ctl_lock; struct ctl_lun** ctl_luns; } ;
struct TYPE_8__ {TYPE_2__* index; } ;
struct ctl_lun {int flags; int lun_lock; TYPE_3__ mode_pages; } ;
struct TYPE_7__ {int page_code; scalar_t__ subpage; int page_len; int page_data; } ;


 int CTL_LUN_DISABLED ;
 size_t CTL_NUM_MODE_PAGES ;
 int CTL_UA_MODE_CHANGE ;
 int SMPH_PC_MASK ;
 int ctl_est_ua_all (struct ctl_lun*,size_t,int ) ;
 size_t ctl_get_initindex (TYPE_5__*) ;
 size_t ctl_max_luns ;
 int memcpy (int ,int ,int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

__attribute__((used)) static void
ctl_isc_mode_sync(struct ctl_softc *softc, union ctl_ha_msg *msg, int len)
{
 struct ctl_lun *lun;
 u_int i;
 uint32_t initidx, targ_lun;

 targ_lun = msg->hdr.nexus.targ_mapped_lun;
 mtx_lock(&softc->ctl_lock);
 if (targ_lun >= ctl_max_luns ||
     (lun = softc->ctl_luns[targ_lun]) == ((void*)0)) {
  mtx_unlock(&softc->ctl_lock);
  return;
 }
 mtx_lock(&lun->lun_lock);
 mtx_unlock(&softc->ctl_lock);
 if (lun->flags & CTL_LUN_DISABLED) {
  mtx_unlock(&lun->lun_lock);
  return;
 }
 for (i = 0; i < CTL_NUM_MODE_PAGES; i++) {
  if ((lun->mode_pages.index[i].page_code & SMPH_PC_MASK) ==
      msg->mode.page_code &&
      lun->mode_pages.index[i].subpage == msg->mode.subpage)
   break;
 }
 if (i == CTL_NUM_MODE_PAGES) {
  mtx_unlock(&lun->lun_lock);
  return;
 }
 memcpy(lun->mode_pages.index[i].page_data, msg->mode.data,
     lun->mode_pages.index[i].page_len);
 initidx = ctl_get_initindex(&msg->hdr.nexus);
 if (initidx != -1)
  ctl_est_ua_all(lun, initidx, CTL_UA_MODE_CHANGE);
 mtx_unlock(&lun->lun_lock);
}
