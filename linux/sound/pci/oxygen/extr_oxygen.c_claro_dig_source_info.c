
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_kcontrol {int dummy; } ;
struct snd_ctl_elem_info {int dummy; } ;


 int snd_ctl_enum_info (struct snd_ctl_elem_info*,int,int,char const* const*) ;

__attribute__((used)) static int claro_dig_source_info(struct snd_kcontrol *ctl,
     struct snd_ctl_elem_info *info)
{
 static const char *const names[2] = { "Optical", "Coaxial" };

 return snd_ctl_enum_info(info, 1, 2, names);
}
