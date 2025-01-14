
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_soc_dai {int dummy; } ;
struct snd_kcontrol {int dummy; } ;
struct TYPE_3__ {int * value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct omap_mcbsp {int dummy; } ;


 int omap_mcbsp_st_is_enabled (struct omap_mcbsp*) ;
 struct snd_soc_dai* snd_kcontrol_chip (struct snd_kcontrol*) ;
 struct omap_mcbsp* snd_soc_dai_get_drvdata (struct snd_soc_dai*) ;

__attribute__((used)) static int omap_mcbsp_st_get_mode(struct snd_kcontrol *kcontrol,
      struct snd_ctl_elem_value *ucontrol)
{
 struct snd_soc_dai *cpu_dai = snd_kcontrol_chip(kcontrol);
 struct omap_mcbsp *mcbsp = snd_soc_dai_get_drvdata(cpu_dai);

 ucontrol->value.integer.value[0] = omap_mcbsp_st_is_enabled(mcbsp);
 return 0;
}
