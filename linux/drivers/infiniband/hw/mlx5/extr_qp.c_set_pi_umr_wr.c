
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u32 ;
struct mlx5_wqe_umr_ctrl_seg {int dummy; } ;
struct mlx5_mkey_seg {int dummy; } ;
struct mlx5_klm {int dummy; } ;
struct TYPE_6__ {int integrity_en; } ;
struct mlx5_ib_qp {int sq; TYPE_1__ ibqp; } ;
struct TYPE_7__ {int length; struct ib_sig_attrs* sig_attrs; } ;
struct mlx5_ib_mr {TYPE_4__* sig; TYPE_2__ ibmr; struct mlx5_ib_mr* pi_mr; } ;
struct TYPE_8__ {scalar_t__ sig_type; } ;
struct ib_sig_attrs {TYPE_3__ mem; } ;
struct ib_send_wr {scalar_t__ num_sge; } ;
struct ib_reg_wr {int access; int mr; } ;
struct TYPE_10__ {int pdn; } ;
struct TYPE_9__ {int sig_status_checked; } ;


 int EINVAL ;
 int IB_ACCESS_REMOTE_ATOMIC ;
 scalar_t__ IB_SIG_TYPE_NONE ;
 TYPE_5__* get_pd (struct mlx5_ib_qp*) ;
 int handle_post_send_edge (int *,void**,int,void**) ;
 struct ib_reg_wr* reg_wr (struct ib_send_wr const*) ;
 int set_sig_data_segment (struct ib_send_wr const*,int ,struct ib_sig_attrs*,struct mlx5_ib_qp*,void**,int*,void**) ;
 int set_sig_mkey_segment (void*,int ,int,int,int,int) ;
 int set_sig_umr_segment (void*,int) ;
 struct mlx5_ib_mr* to_mmr (int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int set_pi_umr_wr(const struct ib_send_wr *send_wr,
    struct mlx5_ib_qp *qp, void **seg, int *size,
    void **cur_edge)
{
 const struct ib_reg_wr *wr = reg_wr(send_wr);
 struct mlx5_ib_mr *sig_mr = to_mmr(wr->mr);
 struct mlx5_ib_mr *pi_mr = sig_mr->pi_mr;
 struct ib_sig_attrs *sig_attrs = sig_mr->ibmr.sig_attrs;
 u32 pdn = get_pd(qp)->pdn;
 u32 xlt_size;
 int region_len, ret;

 if (unlikely(send_wr->num_sge != 0) ||
     unlikely(wr->access & IB_ACCESS_REMOTE_ATOMIC) ||
     unlikely(!sig_mr->sig) || unlikely(!qp->ibqp.integrity_en) ||
     unlikely(!sig_mr->sig->sig_status_checked))
  return -EINVAL;


 region_len = pi_mr->ibmr.length;






 if (sig_attrs->mem.sig_type != IB_SIG_TYPE_NONE)
  xlt_size = 0x30;
 else
  xlt_size = sizeof(struct mlx5_klm);

 set_sig_umr_segment(*seg, xlt_size);
 *seg += sizeof(struct mlx5_wqe_umr_ctrl_seg);
 *size += sizeof(struct mlx5_wqe_umr_ctrl_seg) / 16;
 handle_post_send_edge(&qp->sq, seg, *size, cur_edge);

 set_sig_mkey_segment(*seg, wr->mr, wr->access, xlt_size, region_len,
        pdn);
 *seg += sizeof(struct mlx5_mkey_seg);
 *size += sizeof(struct mlx5_mkey_seg) / 16;
 handle_post_send_edge(&qp->sq, seg, *size, cur_edge);

 ret = set_sig_data_segment(send_wr, wr->mr, sig_attrs, qp, seg, size,
       cur_edge);
 if (ret)
  return ret;

 sig_mr->sig->sig_status_checked = 0;
 return 0;
}
