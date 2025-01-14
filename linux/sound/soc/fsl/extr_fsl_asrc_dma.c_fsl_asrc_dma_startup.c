
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_pcm_runtime {int dummy; } ;
struct snd_soc_component {struct device* dev; } ;
struct snd_pcm_substream {struct snd_pcm_runtime* runtime; struct snd_soc_pcm_runtime* private_data; } ;
struct snd_pcm_runtime {struct fsl_asrc_pair* private_data; } ;
struct fsl_asrc_pair {struct fsl_asrc* asrc_priv; } ;
struct fsl_asrc {int dummy; } ;
struct device {int dummy; } ;


 int DRV_NAME ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int SNDRV_PCM_HW_PARAM_PERIODS ;
 struct fsl_asrc* dev_get_drvdata (struct device*) ;
 struct fsl_asrc_pair* kzalloc (int,int ) ;
 int snd_imx_hardware ;
 int snd_pcm_hw_constraint_integer (struct snd_pcm_runtime*,int ) ;
 struct snd_soc_component* snd_soc_rtdcom_lookup (struct snd_soc_pcm_runtime*,int ) ;
 int snd_soc_set_runtime_hwparams (struct snd_pcm_substream*,int *) ;

__attribute__((used)) static int fsl_asrc_dma_startup(struct snd_pcm_substream *substream)
{
 struct snd_soc_pcm_runtime *rtd = substream->private_data;
 struct snd_pcm_runtime *runtime = substream->runtime;
 struct snd_soc_component *component = snd_soc_rtdcom_lookup(rtd, DRV_NAME);
 struct device *dev = component->dev;
 struct fsl_asrc *asrc_priv = dev_get_drvdata(dev);
 struct fsl_asrc_pair *pair;

 pair = kzalloc(sizeof(struct fsl_asrc_pair), GFP_KERNEL);
 if (!pair)
  return -ENOMEM;

 pair->asrc_priv = asrc_priv;

 runtime->private_data = pair;

 snd_pcm_hw_constraint_integer(substream->runtime,
          SNDRV_PCM_HW_PARAM_PERIODS);
 snd_soc_set_runtime_hwparams(substream, &snd_imx_hardware);

 return 0;
}
