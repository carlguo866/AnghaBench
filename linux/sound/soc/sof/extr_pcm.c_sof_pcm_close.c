
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int pcm_id; } ;
struct snd_sof_pcm {TYPE_1__ pcm; } ;
struct snd_sof_dev {int dev; } ;
struct snd_soc_pcm_runtime {TYPE_2__* dai_link; } ;
struct snd_soc_component {int dummy; } ;
struct snd_pcm_substream {int stream; struct snd_soc_pcm_runtime* private_data; } ;
struct TYPE_4__ {scalar_t__ no_pcm; } ;


 int DRV_NAME ;
 int EINVAL ;
 int dev_dbg (int ,char*,int ,int ) ;
 int dev_err (int ,char*,int) ;
 struct snd_sof_dev* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 struct snd_soc_component* snd_soc_rtdcom_lookup (struct snd_soc_pcm_runtime*,int ) ;
 struct snd_sof_pcm* snd_sof_find_spcm_dai (struct snd_sof_dev*,struct snd_soc_pcm_runtime*) ;
 int snd_sof_pcm_platform_close (struct snd_sof_dev*,struct snd_pcm_substream*) ;

__attribute__((used)) static int sof_pcm_close(struct snd_pcm_substream *substream)
{
 struct snd_soc_pcm_runtime *rtd = substream->private_data;
 struct snd_soc_component *component =
  snd_soc_rtdcom_lookup(rtd, DRV_NAME);
 struct snd_sof_dev *sdev = snd_soc_component_get_drvdata(component);
 struct snd_sof_pcm *spcm;
 int err;


 if (rtd->dai_link->no_pcm)
  return 0;

 spcm = snd_sof_find_spcm_dai(sdev, rtd);
 if (!spcm)
  return -EINVAL;

 dev_dbg(sdev->dev, "pcm: close stream %d dir %d\n", spcm->pcm.pcm_id,
  substream->stream);

 err = snd_sof_pcm_platform_close(sdev, substream);
 if (err < 0) {
  dev_err(sdev->dev, "error: pcm close failed %d\n",
   err);




 }

 return 0;
}
