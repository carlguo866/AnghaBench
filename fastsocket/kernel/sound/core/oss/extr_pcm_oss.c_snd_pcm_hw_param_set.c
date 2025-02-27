
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_substream {int dummy; } ;
struct snd_pcm_hw_params {scalar_t__ rmask; } ;
typedef int snd_pcm_hw_param_t ;


 int _snd_pcm_hw_param_set (struct snd_pcm_hw_params*,int ,unsigned int,int) ;
 int snd_pcm_hw_param_value (struct snd_pcm_hw_params*,int ,int *) ;
 int snd_pcm_hw_refine (struct snd_pcm_substream*,struct snd_pcm_hw_params*) ;

__attribute__((used)) static int snd_pcm_hw_param_set(struct snd_pcm_substream *pcm,
    struct snd_pcm_hw_params *params,
    snd_pcm_hw_param_t var, unsigned int val,
    int dir)
{
 int changed = _snd_pcm_hw_param_set(params, var, val, dir);
 if (changed < 0)
  return changed;
 if (params->rmask) {
  int err = snd_pcm_hw_refine(pcm, params);
  if (err < 0)
   return err;
 }
 return snd_pcm_hw_param_value(params, var, ((void*)0));
}
