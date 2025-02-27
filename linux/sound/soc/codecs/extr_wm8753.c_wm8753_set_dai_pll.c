
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;
struct _pll_div {int n; int k; int div2; } ;


 int ENODEV ;
 scalar_t__ WM8753_CLOCK ;
 int WM8753_PLL1 ;
 scalar_t__ WM8753_PLL1CTL1 ;
 scalar_t__ WM8753_PLL1CTL2 ;
 scalar_t__ WM8753_PLL1CTL3 ;
 scalar_t__ WM8753_PLL1CTL4 ;
 int WM8753_PLL2 ;
 int pll_factors (struct _pll_div*,unsigned int,unsigned int) ;
 int snd_soc_component_read32 (struct snd_soc_component*,scalar_t__) ;
 int snd_soc_component_write (struct snd_soc_component*,scalar_t__,int) ;

__attribute__((used)) static int wm8753_set_dai_pll(struct snd_soc_dai *codec_dai, int pll_id,
  int source, unsigned int freq_in, unsigned int freq_out)
{
 u16 reg, enable;
 int offset;
 struct snd_soc_component *component = codec_dai->component;

 if (pll_id < WM8753_PLL1 || pll_id > WM8753_PLL2)
  return -ENODEV;

 if (pll_id == WM8753_PLL1) {
  offset = 0;
  enable = 0x10;
  reg = snd_soc_component_read32(component, WM8753_CLOCK) & 0xffef;
 } else {
  offset = 4;
  enable = 0x8;
  reg = snd_soc_component_read32(component, WM8753_CLOCK) & 0xfff7;
 }

 if (!freq_in || !freq_out) {

  snd_soc_component_write(component, WM8753_PLL1CTL1 + offset, 0x0026);
  snd_soc_component_write(component, WM8753_CLOCK, reg);
  return 0;
 } else {
  u16 value = 0;
  struct _pll_div pll_div;

  pll_factors(&pll_div, freq_out * 8, freq_in);



  value = (pll_div.n << 5) + ((pll_div.k & 0x3c0000) >> 18);
  snd_soc_component_write(component, WM8753_PLL1CTL2 + offset, value);


  value = (pll_div.k & 0x03fe00) >> 9;
  snd_soc_component_write(component, WM8753_PLL1CTL3 + offset, value);


  value = pll_div.k & 0x0001ff;
  snd_soc_component_write(component, WM8753_PLL1CTL4 + offset, value);


  snd_soc_component_write(component, WM8753_PLL1CTL1 + offset, 0x0027 |
   (pll_div.div2 << 3));
  snd_soc_component_write(component, WM8753_CLOCK, reg | enable);
 }
 return 0;
}
