
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {int dummy; } ;
struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {struct fsl_asrc_pair* private_data; } ;
struct fsl_asrc_pair {int dummy; } ;


 int EINVAL ;






 int fsl_asrc_start_pair (struct fsl_asrc_pair*) ;
 int fsl_asrc_stop_pair (struct fsl_asrc_pair*) ;

__attribute__((used)) static int fsl_asrc_dai_trigger(struct snd_pcm_substream *substream, int cmd,
    struct snd_soc_dai *dai)
{
 struct snd_pcm_runtime *runtime = substream->runtime;
 struct fsl_asrc_pair *pair = runtime->private_data;

 switch (cmd) {
 case 130:
 case 131:
 case 132:
  fsl_asrc_start_pair(pair);
  break;
 case 129:
 case 128:
 case 133:
  fsl_asrc_stop_pair(pair);
  break;
 default:
  return -EINVAL;
 }

 return 0;
}
