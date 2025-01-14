
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u32 ;
struct r8192_priv {scalar_t__ card_8192_version; int* AntennaTxPwDiff; int CrystalCap; scalar_t__ bCckHighPower; } ;
struct net_device {int dummy; } ;
typedef enum rf90_radio_path_e { ____Placeholder_rf90_radio_path_e } rf90_radio_path_e ;
typedef enum hw90_block_e { ____Placeholder_hw90_block_e } hw90_block_e ;


 int BASEBAND_CONFIG_AGC_TAB ;
 int BASEBAND_CONFIG_PHY_REG ;
 int BB_GLOBAL_RESET ;
 scalar_t__ BB_GLOBAL_RESET_BIT ;
 int COMP_ERR ;
 int COMP_PHY ;
 int CPU_GEN ;
 int CPU_GEN_BB_RST ;
 scalar_t__ HW90_BLOCK_PHY0 ;
 scalar_t__ HW90_BLOCK_PHY1 ;
 int RT_TRACE (int,char*,scalar_t__) ;
 scalar_t__ VERSION_819XU_A ;
 int bCCKEn ;
 int bOFDMEn ;
 int bXBTxAGC ;
 int bXCTxAGC ;
 int bXtalCap ;
 struct r8192_priv* ieee80211_priv (struct net_device*) ;
 int mdelay (int) ;
 int rFPGA0_AnalogParameter1 ;
 int rFPGA0_RFMOD ;
 int rFPGA0_TxGainStage ;
 int rFPGA0_XA_HSSIParameter2 ;
 int read_nic_byte (struct net_device*,int ,scalar_t__*) ;
 int read_nic_dword (struct net_device*,int ,int*) ;
 scalar_t__ rtl8192_QueryBBReg (struct net_device*,int ,int) ;
 int rtl8192_phyConfigBB (struct net_device*,int ) ;
 scalar_t__ rtl8192_phy_checkBBAndRF (struct net_device*,int,int) ;
 int rtl8192_setBBreg (struct net_device*,int ,int,int) ;
 int write_nic_byte (struct net_device*,int ,scalar_t__) ;
 int write_nic_byte_E (struct net_device*,int,int) ;
 int write_nic_dword (struct net_device*,int ,int) ;

__attribute__((used)) static void rtl8192_BB_Config_ParaFile(struct net_device *dev)
{
 struct r8192_priv *priv = ieee80211_priv(dev);
 u8 reg_u8 = 0, eCheckItem = 0, status = 0;
 u32 reg_u32 = 0;






 read_nic_byte(dev, BB_GLOBAL_RESET, &reg_u8);
 write_nic_byte(dev, BB_GLOBAL_RESET, (reg_u8|BB_GLOBAL_RESET_BIT));
 mdelay(50);

 read_nic_dword(dev, CPU_GEN, &reg_u32);
 write_nic_dword(dev, CPU_GEN, (reg_u32&(~CPU_GEN_BB_RST)));



 for (eCheckItem = (enum hw90_block_e)HW90_BLOCK_PHY0;
      eCheckItem <= HW90_BLOCK_PHY1; eCheckItem++) {

  status = rtl8192_phy_checkBBAndRF(dev, (enum hw90_block_e)eCheckItem,
        (enum rf90_radio_path_e)0);
  if (status != 0) {
   RT_TRACE((COMP_ERR | COMP_PHY),
     "phy_rf8256_config(): Check PHY%d Fail!!\n",
     eCheckItem-1);
   return;
  }
 }

 rtl8192_setBBreg(dev, rFPGA0_RFMOD, bCCKEn|bOFDMEn, 0x0);


 rtl8192_phyConfigBB(dev, BASEBAND_CONFIG_PHY_REG);


 read_nic_dword(dev, CPU_GEN, &reg_u32);
 write_nic_dword(dev, CPU_GEN, (reg_u32|CPU_GEN_BB_RST));



 rtl8192_phyConfigBB(dev, BASEBAND_CONFIG_AGC_TAB);


 write_nic_byte_E(dev, 0x5e, 0x00);
 if (priv->card_8192_version == VERSION_819XU_A) {

  reg_u32 = priv->AntennaTxPwDiff[1]<<4 |
      priv->AntennaTxPwDiff[0];
  rtl8192_setBBreg(dev, rFPGA0_TxGainStage, (bXBTxAGC|bXCTxAGC),
     reg_u32);


  reg_u32 = priv->CrystalCap & 0xf;
  rtl8192_setBBreg(dev, rFPGA0_AnalogParameter1, bXtalCap,
     reg_u32);
 }




 priv->bCckHighPower = (u8)rtl8192_QueryBBReg(dev,
           rFPGA0_XA_HSSIParameter2,
           0x200);
}
