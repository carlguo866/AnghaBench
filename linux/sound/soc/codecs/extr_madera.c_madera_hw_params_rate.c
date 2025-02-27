
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_soc_dai {int id; TYPE_1__* driver; struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;
struct snd_pcm_substream {int dummy; } ;
struct snd_pcm_hw_params {int dummy; } ;
struct madera_priv {int rate_lock; TYPE_2__* madera; struct madera_dai_priv* dai; } ;
struct madera_dai_priv {int clk; } ;
struct TYPE_4__ {int regmap; } ;
struct TYPE_3__ {int base; } ;


 int ARRAY_SIZE (scalar_t__*) ;
 int EBUSY ;
 int EINVAL ;
 unsigned int MADERA_AIF1_RATE_MASK ;
 int MADERA_AIF1_RATE_SHIFT ;
 int MADERA_AIF_RATE_CTRL ;
 unsigned int MADERA_ASYNC_SAMPLE_RATE_1 ;
 unsigned int MADERA_ASYNC_SAMPLE_RATE_2 ;





 unsigned int MADERA_SAMPLE_RATE_1 ;
 unsigned int MADERA_SAMPLE_RATE_1_MASK ;
 unsigned int MADERA_SAMPLE_RATE_2 ;
 unsigned int MADERA_SAMPLE_RATE_3 ;
 int madera_aif_err (struct snd_soc_dai*,char*,int) ;
 int madera_aif_warn (struct snd_soc_dai*,char*) ;
 int madera_can_change_grp_rate (struct madera_priv*,int) ;
 int madera_spin_sysclk (struct madera_priv*) ;
 scalar_t__* madera_sr_vals ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int params_rate (struct snd_pcm_hw_params*) ;
 int regmap_read (int ,int,unsigned int*) ;
 struct madera_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int,unsigned int,unsigned int) ;

__attribute__((used)) static int madera_hw_params_rate(struct snd_pcm_substream *substream,
     struct snd_pcm_hw_params *params,
     struct snd_soc_dai *dai)
{
 struct snd_soc_component *component = dai->component;
 struct madera_priv *priv = snd_soc_component_get_drvdata(component);
 struct madera_dai_priv *dai_priv = &priv->dai[dai->id - 1];
 int base = dai->driver->base;
 int i, sr_val;
 unsigned int reg, cur, tar;
 int ret;

 for (i = 0; i < ARRAY_SIZE(madera_sr_vals); i++)
  if (madera_sr_vals[i] == params_rate(params))
   break;

 if (i == ARRAY_SIZE(madera_sr_vals)) {
  madera_aif_err(dai, "Unsupported sample rate %dHz\n",
          params_rate(params));
  return -EINVAL;
 }
 sr_val = i;

 switch (dai_priv->clk) {
 case 130:
  reg = MADERA_SAMPLE_RATE_1;
  tar = 0 << MADERA_AIF1_RATE_SHIFT;
  break;
 case 129:
  reg = MADERA_SAMPLE_RATE_2;
  tar = 1 << MADERA_AIF1_RATE_SHIFT;
  break;
 case 128:
  reg = MADERA_SAMPLE_RATE_3;
  tar = 2 << MADERA_AIF1_RATE_SHIFT;
  break;
 case 132:
  reg = MADERA_ASYNC_SAMPLE_RATE_1,
  tar = 8 << MADERA_AIF1_RATE_SHIFT;
  break;
 case 131:
  reg = MADERA_ASYNC_SAMPLE_RATE_2,
  tar = 9 << MADERA_AIF1_RATE_SHIFT;
  break;
 default:
  madera_aif_err(dai, "Invalid clock %d\n", dai_priv->clk);
  return -EINVAL;
 }

 snd_soc_component_update_bits(component, reg, MADERA_SAMPLE_RATE_1_MASK,
          sr_val);

 if (!base)
  return 0;

 ret = regmap_read(priv->madera->regmap,
     base + MADERA_AIF_RATE_CTRL, &cur);
 if (ret != 0) {
  madera_aif_err(dai, "Failed to check rate: %d\n", ret);
  return ret;
 }

 if ((cur & MADERA_AIF1_RATE_MASK) == (tar & MADERA_AIF1_RATE_MASK))
  return 0;

 mutex_lock(&priv->rate_lock);

 if (!madera_can_change_grp_rate(priv, base + MADERA_AIF_RATE_CTRL)) {
  madera_aif_warn(dai, "Cannot change rate while active\n");
  ret = -EBUSY;
  goto out;
 }


 madera_spin_sysclk(priv);
 snd_soc_component_update_bits(component, base + MADERA_AIF_RATE_CTRL,
          MADERA_AIF1_RATE_MASK, tar);
 madera_spin_sysclk(priv);

out:
 mutex_unlock(&priv->rate_lock);

 return ret;
}
