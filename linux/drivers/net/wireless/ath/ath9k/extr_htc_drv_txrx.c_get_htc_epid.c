
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct ath9k_htc_priv {int data_vo_ep; int data_vi_ep; int data_be_ep; int data_bk_ep; } ;
typedef enum htc_endpoint_id { ____Placeholder_htc_endpoint_id } htc_endpoint_id ;


 int IEEE80211_AC_BE ;
 int IEEE80211_AC_BK ;
 int IEEE80211_AC_VI ;
 int IEEE80211_AC_VO ;
 int TX_QSTAT_INC (int ) ;

__attribute__((used)) static inline enum htc_endpoint_id get_htc_epid(struct ath9k_htc_priv *priv,
      u16 qnum)
{
 enum htc_endpoint_id epid;

 switch (qnum) {
 case 0:
  TX_QSTAT_INC(IEEE80211_AC_VO);
  epid = priv->data_vo_ep;
  break;
 case 1:
  TX_QSTAT_INC(IEEE80211_AC_VI);
  epid = priv->data_vi_ep;
  break;
 case 2:
  TX_QSTAT_INC(IEEE80211_AC_BE);
  epid = priv->data_be_ep;
  break;
 case 3:
 default:
  TX_QSTAT_INC(IEEE80211_AC_BK);
  epid = priv->data_bk_ep;
  break;
 }

 return epid;
}
