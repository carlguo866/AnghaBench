
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct oxygen {int card; } ;


 int generic_mixer_init (struct oxygen*) ;
 int meridian_dig_source_control ;
 int snd_ctl_add (int ,int ) ;
 int snd_ctl_new1 (int *,struct oxygen*) ;

__attribute__((used)) static int meridian_mixer_init(struct oxygen *chip)
{
 int err;

 err = generic_mixer_init(chip);
 if (err < 0)
  return err;
 err = snd_ctl_add(chip->card,
     snd_ctl_new1(&meridian_dig_source_control, chip));
 if (err < 0)
  return err;
 return 0;
}
