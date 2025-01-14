
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_info_buffer {int dummy; } ;


 unsigned int AC_SUPPCM_RATES ;
 int ARRAY_SIZE (unsigned int*) ;
 int snd_iprintf (struct snd_info_buffer*,char*,...) ;

__attribute__((used)) static void print_pcm_rates(struct snd_info_buffer *buffer, unsigned int pcm)
{
 static unsigned int rates[] = {
  8000, 11025, 16000, 22050, 32000, 44100, 48000, 88200,
  96000, 176400, 192000, 384000
 };
 int i;

 pcm &= AC_SUPPCM_RATES;
 snd_iprintf(buffer, "    rates [0x%x]:", pcm);
 for (i = 0; i < ARRAY_SIZE(rates); i++)
  if (pcm & (1 << i))
   snd_iprintf(buffer, " %d", rates[i]);
 snd_iprintf(buffer, "\n");
}
