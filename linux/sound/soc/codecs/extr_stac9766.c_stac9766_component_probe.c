
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_component {int dummy; } ;
struct snd_ac97 {int dummy; } ;
typedef struct snd_ac97 regmap ;


 scalar_t__ IS_ERR (struct snd_ac97*) ;
 int PTR_ERR (struct snd_ac97*) ;
 int STAC9766_VENDOR_ID ;
 int STAC9766_VENDOR_ID_MASK ;
 struct snd_ac97* regmap_init_ac97 (struct snd_ac97*,int *) ;
 int snd_soc_component_init_regmap (struct snd_soc_component*,struct snd_ac97*) ;
 int snd_soc_component_set_drvdata (struct snd_soc_component*,struct snd_ac97*) ;
 int snd_soc_free_ac97_component (struct snd_ac97*) ;
 struct snd_ac97* snd_soc_new_ac97_component (struct snd_soc_component*,int ,int ) ;
 int stac9766_regmap_config ;

__attribute__((used)) static int stac9766_component_probe(struct snd_soc_component *component)
{
 struct snd_ac97 *ac97;
 struct regmap *regmap;
 int ret;

 ac97 = snd_soc_new_ac97_component(component, STAC9766_VENDOR_ID,
   STAC9766_VENDOR_ID_MASK);
 if (IS_ERR(ac97))
  return PTR_ERR(ac97);

 regmap = regmap_init_ac97(ac97, &stac9766_regmap_config);
 if (IS_ERR(regmap)) {
  ret = PTR_ERR(regmap);
  goto err_free_ac97;
 }

 snd_soc_component_init_regmap(component, regmap);
 snd_soc_component_set_drvdata(component, ac97);

 return 0;
err_free_ac97:
 snd_soc_free_ac97_component(ac97);
 return ret;
}
