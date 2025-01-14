
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource_straps {scalar_t__ hdmi_disable; int dc_pinstraps_audio; int audio_stream_number; } ;
struct audio_support {int dp_audio; int hdmi_audio_native; int hdmi_audio_on_dongle; } ;


 int DC_ERR (char*) ;

__attribute__((used)) static void update_num_audio(
 const struct resource_straps *straps,
 unsigned int *num_audio,
 struct audio_support *aud_support)
{
 aud_support->dp_audio = 1;
 aud_support->hdmi_audio_native = 0;
 aud_support->hdmi_audio_on_dongle = 0;

 if (straps->hdmi_disable == 0) {
  if (straps->dc_pinstraps_audio & 0x2) {
   aud_support->hdmi_audio_on_dongle = 1;
   aud_support->hdmi_audio_native = 1;
  }
 }

 switch (straps->audio_stream_number) {
 case 0:
  break;
 case 1:
  *num_audio = 1;
  break;
 default:
  DC_ERR("DC: unexpected audio fuse!\n");
 }
}
