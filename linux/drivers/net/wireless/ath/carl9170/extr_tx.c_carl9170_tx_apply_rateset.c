
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct sk_buff {scalar_t__ data; } ;
struct ieee80211_tx_rate {scalar_t__ idx; int flags; int count; } ;
struct TYPE_4__ {struct ieee80211_tx_rate* rates; } ;
struct ieee80211_tx_info {int flags; TYPE_1__ control; } ;
struct ar9170 {int dummy; } ;
struct TYPE_6__ {int* ri; void** rr; } ;
struct TYPE_5__ {int mac_control; void* phy_control; } ;
struct _carl9170_tx_superframe {TYPE_3__ s; TYPE_2__ f; } ;
typedef void* __le32 ;
typedef int __le16 ;


 int AR9170_TX_MAC_AGGR ;
 int AR9170_TX_MAC_PROT_CTS ;
 int AR9170_TX_MAC_PROT_RTS ;
 int CARL9170_TX_MAX_RATES ;
 int CARL9170_TX_SUPER_RI_AMPDU ;
 int CARL9170_TX_SUPER_RI_ERP_PROT_S ;
 int CARL9170_TX_SUPER_RI_TRIES ;
 struct ieee80211_tx_info* IEEE80211_SKB_CB (struct sk_buff*) ;
 int IEEE80211_TX_CTL_AMPDU ;
 int IEEE80211_TX_CTL_NO_ACK ;
 int IEEE80211_TX_CTL_RATE_CTRL_PROBE ;
 int IEEE80211_TX_RC_MCS ;
 int SET_VAL (int ,int,int ) ;
 scalar_t__ carl9170_tx_cts_check (struct ar9170*,struct ieee80211_tx_rate*) ;
 void* carl9170_tx_physet (struct ar9170*,struct ieee80211_tx_info*,struct ieee80211_tx_rate*) ;
 scalar_t__ carl9170_tx_rts_check (struct ar9170*,struct ieee80211_tx_rate*,int,int) ;
 int cpu_to_le16 (int) ;

__attribute__((used)) static void carl9170_tx_apply_rateset(struct ar9170 *ar,
          struct ieee80211_tx_info *sinfo,
          struct sk_buff *skb)
{
 struct ieee80211_tx_rate *txrate;
 struct ieee80211_tx_info *info;
 struct _carl9170_tx_superframe *txc = (void *) skb->data;
 int i;
 bool ampdu;
 bool no_ack;

 info = IEEE80211_SKB_CB(skb);
 ampdu = !!(info->flags & IEEE80211_TX_CTL_AMPDU);
 no_ack = !!(info->flags & IEEE80211_TX_CTL_NO_ACK);





 info->flags |= (sinfo->flags & IEEE80211_TX_CTL_RATE_CTRL_PROBE);





 for (i = 0; i < CARL9170_TX_MAX_RATES; i++) {
  __le32 phy_set;

  txrate = &sinfo->control.rates[i];
  if (txrate->idx < 0)
   break;

  phy_set = carl9170_tx_physet(ar, info, txrate);
  if (i == 0) {
   __le16 mac_tmp = cpu_to_le16(0);


   txc->f.phy_control = phy_set;

   if (ampdu && txrate->flags & IEEE80211_TX_RC_MCS)
    mac_tmp |= cpu_to_le16(AR9170_TX_MAC_AGGR);

   if (carl9170_tx_rts_check(ar, txrate, ampdu, no_ack))
    mac_tmp |= cpu_to_le16(AR9170_TX_MAC_PROT_RTS);
   else if (carl9170_tx_cts_check(ar, txrate))
    mac_tmp |= cpu_to_le16(AR9170_TX_MAC_PROT_CTS);

   txc->f.mac_control |= mac_tmp;
  } else {



   txc->s.rr[i - 1] = phy_set;
  }

  SET_VAL(CARL9170_TX_SUPER_RI_TRIES, txc->s.ri[i],
   txrate->count);

  if (carl9170_tx_rts_check(ar, txrate, ampdu, no_ack))
   txc->s.ri[i] |= (AR9170_TX_MAC_PROT_RTS <<
    CARL9170_TX_SUPER_RI_ERP_PROT_S);
  else if (carl9170_tx_cts_check(ar, txrate))
   txc->s.ri[i] |= (AR9170_TX_MAC_PROT_CTS <<
    CARL9170_TX_SUPER_RI_ERP_PROT_S);

  if (ampdu && (txrate->flags & IEEE80211_TX_RC_MCS))
   txc->s.ri[i] |= CARL9170_TX_SUPER_RI_AMPDU;
 }
}
