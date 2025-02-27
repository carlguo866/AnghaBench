
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_mixer_oss_slot {scalar_t__ stereo; scalar_t__ put_volume; } ;
struct snd_mixer_oss_file {struct snd_mixer_oss* mixer; } ;
struct snd_mixer_oss {struct snd_mixer_oss_slot* slots; } ;


 int EIO ;

__attribute__((used)) static int snd_mixer_oss_stereodevs(struct snd_mixer_oss_file *fmixer)
{
 struct snd_mixer_oss *mixer = fmixer->mixer;
 struct snd_mixer_oss_slot *pslot;
 int result = 0, chn;

 if (mixer == ((void*)0))
  return -EIO;
 for (chn = 0; chn < 31; chn++) {
  pslot = &mixer->slots[chn];
  if (pslot->put_volume && pslot->stereo)
   result |= 1 << chn;
 }
 return result;
}
