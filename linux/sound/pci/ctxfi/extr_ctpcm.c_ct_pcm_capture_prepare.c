
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct snd_pcm_substream {struct snd_pcm_runtime* runtime; } ;
struct snd_pcm_runtime {struct ct_atc_pcm* private_data; } ;
struct ct_atc_pcm {int dummy; } ;
struct ct_atc {int (* pcm_capture_prepare ) (struct ct_atc*,struct ct_atc_pcm*) ;TYPE_1__* card; } ;
struct TYPE_2__ {int dev; } ;


 int dev_err (int ,char*) ;
 struct ct_atc* snd_pcm_substream_chip (struct snd_pcm_substream*) ;
 int stub1 (struct ct_atc*,struct ct_atc_pcm*) ;

__attribute__((used)) static int ct_pcm_capture_prepare(struct snd_pcm_substream *substream)
{
 int err;
 struct ct_atc *atc = snd_pcm_substream_chip(substream);
 struct snd_pcm_runtime *runtime = substream->runtime;
 struct ct_atc_pcm *apcm = runtime->private_data;

 err = atc->pcm_capture_prepare(atc, apcm);
 if (err < 0) {
  dev_err(atc->card->dev,
   "Preparing pcm capture failed!!!\n");
  return err;
 }

 return 0;
}
