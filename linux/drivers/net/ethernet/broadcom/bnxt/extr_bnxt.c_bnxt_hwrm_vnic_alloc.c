
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t u16 ;
struct hwrm_vnic_alloc_output {int vnic_id; } ;
struct hwrm_vnic_alloc_input {int flags; int member_0; } ;
struct bnxt_vnic_info {scalar_t__* fw_grp_ids; int fw_vnic_id; scalar_t__* fw_rss_cos_lb_ctx; } ;
struct bnxt {int flags; int hwrm_cmd_lock; TYPE_3__* grp_info; int dev; TYPE_2__* rx_ring; struct bnxt_vnic_info* vnic_info; struct hwrm_vnic_alloc_output* hwrm_cmd_resp_addr; } ;
typedef int req ;
struct TYPE_6__ {scalar_t__ fw_grp_id; } ;
struct TYPE_5__ {TYPE_1__* bnapi; } ;
struct TYPE_4__ {unsigned int index; } ;


 int BNXT_FLAG_CHIP_P5 ;
 unsigned int BNXT_MAX_CTX_PER_VNIC ;
 int HWRM_CMD_TIMEOUT ;
 int HWRM_VNIC_ALLOC ;
 scalar_t__ INVALID_HW_RING_ID ;
 int VNIC_ALLOC_REQ_FLAGS_DEFAULT ;
 int _hwrm_send_message (struct bnxt*,struct hwrm_vnic_alloc_input*,int,int ) ;
 int bnxt_hwrm_cmd_hdr_init (struct bnxt*,struct hwrm_vnic_alloc_input*,int ,int,int) ;
 int cpu_to_le32 (int ) ;
 int le32_to_cpu (int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int netdev_err (int ,char*,unsigned int,unsigned int) ;

__attribute__((used)) static int bnxt_hwrm_vnic_alloc(struct bnxt *bp, u16 vnic_id,
    unsigned int start_rx_ring_idx,
    unsigned int nr_rings)
{
 int rc = 0;
 unsigned int i, j, grp_idx, end_idx = start_rx_ring_idx + nr_rings;
 struct hwrm_vnic_alloc_input req = {0};
 struct hwrm_vnic_alloc_output *resp = bp->hwrm_cmd_resp_addr;
 struct bnxt_vnic_info *vnic = &bp->vnic_info[vnic_id];

 if (bp->flags & BNXT_FLAG_CHIP_P5)
  goto vnic_no_ring_grps;


 for (i = start_rx_ring_idx, j = 0; i < end_idx; i++, j++) {
  grp_idx = bp->rx_ring[i].bnapi->index;
  if (bp->grp_info[grp_idx].fw_grp_id == INVALID_HW_RING_ID) {
   netdev_err(bp->dev, "Not enough ring groups avail:%x req:%x\n",
       j, nr_rings);
   break;
  }
  vnic->fw_grp_ids[j] = bp->grp_info[grp_idx].fw_grp_id;
 }

vnic_no_ring_grps:
 for (i = 0; i < BNXT_MAX_CTX_PER_VNIC; i++)
  vnic->fw_rss_cos_lb_ctx[i] = INVALID_HW_RING_ID;
 if (vnic_id == 0)
  req.flags = cpu_to_le32(VNIC_ALLOC_REQ_FLAGS_DEFAULT);

 bnxt_hwrm_cmd_hdr_init(bp, &req, HWRM_VNIC_ALLOC, -1, -1);

 mutex_lock(&bp->hwrm_cmd_lock);
 rc = _hwrm_send_message(bp, &req, sizeof(req), HWRM_CMD_TIMEOUT);
 if (!rc)
  vnic->fw_vnic_id = le32_to_cpu(resp->vnic_id);
 mutex_unlock(&bp->hwrm_cmd_lock);
 return rc;
}
