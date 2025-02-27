
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ks_wlan_private {int dummy; } ;


 unsigned int SME_FRAG ;
 int SME_FRAGMENTATION_THRESHOLD_REQUEST ;
 int SME_MODE_SET_REQUEST ;
 unsigned int SME_RSN ;
 unsigned int SME_RSN_AUTH ;
 int SME_RSN_AUTH_REQUEST ;
 int SME_RSN_ENABLED_REQUEST ;
 int SME_RSN_MCAST_REQUEST ;
 int SME_RSN_MODE_REQUEST ;
 unsigned int SME_RSN_MULTICAST ;
 int SME_RSN_UCAST_REQUEST ;
 unsigned int SME_RSN_UNICAST ;
 unsigned int SME_RTS ;
 int SME_RTS_THRESHOLD_REQUEST ;
 int SME_START_REQUEST ;
 int SME_STOP_REQUEST ;
 unsigned int SME_WEP_FLAG ;
 int SME_WEP_FLAG_REQUEST ;
 unsigned int SME_WEP_INDEX ;
 int SME_WEP_INDEX_REQUEST ;
 int SME_WEP_KEY1_REQUEST ;
 int SME_WEP_KEY2_REQUEST ;
 int SME_WEP_KEY3_REQUEST ;
 int SME_WEP_KEY4_REQUEST ;
 unsigned int SME_WEP_VAL1 ;
 unsigned int SME_WEP_VAL2 ;
 unsigned int SME_WEP_VAL3 ;
 unsigned int SME_WEP_VAL4 ;
 int hostif_sme_enqueue (struct ks_wlan_private*,int ) ;

int ks_wlan_setup_parameter(struct ks_wlan_private *priv,
       unsigned int commit_flag)
{
 hostif_sme_enqueue(priv, SME_STOP_REQUEST);

 if (commit_flag & SME_RTS)
  hostif_sme_enqueue(priv, SME_RTS_THRESHOLD_REQUEST);
 if (commit_flag & SME_FRAG)
  hostif_sme_enqueue(priv, SME_FRAGMENTATION_THRESHOLD_REQUEST);

 if (commit_flag & SME_WEP_INDEX)
  hostif_sme_enqueue(priv, SME_WEP_INDEX_REQUEST);
 if (commit_flag & SME_WEP_VAL1)
  hostif_sme_enqueue(priv, SME_WEP_KEY1_REQUEST);
 if (commit_flag & SME_WEP_VAL2)
  hostif_sme_enqueue(priv, SME_WEP_KEY2_REQUEST);
 if (commit_flag & SME_WEP_VAL3)
  hostif_sme_enqueue(priv, SME_WEP_KEY3_REQUEST);
 if (commit_flag & SME_WEP_VAL4)
  hostif_sme_enqueue(priv, SME_WEP_KEY4_REQUEST);
 if (commit_flag & SME_WEP_FLAG)
  hostif_sme_enqueue(priv, SME_WEP_FLAG_REQUEST);

 if (commit_flag & SME_RSN) {
  hostif_sme_enqueue(priv, SME_RSN_ENABLED_REQUEST);
  hostif_sme_enqueue(priv, SME_RSN_MODE_REQUEST);
 }
 if (commit_flag & SME_RSN_MULTICAST)
  hostif_sme_enqueue(priv, SME_RSN_MCAST_REQUEST);
 if (commit_flag & SME_RSN_UNICAST)
  hostif_sme_enqueue(priv, SME_RSN_UCAST_REQUEST);
 if (commit_flag & SME_RSN_AUTH)
  hostif_sme_enqueue(priv, SME_RSN_AUTH_REQUEST);

 hostif_sme_enqueue(priv, SME_MODE_SET_REQUEST);

 hostif_sme_enqueue(priv, SME_START_REQUEST);

 return 0;
}
