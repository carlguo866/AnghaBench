
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sst_dsp {int dev; } ;


 int EIO ;
 int SKL_ADSPCS_CSTALL_MASK (unsigned int) ;
 int SKL_ADSP_REG_ADSPCS ;
 int dev_dbg (int ,char*,unsigned int) ;
 int dev_err (int ,char*,unsigned int) ;
 int is_skl_dsp_core_enable (struct sst_dsp*,unsigned int) ;
 int skl_dsp_core_unset_reset_state (struct sst_dsp*,unsigned int) ;
 int skl_dsp_reset_core (struct sst_dsp*,unsigned int) ;
 int sst_dsp_shim_update_bits_unlocked (struct sst_dsp*,int ,int ,int ) ;

int skl_dsp_start_core(struct sst_dsp *ctx, unsigned int core_mask)
{
 int ret;


 ret = skl_dsp_core_unset_reset_state(ctx, core_mask);
 if (ret < 0)
  return ret;


 dev_dbg(ctx->dev, "unstall/run core: core_mask = %x\n", core_mask);
 sst_dsp_shim_update_bits_unlocked(ctx, SKL_ADSP_REG_ADSPCS,
   SKL_ADSPCS_CSTALL_MASK(core_mask), 0);

 if (!is_skl_dsp_core_enable(ctx, core_mask)) {
  skl_dsp_reset_core(ctx, core_mask);
  dev_err(ctx->dev, "DSP start core failed: core_mask %x\n",
       core_mask);
  ret = -EIO;
 }

 return ret;
}
