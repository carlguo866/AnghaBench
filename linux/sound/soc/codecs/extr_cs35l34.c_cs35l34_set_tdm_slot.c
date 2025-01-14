
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_soc_dai {struct snd_soc_component* component; } ;
struct snd_soc_component {int dummy; } ;
struct cs35l34_private {int tdm_mode; } ;


 unsigned int CS35L34_TDM_RX_CTL_1_AUDIN ;
 unsigned int CS35L34_TDM_TX_CTL_1_VMON ;
 unsigned int CS35L34_TDM_TX_CTL_2_IMON ;
 unsigned int CS35L34_TDM_TX_CTL_3_VPMON ;
 unsigned int CS35L34_TDM_TX_CTL_4_VBSTMON ;
 int CS35L34_TDM_TX_SLOT_EN_4 ;
 int CS35L34_X_LOC ;
 int CS35L34_X_STATE ;
 int EINVAL ;
 int ffs (unsigned int) ;
 struct cs35l34_private* snd_soc_component_get_drvdata (struct snd_soc_component*) ;
 int snd_soc_component_update_bits (struct snd_soc_component*,unsigned int,int,int) ;

__attribute__((used)) static int cs35l34_set_tdm_slot(struct snd_soc_dai *dai, unsigned int tx_mask,
    unsigned int rx_mask, int slots, int slot_width)
{
 struct snd_soc_component *component = dai->component;
 struct cs35l34_private *priv = snd_soc_component_get_drvdata(component);
 unsigned int reg, bit_pos;
 int slot, slot_num;

 if (slot_width != 8)
  return -EINVAL;

 priv->tdm_mode = 1;

 slot = ffs(rx_mask) - 1;
 if (slot >= 0)
  snd_soc_component_update_bits(component, CS35L34_TDM_RX_CTL_1_AUDIN,
     CS35L34_X_LOC, slot);




 slot = ffs(tx_mask) - 1;
 slot_num = 0;


 snd_soc_component_update_bits(component, CS35L34_TDM_TX_CTL_3_VPMON,
    CS35L34_X_STATE | CS35L34_X_LOC,
    CS35L34_X_STATE | CS35L34_X_LOC);
 snd_soc_component_update_bits(component, CS35L34_TDM_TX_CTL_4_VBSTMON,
    CS35L34_X_STATE | CS35L34_X_LOC,
    CS35L34_X_STATE | CS35L34_X_LOC);


 while (slot >= 0) {

  if (slot_num == 0)
   snd_soc_component_update_bits(component, CS35L34_TDM_TX_CTL_1_VMON,
     CS35L34_X_STATE | CS35L34_X_LOC, slot);


  if (slot_num == 4) {
   snd_soc_component_update_bits(component, CS35L34_TDM_TX_CTL_2_IMON,
     CS35L34_X_STATE | CS35L34_X_LOC, slot);
  }

  if (slot_num == 3) {
   snd_soc_component_update_bits(component, CS35L34_TDM_TX_CTL_3_VPMON,
     CS35L34_X_STATE | CS35L34_X_LOC, slot);
  }

  if (slot_num == 7) {
   snd_soc_component_update_bits(component,
    CS35L34_TDM_TX_CTL_4_VBSTMON,
    CS35L34_X_STATE | CS35L34_X_LOC, slot);
  }


  reg = CS35L34_TDM_TX_SLOT_EN_4 - (slot/8);
  bit_pos = slot - ((slot / 8) * (8));
  snd_soc_component_update_bits(component, reg,
   1 << bit_pos, 1 << bit_pos);

  tx_mask &= ~(1 << slot);
  slot = ffs(tx_mask) - 1;
  slot_num++;
 }

 return 0;
}
