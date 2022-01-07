
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_usb_audio {int setup; int dev; } ;


 int MAUDIO_SET ;
 unsigned int MAUDIO_SET_16B_48K_NOTDI ;
 unsigned int MAUDIO_SET_24B_48K_DI ;
 unsigned int MAUDIO_SET_24B_48K_NOTDI ;
 int MAUDIO_SET_96K ;
 int MAUDIO_SET_COMPATIBLE ;
 unsigned int MAUDIO_SET_MASK ;
 int usb_audio_dbg (struct snd_usb_audio*,char*,int,int,unsigned int) ;
 int usb_set_interface (int ,int,int ) ;

__attribute__((used)) static int quattro_skip_setting_quirk(struct snd_usb_audio *chip,
          int iface, int altno)
{



 usb_set_interface(chip->dev, iface, 0);
 if (chip->setup & MAUDIO_SET) {
  if (chip->setup & MAUDIO_SET_COMPATIBLE) {
   if (iface != 1 && iface != 2)
    return 1;
  } else {
   unsigned int mask;
   if (iface == 1 || iface == 2)
    return 1;
   if ((chip->setup & MAUDIO_SET_96K) && altno != 1)
    return 1;
   mask = chip->setup & MAUDIO_SET_MASK;
   if (mask == MAUDIO_SET_24B_48K_DI && altno != 2)
    return 1;
   if (mask == MAUDIO_SET_24B_48K_NOTDI && altno != 3)
    return 1;
   if (mask == MAUDIO_SET_16B_48K_NOTDI && altno != 4)
    return 1;
  }
 }
 usb_audio_dbg(chip,
      "using altsetting %d for interface %d config %d\n",
      altno, iface, chip->setup);
 return 0;
}
