
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct net_device {int name; } ;
struct cxgb4_lld_info {int iscsi_pgsz_order; scalar_t__* iscsi_ppm; TYPE_3__* vr; int iscsi_llimit; int pdev; struct net_device** ports; int iscsi_tagmask; } ;
struct cxgbit_device {int flags; struct cxgb4_lld_info lldi; } ;
struct cxgbi_tag_format {int* pgsz_order; } ;
struct TYPE_8__ {scalar_t__ pgsz_idx_dflt; } ;
struct cxgbi_ppm {int ppmax; TYPE_4__ tformat; } ;
struct TYPE_6__ {int size; int start; } ;
struct TYPE_5__ {unsigned int size; int start; } ;
struct TYPE_7__ {TYPE_2__ ppod_edram; TYPE_1__ iscsi; } ;


 int CDEV_DDP_ENABLE ;
 scalar_t__ DDP_PGIDX_MAX ;
 int EACCES ;
 unsigned int PPOD_SIZE_SHIFT ;
 int cxgbi_ppm_init (scalar_t__*,struct net_device*,int ,struct cxgb4_lld_info*,struct cxgbi_tag_format*,unsigned int,int ,int ,int,int ,int ) ;
 int cxgbi_tagmask_check (int ,struct cxgbi_tag_format*) ;
 int memset (struct cxgbi_tag_format*,int ,int) ;
 int pr_warn (char*,int ) ;
 int set_bit (int ,int *) ;

int cxgbit_ddp_init(struct cxgbit_device *cdev)
{
 struct cxgb4_lld_info *lldi = &cdev->lldi;
 struct net_device *ndev = cdev->lldi.ports[0];
 struct cxgbi_tag_format tformat;
 unsigned int ppmax;
 int ret, i;

 if (!lldi->vr->iscsi.size) {
  pr_warn("%s, iscsi NOT enabled, check config!\n", ndev->name);
  return -EACCES;
 }

 ppmax = lldi->vr->iscsi.size >> PPOD_SIZE_SHIFT;

 memset(&tformat, 0, sizeof(struct cxgbi_tag_format));
 for (i = 0; i < 4; i++)
  tformat.pgsz_order[i] = (lldi->iscsi_pgsz_order >> (i << 3))
      & 0xF;
 cxgbi_tagmask_check(lldi->iscsi_tagmask, &tformat);

 ret = cxgbi_ppm_init(lldi->iscsi_ppm, cdev->lldi.ports[0],
        cdev->lldi.pdev, &cdev->lldi, &tformat,
        lldi->vr->iscsi.size, lldi->iscsi_llimit,
        lldi->vr->iscsi.start, 2,
        lldi->vr->ppod_edram.start,
        lldi->vr->ppod_edram.size);
 if (ret >= 0) {
  struct cxgbi_ppm *ppm = (struct cxgbi_ppm *)(*lldi->iscsi_ppm);

  if ((ppm->tformat.pgsz_idx_dflt < DDP_PGIDX_MAX) &&
      (ppm->ppmax >= 1024))
   set_bit(CDEV_DDP_ENABLE, &cdev->flags);
  ret = 0;
 }

 return ret;
}
