
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dapm_widget {int dapm; } ;
struct snd_soc_component {int dummy; } ;
struct rt286_priv {scalar_t__ clk_id; } ;


 scalar_t__ RT286_SCLK_S_MCLK ;
 struct rt286_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 struct snd_soc_component* snd_soc_dapm_to_component (int ) ;

__attribute__((used)) static int is_mclk_mode(struct snd_soc_dapm_widget *source,
    struct snd_soc_dapm_widget *sink)
{
 struct snd_soc_component *component = snd_soc_dapm_to_component(source->dapm);
 struct rt286_priv *rt286 = snd_soc_component_get_drvdata(component);

 if (rt286->clk_id == RT286_SCLK_S_MCLK)
  return 1;
 else
  return 0;
}
