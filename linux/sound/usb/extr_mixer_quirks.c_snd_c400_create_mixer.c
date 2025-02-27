
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usb_mixer_interface {int dummy; } ;


 int snd_c400_create_effect_duration_ctl (struct usb_mixer_interface*) ;
 int snd_c400_create_effect_feedback_ctl (struct usb_mixer_interface*) ;
 int snd_c400_create_effect_ret_vol_ctls (struct usb_mixer_interface*) ;
 int snd_c400_create_effect_vol_ctls (struct usb_mixer_interface*) ;
 int snd_c400_create_effect_volume_ctl (struct usb_mixer_interface*) ;
 int snd_c400_create_vol_ctls (struct usb_mixer_interface*) ;
 int snd_ftu_create_effect_switch (struct usb_mixer_interface*,int,int) ;

__attribute__((used)) static int snd_c400_create_mixer(struct usb_mixer_interface *mixer)
{
 int err;

 err = snd_c400_create_vol_ctls(mixer);
 if (err < 0)
  return err;

 err = snd_c400_create_effect_vol_ctls(mixer);
 if (err < 0)
  return err;

 err = snd_c400_create_effect_ret_vol_ctls(mixer);
 if (err < 0)
  return err;

 err = snd_ftu_create_effect_switch(mixer, 2, 0x43);
 if (err < 0)
  return err;

 err = snd_c400_create_effect_volume_ctl(mixer);
 if (err < 0)
  return err;

 err = snd_c400_create_effect_duration_ctl(mixer);
 if (err < 0)
  return err;

 err = snd_c400_create_effect_feedback_ctl(mixer);
 if (err < 0)
  return err;

 return 0;
}
