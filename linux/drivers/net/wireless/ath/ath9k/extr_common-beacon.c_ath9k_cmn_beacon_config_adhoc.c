
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ath_hw {int imask; } ;
struct ath_common {int dummy; } ;
struct ath_beacon_config {int beacon_interval; int intval; int nexttbtt; scalar_t__ enable_beacon; scalar_t__ ibss_creator; } ;


 int ATH9K_INT_SWBA ;
 int BEACON ;
 int TU_TO_USEC (int ) ;
 int ath9k_get_next_tbtt (struct ath_hw*,int ,int ) ;
 struct ath_common* ath9k_hw_common (struct ath_hw*) ;
 int ath9k_hw_gettsf64 (struct ath_hw*) ;
 int ath_dbg (struct ath_common*,int ,char*,char*,int ,int ,int ) ;

void ath9k_cmn_beacon_config_adhoc(struct ath_hw *ah,
       struct ath_beacon_config *conf)
{
 struct ath_common *common = ath9k_hw_common(ah);

 conf->intval = TU_TO_USEC(conf->beacon_interval);

 if (conf->ibss_creator)
  conf->nexttbtt = conf->intval;
 else
  conf->nexttbtt = ath9k_get_next_tbtt(ah, ath9k_hw_gettsf64(ah),
            conf->beacon_interval);

 if (conf->enable_beacon)
  ah->imask |= ATH9K_INT_SWBA;
 else
  ah->imask &= ~ATH9K_INT_SWBA;

 ath_dbg(common, BEACON,
  "IBSS (%s) nexttbtt: %u intval: %u conf_intval: %u\n",
  (conf->enable_beacon) ? "Enable" : "Disable",
  conf->nexttbtt, conf->intval, conf->beacon_interval);
}
