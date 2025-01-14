
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_soc_component {int dummy; } ;
struct snd_kcontrol {int dummy; } ;
struct TYPE_3__ {scalar_t__* value; } ;
struct TYPE_4__ {TYPE_1__ integer; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;


 unsigned int WM8904_ADC_128_OSR_TST_MODE ;
 unsigned int WM8904_ADC_BIASX1P5 ;
 int WM8904_ADC_TEST_0 ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,unsigned int,unsigned int) ;
 struct snd_soc_component* snd_soc_kcontrol_component (struct snd_kcontrol*) ;
 int snd_soc_put_volsw (struct snd_kcontrol*,struct snd_ctl_elem_value*) ;

__attribute__((used)) static int wm8904_adc_osr_put(struct snd_kcontrol *kcontrol,
         struct snd_ctl_elem_value *ucontrol)
{
 struct snd_soc_component *component = snd_soc_kcontrol_component(kcontrol);
 unsigned int val;
 int ret;

 ret = snd_soc_put_volsw(kcontrol, ucontrol);
 if (ret < 0)
  return ret;

 if (ucontrol->value.integer.value[0])
  val = 0;
 else
  val = WM8904_ADC_128_OSR_TST_MODE | WM8904_ADC_BIASX1P5;

 snd_soc_component_update_bits(component, WM8904_ADC_TEST_0,
       WM8904_ADC_128_OSR_TST_MODE | WM8904_ADC_BIASX1P5,
       val);

 return ret;
}
