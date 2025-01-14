
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ib_send_wr {int send_flags; int num_sge; scalar_t__ opcode; TYPE_3__* sg_list; } ;
struct ib_qp {int device; } ;
struct hns_roce_v2_wqe_data_seg {int dummy; } ;
struct hns_roce_v2_rc_send_wqe {int byte_16; int byte_20; int byte_4; int msg_len; } ;
struct TYPE_5__ {int sge_cnt; } ;
struct hns_roce_qp {TYPE_2__ sge; } ;
struct TYPE_4__ {scalar_t__ max_sq_inline; } ;
struct hns_roce_dev {int dev; TYPE_1__ caps; } ;
struct TYPE_6__ {int length; scalar_t__ addr; } ;


 int EINVAL ;
 int HNS_ROCE_V2_UC_RC_SGE_NUM_IN_WQE ;
 int IB_SEND_INLINE ;
 scalar_t__ IB_WR_RDMA_READ ;
 int V2_RC_SEND_WQE_BYTE_16_SGE_NUM_M ;
 int V2_RC_SEND_WQE_BYTE_16_SGE_NUM_S ;
 int V2_RC_SEND_WQE_BYTE_20_MSG_START_SGE_IDX_M ;
 int V2_RC_SEND_WQE_BYTE_20_MSG_START_SGE_IDX_S ;
 int V2_RC_SEND_WQE_BYTE_4_INLINE_S ;
 int dev_err (int ,char*,...) ;
 scalar_t__ le32_to_cpu (int ) ;
 scalar_t__ likely (int ) ;
 int memcpy (void*,void*,int ) ;
 int roce_set_bit (int ,int ,int) ;
 int roce_set_field (int ,int ,int ,unsigned int) ;
 int set_data_seg_v2 (struct hns_roce_v2_wqe_data_seg*,TYPE_3__*) ;
 int set_extend_sge (struct hns_roce_qp*,struct ib_send_wr const*,unsigned int*) ;
 struct hns_roce_dev* to_hr_dev (int ) ;
 struct hns_roce_qp* to_hr_qp (struct ib_qp*) ;

__attribute__((used)) static int set_rwqe_data_seg(struct ib_qp *ibqp, const struct ib_send_wr *wr,
        struct hns_roce_v2_rc_send_wqe *rc_sq_wqe,
        void *wqe, unsigned int *sge_ind,
        const struct ib_send_wr **bad_wr)
{
 struct hns_roce_dev *hr_dev = to_hr_dev(ibqp->device);
 struct hns_roce_v2_wqe_data_seg *dseg = wqe;
 struct hns_roce_qp *qp = to_hr_qp(ibqp);
 int i;

 if (wr->send_flags & IB_SEND_INLINE && wr->num_sge) {
  if (le32_to_cpu(rc_sq_wqe->msg_len) >
      hr_dev->caps.max_sq_inline) {
   *bad_wr = wr;
   dev_err(hr_dev->dev, "inline len(1-%d)=%d, illegal",
    rc_sq_wqe->msg_len, hr_dev->caps.max_sq_inline);
   return -EINVAL;
  }

  if (wr->opcode == IB_WR_RDMA_READ) {
   *bad_wr = wr;
   dev_err(hr_dev->dev, "Not support inline data!\n");
   return -EINVAL;
  }

  for (i = 0; i < wr->num_sge; i++) {
   memcpy(wqe, ((void *)wr->sg_list[i].addr),
          wr->sg_list[i].length);
   wqe += wr->sg_list[i].length;
  }

  roce_set_bit(rc_sq_wqe->byte_4, V2_RC_SEND_WQE_BYTE_4_INLINE_S,
        1);
 } else {
  if (wr->num_sge <= HNS_ROCE_V2_UC_RC_SGE_NUM_IN_WQE) {
   for (i = 0; i < wr->num_sge; i++) {
    if (likely(wr->sg_list[i].length)) {
     set_data_seg_v2(dseg, wr->sg_list + i);
     dseg++;
    }
   }
  } else {
   roce_set_field(rc_sq_wqe->byte_20,
         V2_RC_SEND_WQE_BYTE_20_MSG_START_SGE_IDX_M,
         V2_RC_SEND_WQE_BYTE_20_MSG_START_SGE_IDX_S,
         (*sge_ind) & (qp->sge.sge_cnt - 1));

   for (i = 0; i < HNS_ROCE_V2_UC_RC_SGE_NUM_IN_WQE; i++) {
    if (likely(wr->sg_list[i].length)) {
     set_data_seg_v2(dseg, wr->sg_list + i);
     dseg++;
    }
   }

   set_extend_sge(qp, wr, sge_ind);
  }

  roce_set_field(rc_sq_wqe->byte_16,
          V2_RC_SEND_WQE_BYTE_16_SGE_NUM_M,
          V2_RC_SEND_WQE_BYTE_16_SGE_NUM_S, wr->num_sge);
 }

 return 0;
}
