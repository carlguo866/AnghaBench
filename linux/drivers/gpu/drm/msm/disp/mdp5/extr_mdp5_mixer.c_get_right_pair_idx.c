
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mdp5_kms {int num_hwmixers; struct mdp5_hw_mixer** hwmixers; } ;
struct mdp5_hw_mixer {int lm; int idx; } ;


 int EINVAL ;
 int* lm_right_pair ;

__attribute__((used)) static int get_right_pair_idx(struct mdp5_kms *mdp5_kms, int lm)
{
 int i;
 int pair_lm;

 pair_lm = lm_right_pair[lm];
 if (pair_lm < 0)
  return -EINVAL;

 for (i = 0; i < mdp5_kms->num_hwmixers; i++) {
  struct mdp5_hw_mixer *mixer = mdp5_kms->hwmixers[i];

  if (mixer->lm == pair_lm)
   return mixer->idx;
 }

 return -1;
}
