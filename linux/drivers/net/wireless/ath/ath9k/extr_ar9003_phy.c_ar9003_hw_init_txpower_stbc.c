
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_hw {int * tx_power; int * tx_power_stbc; } ;


 int AR9300_HT_DS_RATES ;
 int AR9300_HT_SS_RATES ;
 int AR9300_HT_TS_RATES ;
 int memcpy (int *,int *,int ) ;

__attribute__((used)) static void ar9003_hw_init_txpower_stbc(struct ath_hw *ah, int ss_offset,
     int ds_offset, int ts_offset)
{
 memcpy(&ah->tx_power_stbc[ss_offset], &ah->tx_power[ss_offset],
        AR9300_HT_SS_RATES);
 memcpy(&ah->tx_power_stbc[ds_offset], &ah->tx_power[ds_offset],
        AR9300_HT_DS_RATES);
 memcpy(&ah->tx_power_stbc[ts_offset], &ah->tx_power[ts_offset],
        AR9300_HT_TS_RATES);
}
