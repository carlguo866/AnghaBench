
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
typedef int u64 ;
typedef int u32 ;
struct TYPE_6__ {int len; } ;
struct TYPE_5__ {int tag_off; int stag; } ;
struct i40iw_rdma_read {TYPE_3__ lo_addr; TYPE_2__ rem_addr; } ;
struct i40iw_qp_uk {int swqe_polarity; } ;
struct TYPE_4__ {struct i40iw_rdma_read rdma_read; } ;
struct i40iw_post_sq_info {int local_fence; int read_fence; int signaled; int wr_id; TYPE_1__ op; } ;
typedef enum i40iw_status_code { ____Placeholder_i40iw_status_code } i40iw_status_code ;


 int I40IWQPSQ_FRAG_TO ;
 int I40IWQPSQ_LOCALFENCE ;
 int I40IWQPSQ_OPCODE ;
 int I40IWQPSQ_READFENCE ;
 int I40IWQPSQ_REMSTAG ;
 int I40IWQPSQ_SIGCOMPL ;
 int I40IWQPSQ_VALID ;
 int I40IWQP_OP_RDMA_READ ;
 int I40IWQP_OP_RDMA_READ_LOC_INV ;
 int I40IW_ERR_QP_TOOMANY_WRS_POSTED ;
 int LS_64 (int,int ) ;
 int i40iw_fragcnt_to_wqesize_sq (int,int *) ;
 int* i40iw_qp_get_next_send_wqe (struct i40iw_qp_uk*,int *,int ,int ,int ) ;
 int i40iw_qp_post_wr (struct i40iw_qp_uk*) ;
 int i40iw_set_fragment (int*,int ,TYPE_3__*) ;
 int set_64bit_val (int*,int,int) ;
 int wmb () ;

__attribute__((used)) static enum i40iw_status_code i40iw_rdma_read(struct i40iw_qp_uk *qp,
           struct i40iw_post_sq_info *info,
           bool inv_stag,
           bool post_sq)
{
 u64 *wqe;
 struct i40iw_rdma_read *op_info;
 u64 header;
 u32 wqe_idx;
 enum i40iw_status_code ret_code;
 u8 wqe_size;
 bool local_fence = 0;

 op_info = &info->op.rdma_read;
 ret_code = i40iw_fragcnt_to_wqesize_sq(1, &wqe_size);
 if (ret_code)
  return ret_code;
 wqe = i40iw_qp_get_next_send_wqe(qp, &wqe_idx, wqe_size, op_info->lo_addr.len, info->wr_id);
 if (!wqe)
  return I40IW_ERR_QP_TOOMANY_WRS_POSTED;
 local_fence |= info->local_fence;

 set_64bit_val(wqe, 16, LS_64(op_info->rem_addr.tag_off, I40IWQPSQ_FRAG_TO));
 header = LS_64(op_info->rem_addr.stag, I40IWQPSQ_REMSTAG) |
   LS_64((inv_stag ? I40IWQP_OP_RDMA_READ_LOC_INV : I40IWQP_OP_RDMA_READ), I40IWQPSQ_OPCODE) |
   LS_64(info->read_fence, I40IWQPSQ_READFENCE) |
   LS_64(local_fence, I40IWQPSQ_LOCALFENCE) |
   LS_64(info->signaled, I40IWQPSQ_SIGCOMPL) |
   LS_64(qp->swqe_polarity, I40IWQPSQ_VALID);

 i40iw_set_fragment(wqe, 0, &op_info->lo_addr);

 wmb();

 set_64bit_val(wqe, 24, header);
 if (post_sq)
  i40iw_qp_post_wr(qp);

 return 0;
}
