
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct soc_bytes_ext {int max; } ;
struct snd_soc_component {int dev; } ;
struct snd_kcontrol {scalar_t__ private_value; } ;
struct TYPE_3__ {int data; } ;
struct TYPE_4__ {TYPE_1__ bytes; } ;
struct snd_ctl_elem_value {TYPE_2__ value; } ;
struct nau8810 {int regmap; } ;


 int ENOMEM ;
 int GFP_DMA ;
 int GFP_KERNEL ;
 int NAU8810_REG_EQ1 ;
 int be16_to_cpu (int ) ;
 int dev_err (int ,char*,int,int) ;
 int kfree (void*) ;
 void* kmemdup (int ,int,int) ;
 int regmap_write (int ,int,int ) ;
 struct nau8810* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 struct snd_soc_component* snd_soc_kcontrol_component (struct snd_kcontrol*) ;

__attribute__((used)) static int nau8810_eq_put(struct snd_kcontrol *kcontrol,
 struct snd_ctl_elem_value *ucontrol)
{
 struct snd_soc_component *component = snd_soc_kcontrol_component(kcontrol);
 struct nau8810 *nau8810 = snd_soc_component_get_drvdata(component);
 struct soc_bytes_ext *params = (void *)kcontrol->private_value;
 void *data;
 u16 *val, value;
 int i, reg, ret;

 data = kmemdup(ucontrol->value.bytes.data,
  params->max, GFP_KERNEL | GFP_DMA);
 if (!data)
  return -ENOMEM;

 val = (u16 *)data;
 reg = NAU8810_REG_EQ1;
 for (i = 0; i < params->max / sizeof(u16); i++) {



  value = be16_to_cpu(*(val + i));
  ret = regmap_write(nau8810->regmap, reg + i, value);
  if (ret) {
   dev_err(component->dev, "EQ configuration fail, register: %x ret: %d\n",
    reg + i, ret);
   kfree(data);
   return ret;
  }
 }
 kfree(data);

 return 0;
}
