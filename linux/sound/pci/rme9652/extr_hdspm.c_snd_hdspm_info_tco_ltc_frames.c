
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_kcontrol {int dummy; } ;
struct snd_ctl_elem_info {int dummy; } ;


 int ENUMERATED_CTL_INFO (struct snd_ctl_elem_info*,char const* const*) ;

__attribute__((used)) static int snd_hdspm_info_tco_ltc_frames(struct snd_kcontrol *kcontrol,
           struct snd_ctl_elem_info *uinfo)
{
 static const char *const texts[] = {"No lock", "24 fps", "25 fps", "29.97 fps",
    "30 fps"};
 ENUMERATED_CTL_INFO(uinfo, texts);
 return 0;
}
