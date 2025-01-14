
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vpe_q_data {unsigned int nplanes; unsigned int* sizeimage; } ;
struct vpe_ctx {int dev; } ;
struct vb2_queue {int type; } ;
struct device {int dummy; } ;


 size_t VPE_CHROMA ;
 size_t VPE_LUMA ;
 struct vpe_q_data* get_q_data (struct vpe_ctx*,int ) ;
 struct vpe_ctx* vb2_get_drv_priv (struct vb2_queue*) ;
 int vpe_dbg (int ,char*,unsigned int,...) ;

__attribute__((used)) static int vpe_queue_setup(struct vb2_queue *vq,
      unsigned int *nbuffers, unsigned int *nplanes,
      unsigned int sizes[], struct device *alloc_devs[])
{
 int i;
 struct vpe_ctx *ctx = vb2_get_drv_priv(vq);
 struct vpe_q_data *q_data;

 q_data = get_q_data(ctx, vq->type);

 *nplanes = q_data->nplanes;

 for (i = 0; i < *nplanes; i++)
  sizes[i] = q_data->sizeimage[i];

 vpe_dbg(ctx->dev, "get %d buffer(s) of size %d", *nbuffers,
  sizes[VPE_LUMA]);
 if (q_data->nplanes == 2)
  vpe_dbg(ctx->dev, " and %d\n", sizes[VPE_CHROMA]);

 return 0;
}
