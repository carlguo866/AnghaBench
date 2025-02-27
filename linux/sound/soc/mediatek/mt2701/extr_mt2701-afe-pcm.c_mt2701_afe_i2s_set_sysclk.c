
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct snd_soc_dai {int dev; int id; } ;
struct mtk_base_afe {struct mt2701_afe_private* platform_priv; } ;
struct mt2701_afe_private {TYPE_1__* i2s_path; TYPE_2__* soc; } ;
struct TYPE_4__ {int has_one_heart_mode; } ;
struct TYPE_3__ {unsigned int mclk_rate; } ;


 int EINVAL ;
 int SND_SOC_CLOCK_IN ;
 int dev_warn (int ,char*) ;
 int mt2701_dai_num_to_i2s (struct mtk_base_afe*,int ) ;
 struct mtk_base_afe* snd_soc_dai_get_drvdata (struct snd_soc_dai*) ;

__attribute__((used)) static int mt2701_afe_i2s_set_sysclk(struct snd_soc_dai *dai, int clk_id,
         unsigned int freq, int dir)
{
 struct mtk_base_afe *afe = snd_soc_dai_get_drvdata(dai);
 struct mt2701_afe_private *afe_priv = afe->platform_priv;
 int i2s_num = mt2701_dai_num_to_i2s(afe, dai->id);
 bool mode = afe_priv->soc->has_one_heart_mode;

 if (i2s_num < 0)
  return i2s_num;


 if (dir == SND_SOC_CLOCK_IN) {
  dev_warn(dai->dev, "The SoCs doesn't support mclk input\n");
  return -EINVAL;
 }

 afe_priv->i2s_path[mode ? 1 : i2s_num].mclk_rate = freq;

 return 0;
}
