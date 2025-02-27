
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mlx4_ib_dev {int dummy; } ;
struct mlx4_ib_demux_pv_ctx {scalar_t__ state; int * cq; int * pd; TYPE_1__* qp; scalar_t__ has_smi; int wq; } ;
struct TYPE_2__ {int * qp; } ;


 scalar_t__ DEMUX_PV_STATE_DOWN ;
 scalar_t__ DEMUX_PV_STATE_DOWNING ;
 int IB_QPT_GSI ;
 int IB_QPT_SMI ;
 int flush_workqueue (int ) ;
 int ib_dealloc_pd (int *) ;
 int ib_destroy_cq (int *) ;
 int ib_destroy_qp (int *) ;
 int mlx4_ib_free_pv_qp_bufs (struct mlx4_ib_demux_pv_ctx*,int ,int) ;

__attribute__((used)) static void destroy_pv_resources(struct mlx4_ib_dev *dev, int slave, int port,
     struct mlx4_ib_demux_pv_ctx *ctx, int flush)
{
 if (!ctx)
  return;
 if (ctx->state > DEMUX_PV_STATE_DOWN) {
  ctx->state = DEMUX_PV_STATE_DOWNING;
  if (flush)
   flush_workqueue(ctx->wq);
  if (ctx->has_smi) {
   ib_destroy_qp(ctx->qp[0].qp);
   ctx->qp[0].qp = ((void*)0);
   mlx4_ib_free_pv_qp_bufs(ctx, IB_QPT_SMI, 1);
  }
  ib_destroy_qp(ctx->qp[1].qp);
  ctx->qp[1].qp = ((void*)0);
  mlx4_ib_free_pv_qp_bufs(ctx, IB_QPT_GSI, 1);
  ib_dealloc_pd(ctx->pd);
  ctx->pd = ((void*)0);
  ib_destroy_cq(ctx->cq);
  ctx->cq = ((void*)0);
  ctx->state = DEMUX_PV_STATE_DOWN;
 }
}
