
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef size_t u32 ;
struct ath_hw {int dummy; } ;


 size_t AR5416_NUM_PDADC_VALUES ;
 int AR_PHY_TX_PWRCTRL6_0 ;
 int AR_PHY_TX_PWRCTRL6_1 ;
 int AR_PHY_TX_PWRCTRL7 ;
 int AR_PHY_TX_PWRCTRL_ERR_EST_MODE ;
 int AR_PHY_TX_PWRCTRL_INIT_TX_GAIN ;
 int REG_RMW_FIELD (struct ath_hw*,int ,int ,size_t) ;

__attribute__((used)) static void ath9k_olc_get_pdadcs(struct ath_hw *ah,
    u32 initTxGain,
    int txPower,
    u8 *pPDADCValues)
{
 u32 i;
 u32 offset;

 REG_RMW_FIELD(ah, AR_PHY_TX_PWRCTRL6_0,
   AR_PHY_TX_PWRCTRL_ERR_EST_MODE, 3);
 REG_RMW_FIELD(ah, AR_PHY_TX_PWRCTRL6_1,
   AR_PHY_TX_PWRCTRL_ERR_EST_MODE, 3);

 REG_RMW_FIELD(ah, AR_PHY_TX_PWRCTRL7,
   AR_PHY_TX_PWRCTRL_INIT_TX_GAIN, initTxGain);

 offset = txPower;
 for (i = 0; i < AR5416_NUM_PDADC_VALUES; i++)
  if (i < offset)
   pPDADCValues[i] = 0x0;
  else
   pPDADCValues[i] = 0xFF;
}
