
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_hw {int iniModesTxGain; } ;


 scalar_t__ AR_SREV_9340 (struct ath_hw*) ;
 scalar_t__ AR_SREV_9462_20 (struct ath_hw*) ;
 scalar_t__ AR_SREV_9462_21 (struct ath_hw*) ;
 scalar_t__ AR_SREV_9580 (struct ath_hw*) ;
 int INIT_INI_ARRAY (int *,int ) ;
 int ar9300Modes_mixed_ob_db_tx_gain_table_2p2 ;
 int ar9340Modes_mixed_ob_db_tx_gain_table_1p0 ;
 int ar9462_2p0_modes_mix_ob_db_tx_gain ;
 int ar9462_2p1_modes_mix_ob_db_tx_gain ;
 int ar9580_1p0_mixed_ob_db_tx_gain_table ;

__attribute__((used)) static void ar9003_tx_gain_table_mode4(struct ath_hw *ah)
{
 if (AR_SREV_9340(ah))
  INIT_INI_ARRAY(&ah->iniModesTxGain,
   ar9340Modes_mixed_ob_db_tx_gain_table_1p0);
 else if (AR_SREV_9580(ah))
  INIT_INI_ARRAY(&ah->iniModesTxGain,
   ar9580_1p0_mixed_ob_db_tx_gain_table);
 else if (AR_SREV_9462_21(ah))
  INIT_INI_ARRAY(&ah->iniModesTxGain,
         ar9462_2p1_modes_mix_ob_db_tx_gain);
 else if (AR_SREV_9462_20(ah))
  INIT_INI_ARRAY(&ah->iniModesTxGain,
         ar9462_2p0_modes_mix_ob_db_tx_gain);
 else
  INIT_INI_ARRAY(&ah->iniModesTxGain,
   ar9300Modes_mixed_ob_db_tx_gain_table_2p2);
}
