
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u8 ;
struct snd_soc_dai {int dev; struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;
struct da7210_priv {scalar_t__ master; } ;
struct TYPE_3__ {unsigned int fref; scalar_t__ mode; unsigned int fout; size_t div1; size_t div2; size_t div3; } ;


 size_t ARRAY_SIZE (TYPE_1__*) ;
 int DA7210_PLL ;
 int DA7210_PLL_DIV1 ;
 int DA7210_PLL_DIV2 ;
 int DA7210_PLL_DIV3 ;
 size_t DA7210_PLL_DIV_L_MASK ;
 size_t DA7210_PLL_EN ;
 size_t DA7210_SC_MST_EN ;
 int DA7210_STARTUP1 ;
 int EINVAL ;
 TYPE_1__* da7210_pll_div ;
 int dev_err (int ,char*,unsigned int) ;
 struct da7210_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,size_t,size_t) ;
 int snd_soc_component_write (struct snd_soc_component*,int ,size_t) ;

__attribute__((used)) static int da7210_set_dai_pll(struct snd_soc_dai *codec_dai, int pll_id,
         int source, unsigned int fref, unsigned int fout)
{
 struct snd_soc_component *component = codec_dai->component;
 struct da7210_priv *da7210 = snd_soc_component_get_drvdata(component);

 u8 pll_div1, pll_div2, pll_div3, cnt;


 if (!da7210->master)
  fout = 2822400;


 for (cnt = 0; cnt < ARRAY_SIZE(da7210_pll_div); cnt++) {

  if ((fref == da7210_pll_div[cnt].fref) &&
      (da7210->master == da7210_pll_div[cnt].mode) &&
      (fout == da7210_pll_div[cnt].fout)) {

   pll_div1 = da7210_pll_div[cnt].div1;
   pll_div2 = da7210_pll_div[cnt].div2;
   pll_div3 = da7210_pll_div[cnt].div3;
   break;
  }
 }
 if (cnt >= ARRAY_SIZE(da7210_pll_div))
  goto err;


 snd_soc_component_update_bits(component, DA7210_STARTUP1, DA7210_SC_MST_EN, 0);

 snd_soc_component_write(component, DA7210_PLL_DIV1, pll_div1);
 snd_soc_component_write(component, DA7210_PLL_DIV2, pll_div2);
 snd_soc_component_update_bits(component, DA7210_PLL_DIV3,
       DA7210_PLL_DIV_L_MASK, pll_div3);


 snd_soc_component_update_bits(component, DA7210_PLL, DA7210_PLL_EN, DA7210_PLL_EN);


 snd_soc_component_update_bits(component, DA7210_STARTUP1, DA7210_SC_MST_EN,
          DA7210_SC_MST_EN);
 return 0;
err:
 dev_err(codec_dai->dev, "Unsupported PLL input frequency %d\n", fref);
 return -EINVAL;
}
