
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_pcm_hw_rule {int var; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct snd_interval {unsigned int min; unsigned int max; int integer; scalar_t__ openmax; scalar_t__ openmin; } ;


 unsigned int SNDRV_PCM_FORMAT_LAST ;
 int SNDRV_PCM_HW_PARAM_FORMAT ;
 unsigned int UINT_MAX ;
 int hw_param_interval (struct snd_pcm_hw_params*,int ) ;
 int hw_param_mask (struct snd_pcm_hw_params*,int ) ;
 int snd_interval_refine (int ,struct snd_interval*) ;
 int snd_mask_test (int ,unsigned int) ;
 int snd_pcm_format_physical_width (unsigned int) ;

__attribute__((used)) static int snd_pcm_hw_rule_sample_bits(struct snd_pcm_hw_params *params,
           struct snd_pcm_hw_rule *rule)
{
 struct snd_interval t;
 unsigned int k;
 t.min = UINT_MAX;
 t.max = 0;
 t.openmin = 0;
 t.openmax = 0;
 for (k = 0; k <= SNDRV_PCM_FORMAT_LAST; ++k) {
  int bits;
  if (! snd_mask_test(hw_param_mask(params, SNDRV_PCM_HW_PARAM_FORMAT), k))
   continue;
  bits = snd_pcm_format_physical_width(k);
  if (bits <= 0)
   continue;
  if (t.min > (unsigned)bits)
   t.min = bits;
  if (t.max < (unsigned)bits)
   t.max = bits;
 }
 t.integer = 1;
 return snd_interval_refine(hw_param_interval(params, rule->var), &t);
}
