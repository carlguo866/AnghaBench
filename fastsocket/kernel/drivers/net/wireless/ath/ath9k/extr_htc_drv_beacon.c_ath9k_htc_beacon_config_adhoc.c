
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u8 ;
typedef int u64 ;
typedef scalar_t__ u32 ;
struct htc_beacon_config {scalar_t__ beacon_interval; } ;
struct ath_common {int dummy; } ;
struct TYPE_7__ {scalar_t__ bmiss_cnt; } ;
struct ath9k_htc_priv {TYPE_2__ cur_beacon_conf; TYPE_3__* ah; int op_flags; } ;
typedef enum ath9k_int { ____Placeholder_ath9k_int } ath9k_int ;
typedef int __be32 ;
struct TYPE_6__ {scalar_t__ sw_beacon_response_time; } ;
struct TYPE_8__ {TYPE_1__ config; } ;


 int ATH9K_INT_SWBA ;
 int CONFIG ;
 scalar_t__ DEFAULT_SWBA_RESPONSE ;
 scalar_t__ FUDGE ;
 scalar_t__ MIN_SWBA_RESPONSE ;
 int OP_ENABLE_BEACON ;
 scalar_t__ TSF_TO_TU (int,int) ;
 int TU_TO_USEC (scalar_t__) ;
 int WMI_CMD (int ) ;
 int WMI_CMD_BUF (int ,int *) ;
 int WMI_DISABLE_INTR_CMDID ;
 int WMI_ENABLE_INTR_CMDID ;
 int ath9k_hw_beaconinit (TYPE_3__*,int ,int ) ;
 struct ath_common* ath9k_hw_common (TYPE_3__*) ;
 int ath9k_hw_gettsf64 (TYPE_3__*) ;
 int ath_dbg (struct ath_common*,int ,char*,scalar_t__,scalar_t__,scalar_t__,int) ;
 int cpu_to_be32 (int) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static void ath9k_htc_beacon_config_adhoc(struct ath9k_htc_priv *priv,
       struct htc_beacon_config *bss_conf)
{
 struct ath_common *common = ath9k_hw_common(priv->ah);
 enum ath9k_int imask = 0;
 u32 nexttbtt, intval, tsftu;
 __be32 htc_imask = 0;
 int ret __attribute__ ((unused));
 u8 cmd_rsp;
 u64 tsf;

 intval = bss_conf->beacon_interval;
 nexttbtt = intval;




 tsf = ath9k_hw_gettsf64(priv->ah);
 tsftu = TSF_TO_TU(tsf >> 32, tsf) + FUDGE;
 do {
  nexttbtt += intval;
 } while (nexttbtt < tsftu);




 if (intval > DEFAULT_SWBA_RESPONSE)
  priv->ah->config.sw_beacon_response_time = DEFAULT_SWBA_RESPONSE;
 else
  priv->ah->config.sw_beacon_response_time = MIN_SWBA_RESPONSE;

 if (test_bit(OP_ENABLE_BEACON, &priv->op_flags))
  imask |= ATH9K_INT_SWBA;

 ath_dbg(common, CONFIG,
  "IBSS Beacon config, intval: %d, nexttbtt: %u, resp_time: %d, imask: 0x%x\n",
  bss_conf->beacon_interval, nexttbtt,
  priv->ah->config.sw_beacon_response_time, imask);

 WMI_CMD(WMI_DISABLE_INTR_CMDID);
 ath9k_hw_beaconinit(priv->ah, TU_TO_USEC(nexttbtt), TU_TO_USEC(intval));
 priv->cur_beacon_conf.bmiss_cnt = 0;
 htc_imask = cpu_to_be32(imask);
 WMI_CMD_BUF(WMI_ENABLE_INTR_CMDID, &htc_imask);
}
