
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u16 ;
struct sk_buff {int len; scalar_t__ data; } ;
struct TYPE_3__ {scalar_t__ mode; } ;
struct rtllib_device {scalar_t__ mode; scalar_t__ AsocRetryCount; TYPE_2__* pHTInfo; TYPE_1__ current_network; int dev; } ;
struct rtllib_assoc_response_frame {int status; int aid; } ;
struct TYPE_4__ {int IOTAction; } ;


 int HT_IOT_ACT_PURE_N_MODE ;
 scalar_t__ IEEE_G ;
 scalar_t__ IEEE_N_24G ;
 int RT_ASOC_RETRY_LIMIT ;
 int WLAN_STATUS_ASSOC_DENIED_RATES ;
 int WLAN_STATUS_CAPS_UNSUPPORTED ;
 int le16_to_cpu (int ) ;
 int netdev_dbg (int ,char*,int) ;

__attribute__((used)) static inline u16 assoc_parse(struct rtllib_device *ieee, struct sk_buff *skb,
         int *aid)
{
 struct rtllib_assoc_response_frame *response_head;
 u16 status_code;

 if (skb->len < sizeof(struct rtllib_assoc_response_frame)) {
  netdev_dbg(ieee->dev, "Invalid len in auth resp: %d\n",
      skb->len);
  return 0xcafe;
 }

 response_head = (struct rtllib_assoc_response_frame *) skb->data;
 *aid = le16_to_cpu(response_head->aid) & 0x3fff;

 status_code = le16_to_cpu(response_head->status);
 if ((status_code == WLAN_STATUS_ASSOC_DENIED_RATES ||
    status_code == WLAN_STATUS_CAPS_UNSUPPORTED) &&
    ((ieee->mode == IEEE_G) &&
    (ieee->current_network.mode == IEEE_N_24G) &&
    (ieee->AsocRetryCount++ < (RT_ASOC_RETRY_LIMIT-1)))) {
  ieee->pHTInfo->IOTAction |= HT_IOT_ACT_PURE_N_MODE;
 } else {
  ieee->AsocRetryCount = 0;
 }

 return le16_to_cpu(response_head->status);
}
