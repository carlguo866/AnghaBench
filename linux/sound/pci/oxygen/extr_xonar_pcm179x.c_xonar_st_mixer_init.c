
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct oxygen {int card; } ;


 unsigned int ARRAY_SIZE (int *) ;
 int add_pcm1796_controls (struct oxygen*) ;
 int snd_ctl_add (int ,int ) ;
 int snd_ctl_new1 (int *,struct oxygen*) ;
 int * st_controls ;

__attribute__((used)) static int xonar_st_mixer_init(struct oxygen *chip)
{
 unsigned int i;
 int err;

 for (i = 0; i < ARRAY_SIZE(st_controls); ++i) {
  err = snd_ctl_add(chip->card,
      snd_ctl_new1(&st_controls[i], chip));
  if (err < 0)
   return err;
 }
 err = add_pcm1796_controls(chip);
 if (err < 0)
  return err;
 return 0;
}
