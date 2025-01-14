
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct rtllib_rx_stats {int dummy; } ;
struct rtllib_device {int softmac_features; scalar_t__ state; scalar_t__ iw_mode; int dev; } ;


 int IEEE_SOFTMAC_ASSOCIATE ;
 scalar_t__ IW_MODE_INFRA ;
 scalar_t__ IW_MODE_MASTER ;
 scalar_t__ RTLLIB_ASSOCIATING_AUTHENTICATING ;
 int netdev_dbg (int ,char*) ;
 int rtllib_rx_auth_resp (struct rtllib_device*,struct sk_buff*) ;
 int rtllib_rx_auth_rq (struct rtllib_device*,struct sk_buff*) ;

__attribute__((used)) static inline int
rtllib_rx_auth(struct rtllib_device *ieee, struct sk_buff *skb,
        struct rtllib_rx_stats *rx_stats)
{

 if (ieee->softmac_features & IEEE_SOFTMAC_ASSOCIATE) {
  if (ieee->state == RTLLIB_ASSOCIATING_AUTHENTICATING &&
      (ieee->iw_mode == IW_MODE_INFRA)) {
   netdev_dbg(ieee->dev,
       "Received authentication response");
   rtllib_rx_auth_resp(ieee, skb);
  } else if (ieee->iw_mode == IW_MODE_MASTER) {
   rtllib_rx_auth_rq(ieee, skb);
  }
 }
 return 0;
}
