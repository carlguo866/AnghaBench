
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;


 int WM8350_DAC_MUTE ;
 unsigned int WM8350_DAC_MUTE_ENA ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,unsigned int,unsigned int) ;

__attribute__((used)) static int wm8350_mute(struct snd_soc_dai *dai, int mute)
{
 struct snd_soc_component *component = dai->component;
 unsigned int val;

 if (mute)
  val = WM8350_DAC_MUTE_ENA;
 else
  val = 0;

 snd_soc_component_update_bits(component, WM8350_DAC_MUTE, WM8350_DAC_MUTE_ENA, val);

 return 0;
}
