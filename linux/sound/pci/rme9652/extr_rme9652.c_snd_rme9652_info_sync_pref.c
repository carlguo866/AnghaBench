
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_rme9652 {scalar_t__ ss_channels; } ;
struct snd_kcontrol {int dummy; } ;
struct snd_ctl_elem_info {int dummy; } ;


 scalar_t__ RME9652_NCHANNELS ;
 int snd_ctl_enum_info (struct snd_ctl_elem_info*,int,int,char const* const*) ;
 struct snd_rme9652* snd_kcontrol_chip (struct snd_kcontrol*) ;

__attribute__((used)) static int snd_rme9652_info_sync_pref(struct snd_kcontrol *kcontrol, struct snd_ctl_elem_info *uinfo)
{
 static const char * const texts[4] = {
  "IEC958 In", "ADAT1 In", "ADAT2 In", "ADAT3 In"
 };
 struct snd_rme9652 *rme9652 = snd_kcontrol_chip(kcontrol);

 return snd_ctl_enum_info(uinfo, 1,
     rme9652->ss_channels == RME9652_NCHANNELS ? 4 : 3,
     texts);
}
