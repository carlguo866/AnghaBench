
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;
struct da732x_priv {unsigned int sysclk; } ;


 struct da732x_priv* snd_soc_component_get_drvdata (struct snd_soc_component*) ;

__attribute__((used)) static int da732x_set_dai_sysclk(struct snd_soc_dai *dai, int clk_id,
     unsigned int freq, int dir)
{
 struct snd_soc_component *component = dai->component;
 struct da732x_priv *da732x = snd_soc_component_get_drvdata(component);

 da732x->sysclk = freq;

 return 0;
}
