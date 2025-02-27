
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct snd_soc_dai {struct snd_soc_codec* codec; } ;
struct snd_soc_codec {int dummy; } ;
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
 int wm8753_read_reg_cache (struct snd_soc_codec*,scalar_t__) ;
 int wm8753_write (struct snd_soc_codec*,scalar_t__,int) ;

__attribute__((used)) static int wm8753_set_dai_pll(struct snd_soc_dai *codec_dai,
  int pll_id, unsigned int freq_in, unsigned int freq_out)
{
 u16 reg, enable;
 int offset;
 struct snd_soc_codec *codec = codec_dai->codec;

 if (pll_id < WM8753_PLL1 || pll_id > WM8753_PLL2)
  return -ENODEV;

 if (pll_id == WM8753_PLL1) {
  offset = 0;
  enable = 0x10;
  reg = wm8753_read_reg_cache(codec, WM8753_CLOCK) & 0xffef;
 } else {
  offset = 4;
  enable = 0x8;
  reg = wm8753_read_reg_cache(codec, WM8753_CLOCK) & 0xfff7;
 }

 if (!freq_in || !freq_out) {

  wm8753_write(codec, WM8753_PLL1CTL1 + offset, 0x0026);
  wm8753_write(codec, WM8753_CLOCK, reg);
  return 0;
 } else {
  u16 value = 0;
  struct _pll_div pll_div;

  pll_factors(&pll_div, freq_out * 8, freq_in);



  value = (pll_div.n << 5) + ((pll_div.k & 0x3c0000) >> 18);
  wm8753_write(codec, WM8753_PLL1CTL2 + offset, value);


  value = (pll_div.k & 0x03fe00) >> 9;
  wm8753_write(codec, WM8753_PLL1CTL3 + offset, value);


  value = pll_div.k & 0x0001ff;
  wm8753_write(codec, WM8753_PLL1CTL4 + offset, value);


  wm8753_write(codec, WM8753_PLL1CTL1 + offset, 0x0027 |
   (pll_div.div2 << 3));
  wm8753_write(codec, WM8753_CLOCK, reg | enable);
 }
 return 0;
}
