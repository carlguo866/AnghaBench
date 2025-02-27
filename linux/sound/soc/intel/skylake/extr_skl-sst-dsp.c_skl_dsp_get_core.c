
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int (* set_state_D0 ) (struct sst_dsp*,unsigned int) ;} ;
struct sst_dsp {int dev; TYPE_1__ fw_ops; struct skl_dev* thread_context; } ;
struct TYPE_4__ {unsigned int count; scalar_t__* state; int * usage_count; } ;
struct skl_dev {TYPE_2__ cores; } ;


 int EINVAL ;
 scalar_t__ SKL_DSP_RESET ;
 int dev_dbg (int ,char*,unsigned int,scalar_t__,int ) ;
 int dev_err (int ,char*,unsigned int) ;
 int stub1 (struct sst_dsp*,unsigned int) ;

int skl_dsp_get_core(struct sst_dsp *ctx, unsigned int core_id)
{
 struct skl_dev *skl = ctx->thread_context;
 int ret = 0;

 if (core_id >= skl->cores.count) {
  dev_err(ctx->dev, "invalid core id: %d\n", core_id);
  return -EINVAL;
 }

 skl->cores.usage_count[core_id]++;

 if (skl->cores.state[core_id] == SKL_DSP_RESET) {
  ret = ctx->fw_ops.set_state_D0(ctx, core_id);
  if (ret < 0) {
   dev_err(ctx->dev, "unable to get core%d\n", core_id);
   goto out;
  }
 }

out:
 dev_dbg(ctx->dev, "core id %d state %d usage_count %d\n",
   core_id, skl->cores.state[core_id],
   skl->cores.usage_count[core_id]);

 return ret;
}
