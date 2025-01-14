
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint8_t ;
typedef size_t uint32_t ;
struct usb_audio_feature_unit {size_t bControlSize; size_t* bmaControls; } ;



__attribute__((used)) static uint32_t
uaudio_mixer_feature_get_bmaControls(const struct usb_audio_feature_unit *d,
    uint8_t i)
{
 uint32_t temp = 0;
 uint32_t offset = (i * d->bControlSize);

 if (d->bControlSize > 0) {
  temp |= d->bmaControls[offset];
  if (d->bControlSize > 1) {
   temp |= d->bmaControls[offset + 1] << 8;
   if (d->bControlSize > 2) {
    temp |= d->bmaControls[offset + 2] << 16;
    if (d->bControlSize > 3) {
     temp |= d->bmaControls[offset + 3] << 24;
    }
   }
  }
 }
 return (temp);
}
