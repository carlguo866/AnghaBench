
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_kcontrol {int dummy; } ;
struct snd_ctl_elem_info {int dummy; } ;


 int snd_ctl_enum_info (struct snd_ctl_elem_info*,int,int,char const* const*) ;

__attribute__((used)) static int scarlett2_level_enum_ctl_info(struct snd_kcontrol *kctl,
      struct snd_ctl_elem_info *uinfo)
{
 static const char *const values[2] = {
  "Line", "Inst"
 };

 return snd_ctl_enum_info(uinfo, 1, 2, values);
}
