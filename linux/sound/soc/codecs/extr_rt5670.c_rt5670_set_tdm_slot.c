
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;


 int EINVAL ;
 int RT5670_TDM_CTRL_1 ;
 int snd_soc_component_update_bits (struct snd_soc_component*,int ,int,unsigned int) ;

__attribute__((used)) static int rt5670_set_tdm_slot(struct snd_soc_dai *dai, unsigned int tx_mask,
   unsigned int rx_mask, int slots, int slot_width)
{
 struct snd_soc_component *component = dai->component;
 unsigned int val = 0;

 if (rx_mask || tx_mask)
  val |= (1 << 14);

 switch (slots) {
 case 4:
  val |= (1 << 12);
  break;
 case 6:
  val |= (2 << 12);
  break;
 case 8:
  val |= (3 << 12);
  break;
 case 2:
  break;
 default:
  return -EINVAL;
 }

 switch (slot_width) {
 case 20:
  val |= (1 << 10);
  break;
 case 24:
  val |= (2 << 10);
  break;
 case 32:
  val |= (3 << 10);
  break;
 case 16:
  break;
 default:
  return -EINVAL;
 }

 snd_soc_component_update_bits(component, RT5670_TDM_CTRL_1, 0x7c00, val);

 return 0;
}
