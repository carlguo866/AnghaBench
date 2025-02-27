
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_12__ {int flags; int pr_key_count; int lun_devid_len; int * data; int pr_res_type; int pr_res_idx; int pr_generation; } ;
struct TYPE_7__ {int targ_mapped_lun; int targ_lun; } ;
struct TYPE_8__ {TYPE_1__ nexus; int msg_type; } ;
union ctl_ha_msg {int port; TYPE_6__ lun; TYPE_2__ hdr; } ;
struct ctl_softc {scalar_t__ ha_link; } ;
struct TYPE_11__ {TYPE_4__* index; } ;
struct ctl_lun {int pr_key_count; int flags; TYPE_5__ mode_pages; int lun_lock; TYPE_3__* lun_devid; int pr_res_type; int pr_res_idx; int pr_generation; int lun; struct ctl_softc* ctl_softc; } ;
struct ctl_ha_msg_lun_pr_key {int pr_iid; int pr_key; } ;
typedef int pr_key ;
struct TYPE_10__ {int page_code; int subpage; } ;
struct TYPE_9__ {int len; struct ctl_ha_msg_lun_pr_key* data; } ;


 int CTL_HA_CHAN_CTL ;
 scalar_t__ CTL_HA_LINK_ONLINE ;
 int CTL_LUN_PRIMARY_SC ;
 int CTL_MAX_INITIATORS ;
 int CTL_MSG_LUN_SYNC ;
 int CTL_NUM_MODE_PAGES ;
 int M_CTL ;
 int M_WAITOK ;
 int SMPH_PC_MASK ;
 int bzero (TYPE_6__*,int) ;
 int ctl_get_prkey (struct ctl_lun*,int) ;
 int ctl_ha_msg_send (int ,int *,int,int ) ;
 int ctl_isc_announce_mode (struct ctl_lun*,int,int,int ) ;
 int free (union ctl_ha_msg*,int ) ;
 union ctl_ha_msg* malloc (int,int ,int ) ;
 int memcpy (int *,struct ctl_ha_msg_lun_pr_key*,int) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

void
ctl_isc_announce_lun(struct ctl_lun *lun)
{
 struct ctl_softc *softc = lun->ctl_softc;
 union ctl_ha_msg *msg;
 struct ctl_ha_msg_lun_pr_key pr_key;
 int i, k;

 if (softc->ha_link != CTL_HA_LINK_ONLINE)
  return;
 mtx_lock(&lun->lun_lock);
 i = sizeof(msg->lun);
 if (lun->lun_devid)
  i += lun->lun_devid->len;
 i += sizeof(pr_key) * lun->pr_key_count;
alloc:
 mtx_unlock(&lun->lun_lock);
 msg = malloc(i, M_CTL, M_WAITOK);
 mtx_lock(&lun->lun_lock);
 k = sizeof(msg->lun);
 if (lun->lun_devid)
  k += lun->lun_devid->len;
 k += sizeof(pr_key) * lun->pr_key_count;
 if (i < k) {
  free(msg, M_CTL);
  i = k;
  goto alloc;
 }
 bzero(&msg->lun, sizeof(msg->lun));
 msg->hdr.msg_type = CTL_MSG_LUN_SYNC;
 msg->hdr.nexus.targ_lun = lun->lun;
 msg->hdr.nexus.targ_mapped_lun = lun->lun;
 msg->lun.flags = lun->flags;
 msg->lun.pr_generation = lun->pr_generation;
 msg->lun.pr_res_idx = lun->pr_res_idx;
 msg->lun.pr_res_type = lun->pr_res_type;
 msg->lun.pr_key_count = lun->pr_key_count;
 i = 0;
 if (lun->lun_devid) {
  msg->lun.lun_devid_len = lun->lun_devid->len;
  memcpy(&msg->lun.data[i], lun->lun_devid->data,
      msg->lun.lun_devid_len);
  i += msg->lun.lun_devid_len;
 }
 for (k = 0; k < CTL_MAX_INITIATORS; k++) {
  if ((pr_key.pr_key = ctl_get_prkey(lun, k)) == 0)
   continue;
  pr_key.pr_iid = k;
  memcpy(&msg->lun.data[i], &pr_key, sizeof(pr_key));
  i += sizeof(pr_key);
 }
 mtx_unlock(&lun->lun_lock);
 ctl_ha_msg_send(CTL_HA_CHAN_CTL, &msg->port, sizeof(msg->port) + i,
     M_WAITOK);
 free(msg, M_CTL);

 if (lun->flags & CTL_LUN_PRIMARY_SC) {
  for (i = 0; i < CTL_NUM_MODE_PAGES; i++) {
   ctl_isc_announce_mode(lun, -1,
       lun->mode_pages.index[i].page_code & SMPH_PC_MASK,
       lun->mode_pages.index[i].subpage);
  }
 }
}
