
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {scalar_t__ data; } ;
struct ieee80211_hdr_3addr {void* seq_ctl; } ;
struct ieee80211_device {short softmac_features; int* seq_ctrl; TYPE_1__* dev; int (* softmac_hard_start_xmit ) (struct sk_buff*,TYPE_1__*) ;int basic_rate; int (* softmac_data_hard_start_xmit ) (struct sk_buff*,TYPE_1__*,int ) ;} ;
struct TYPE_3__ {void* trans_start; } ;


 short IEEE_SOFTMAC_SINGLE_QUEUE ;
 void* cpu_to_le16 (int) ;
 void* jiffies ;
 int stub1 (struct sk_buff*,TYPE_1__*,int ) ;
 int stub2 (struct sk_buff*,TYPE_1__*) ;

inline void softmac_ps_mgmt_xmit(struct sk_buff *skb, struct ieee80211_device *ieee)
{

 short single = ieee->softmac_features & IEEE_SOFTMAC_SINGLE_QUEUE;
 struct ieee80211_hdr_3addr *header =
  (struct ieee80211_hdr_3addr *) skb->data;


 if(single){

  header->seq_ctl = cpu_to_le16(ieee->seq_ctrl[0] << 4);

  if (ieee->seq_ctrl[0] == 0xFFF)
   ieee->seq_ctrl[0] = 0;
  else
   ieee->seq_ctrl[0]++;


  ieee->dev->trans_start = jiffies;
  ieee->softmac_data_hard_start_xmit(skb,ieee->dev,ieee->basic_rate);

 }else{

  header->seq_ctl = cpu_to_le16(ieee->seq_ctrl[0] << 4);

  if (ieee->seq_ctrl[0] == 0xFFF)
   ieee->seq_ctrl[0] = 0;
  else
   ieee->seq_ctrl[0]++;


  ieee->dev->trans_start = jiffies;
  ieee->softmac_hard_start_xmit(skb,ieee->dev);

 }

}
