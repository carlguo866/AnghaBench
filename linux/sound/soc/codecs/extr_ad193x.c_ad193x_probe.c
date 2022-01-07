
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct regmap {int dummy; } ;
struct device {int dummy; } ;
struct ad193x_priv {int type; struct regmap* regmap; } ;
typedef enum ad193x_type { ____Placeholder_ad193x_type } ad193x_type ;


 int ENOMEM ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct regmap*) ;
 int PTR_ERR (struct regmap*) ;
 int ad193x_dai ;
 scalar_t__ ad193x_has_adc (struct ad193x_priv*) ;
 int ad193x_no_adc_dai ;
 int dev_set_drvdata (struct device*,struct ad193x_priv*) ;
 struct ad193x_priv* devm_kzalloc (struct device*,int,int ) ;
 int devm_snd_soc_register_component (struct device*,int *,int *,int) ;
 int soc_component_dev_ad193x ;

int ad193x_probe(struct device *dev, struct regmap *regmap,
   enum ad193x_type type)
{
 struct ad193x_priv *ad193x;

 if (IS_ERR(regmap))
  return PTR_ERR(regmap);

 ad193x = devm_kzalloc(dev, sizeof(*ad193x), GFP_KERNEL);
 if (ad193x == ((void*)0))
  return -ENOMEM;

 ad193x->regmap = regmap;
 ad193x->type = type;

 dev_set_drvdata(dev, ad193x);

 if (ad193x_has_adc(ad193x))
  return devm_snd_soc_register_component(dev, &soc_component_dev_ad193x,
             &ad193x_dai, 1);
 return devm_snd_soc_register_component(dev, &soc_component_dev_ad193x,
  &ad193x_no_adc_dai, 1);
}
