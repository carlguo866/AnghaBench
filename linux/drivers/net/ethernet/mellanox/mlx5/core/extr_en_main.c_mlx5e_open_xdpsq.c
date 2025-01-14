
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct xdp_umem {int dummy; } ;
struct TYPE_9__ {struct mlx5e_xdp_wqe_info* wqe_info; } ;
struct TYPE_7__ {int cqn; } ;
struct TYPE_8__ {TYPE_2__ mcq; } ;
struct mlx5e_xdpsq {scalar_t__ min_inline_mode; int sqn; int state; int mkey_be; int wq; TYPE_4__ db; int wq_ctrl; TYPE_3__ cq; } ;
struct mlx5e_xdp_wqe_info {int num_wqebbs; int num_pkts; } ;
struct TYPE_10__ {int sz; } ;
struct mlx5_wqe_eth_seg {TYPE_5__ inline_hdr; } ;
struct mlx5_wqe_ctrl_seg {int qpn_ds; } ;
struct mlx5e_tx_wqe {struct mlx5_wqe_eth_seg eth; struct mlx5_wqe_ctrl_seg ctrl; } ;
struct mlx5e_sq_param {int is_mpw; } ;
struct mlx5e_params {int dummy; } ;
struct mlx5e_create_sq_param {int tis_lst_sz; scalar_t__ min_inline_mode; int * wq_ctrl; int cqn; int tisn; } ;
struct mlx5e_channel {size_t lag_port; int mdev; TYPE_1__* priv; } ;
struct mlx5_wqe_data_seg {int lkey; } ;
struct TYPE_6__ {int ** tisn; } ;


 int MLX5E_SQ_STATE_ENABLED ;
 unsigned int MLX5E_XDP_MIN_INLINE ;
 unsigned int MLX5E_XDP_TX_DS_COUNT ;
 scalar_t__ MLX5_INLINE_MODE_NONE ;
 int clear_bit (int ,int *) ;
 int cpu_to_be16 (unsigned int) ;
 int cpu_to_be32 (int) ;
 int mlx5_wq_cyc_get_size (int *) ;
 struct mlx5e_tx_wqe* mlx5_wq_cyc_get_wqe (int *,int) ;
 int mlx5e_alloc_xdpsq (struct mlx5e_channel*,struct mlx5e_params*,struct xdp_umem*,struct mlx5e_sq_param*,struct mlx5e_xdpsq*,int) ;
 int mlx5e_create_sq_rdy (int ,struct mlx5e_sq_param*,struct mlx5e_create_sq_param*,int*) ;
 int mlx5e_free_xdpsq (struct mlx5e_xdpsq*) ;
 int mlx5e_set_xmit_fp (struct mlx5e_xdpsq*,int ) ;
 int set_bit (int ,int *) ;

int mlx5e_open_xdpsq(struct mlx5e_channel *c, struct mlx5e_params *params,
       struct mlx5e_sq_param *param, struct xdp_umem *umem,
       struct mlx5e_xdpsq *sq, bool is_redirect)
{
 struct mlx5e_create_sq_param csp = {};
 int err;

 err = mlx5e_alloc_xdpsq(c, params, umem, param, sq, is_redirect);
 if (err)
  return err;

 csp.tis_lst_sz = 1;
 csp.tisn = c->priv->tisn[c->lag_port][0];
 csp.cqn = sq->cq.mcq.cqn;
 csp.wq_ctrl = &sq->wq_ctrl;
 csp.min_inline_mode = sq->min_inline_mode;
 set_bit(MLX5E_SQ_STATE_ENABLED, &sq->state);
 err = mlx5e_create_sq_rdy(c->mdev, param, &csp, &sq->sqn);
 if (err)
  goto err_free_xdpsq;

 mlx5e_set_xmit_fp(sq, param->is_mpw);

 if (!param->is_mpw) {
  unsigned int ds_cnt = MLX5E_XDP_TX_DS_COUNT;
  unsigned int inline_hdr_sz = 0;
  int i;

  if (sq->min_inline_mode != MLX5_INLINE_MODE_NONE) {
   inline_hdr_sz = MLX5E_XDP_MIN_INLINE;
   ds_cnt++;
  }


  for (i = 0; i < mlx5_wq_cyc_get_size(&sq->wq); i++) {
   struct mlx5e_xdp_wqe_info *wi = &sq->db.wqe_info[i];
   struct mlx5e_tx_wqe *wqe = mlx5_wq_cyc_get_wqe(&sq->wq, i);
   struct mlx5_wqe_ctrl_seg *cseg = &wqe->ctrl;
   struct mlx5_wqe_eth_seg *eseg = &wqe->eth;
   struct mlx5_wqe_data_seg *dseg;

   cseg->qpn_ds = cpu_to_be32((sq->sqn << 8) | ds_cnt);
   eseg->inline_hdr.sz = cpu_to_be16(inline_hdr_sz);

   dseg = (struct mlx5_wqe_data_seg *)cseg + (ds_cnt - 1);
   dseg->lkey = sq->mkey_be;

   wi->num_wqebbs = 1;
   wi->num_pkts = 1;
  }
 }

 return 0;

err_free_xdpsq:
 clear_bit(MLX5E_SQ_STATE_ENABLED, &sq->state);
 mlx5e_free_xdpsq(sq);

 return err;
}
