
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;


 int EINVAL ;
 int WM8350_ADCLRC_RATE_MASK ;


 int WM8350_ADC_CLKDIV_MASK ;
 int WM8350_ADC_DIVIDER ;
 int WM8350_ADC_LR_RATE ;

 int WM8350_BCLK_DIV_MASK ;
 int WM8350_CLOCK_CONTROL_1 ;
 int WM8350_DACLRC_RATE_MASK ;


 int WM8350_DAC_CLKDIV_MASK ;
 int WM8350_DAC_CLOCK_CONTROL ;
 int WM8350_DAC_LR_RATE ;
 int WM8350_MCLK_DIV_MASK ;

 int WM8350_OPCLK_DIV_MASK ;

 int snd_soc_component_read32 (struct snd_soc_component*,int ) ;
 int snd_soc_component_write (struct snd_soc_component*,int ,int) ;

__attribute__((used)) static int wm8350_set_clkdiv(struct snd_soc_dai *codec_dai, int div_id, int div)
{
 struct snd_soc_component *component = codec_dai->component;
 u16 val;

 switch (div_id) {
 case 133:
  val = snd_soc_component_read32(component, WM8350_ADC_DIVIDER) &
      ~WM8350_ADC_CLKDIV_MASK;
  snd_soc_component_write(component, WM8350_ADC_DIVIDER, val | div);
  break;
 case 130:
  val = snd_soc_component_read32(component, WM8350_DAC_CLOCK_CONTROL) &
      ~WM8350_DAC_CLKDIV_MASK;
  snd_soc_component_write(component, WM8350_DAC_CLOCK_CONTROL, val | div);
  break;
 case 132:
  val = snd_soc_component_read32(component, WM8350_CLOCK_CONTROL_1) &
      ~WM8350_BCLK_DIV_MASK;
  snd_soc_component_write(component, WM8350_CLOCK_CONTROL_1, val | div);
  break;
 case 129:
  val = snd_soc_component_read32(component, WM8350_CLOCK_CONTROL_1) &
      ~WM8350_OPCLK_DIV_MASK;
  snd_soc_component_write(component, WM8350_CLOCK_CONTROL_1, val | div);
  break;
 case 128:
  val = snd_soc_component_read32(component, WM8350_CLOCK_CONTROL_1) &
      ~WM8350_MCLK_DIV_MASK;
  snd_soc_component_write(component, WM8350_CLOCK_CONTROL_1, val | div);
  break;
 case 131:
  val = snd_soc_component_read32(component, WM8350_DAC_LR_RATE) &
      ~WM8350_DACLRC_RATE_MASK;
  snd_soc_component_write(component, WM8350_DAC_LR_RATE, val | div);
  break;
 case 134:
  val = snd_soc_component_read32(component, WM8350_ADC_LR_RATE) &
      ~WM8350_ADCLRC_RATE_MASK;
  snd_soc_component_write(component, WM8350_ADC_LR_RATE, val | div);
  break;
 default:
  return -EINVAL;
 }

 return 0;
}
