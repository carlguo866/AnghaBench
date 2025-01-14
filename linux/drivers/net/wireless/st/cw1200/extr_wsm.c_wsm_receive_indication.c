
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wsm_rx {int rcpi_rssi; void* status; void* flags; void* rx_rate; int channel_number; } ;
struct wsm_buf {size_t data; size_t begin; } ;
struct sk_buff {scalar_t__ data; } ;
struct ieee80211_hdr {int frame_control; } ;
struct cw1200_common {scalar_t__ join_status; int unjoin_work; int workqueue; int cqm_use_rssi; } ;
typedef int __le16 ;


 scalar_t__ CW1200_JOIN_STATUS_STA ;
 int EINVAL ;
 int WSM_GET16 (struct wsm_buf*) ;
 void* WSM_GET32 (struct wsm_buf*) ;
 void* WSM_GET8 (struct wsm_buf*) ;
 int cw1200_rx_cb (struct cw1200_common*,struct wsm_rx*,int,struct sk_buff**) ;
 scalar_t__ ieee80211_is_beacon (int ) ;
 scalar_t__ ieee80211_is_deauth (int ) ;
 scalar_t__ ieee80211_is_probe_resp (int ) ;
 int pr_debug (char*) ;
 scalar_t__ queue_work (int ,int *) ;
 int skb_pull (struct sk_buff*,size_t) ;
 int skb_push (struct sk_buff*,size_t) ;
 int wsm_lock_tx_async (struct cw1200_common*) ;
 int wsm_unlock_tx (struct cw1200_common*) ;

__attribute__((used)) static int wsm_receive_indication(struct cw1200_common *priv,
      int link_id,
      struct wsm_buf *buf,
      struct sk_buff **skb_p)
{
 struct wsm_rx rx;
 struct ieee80211_hdr *hdr;
 size_t hdr_len;
 __le16 fctl;

 rx.status = WSM_GET32(buf);
 rx.channel_number = WSM_GET16(buf);
 rx.rx_rate = WSM_GET8(buf);
 rx.rcpi_rssi = WSM_GET8(buf);
 rx.flags = WSM_GET32(buf);




 hdr = (struct ieee80211_hdr *)(*skb_p)->data;

 if (!rx.rcpi_rssi &&
     (ieee80211_is_probe_resp(hdr->frame_control) ||
      ieee80211_is_beacon(hdr->frame_control)))
  return 0;




 if (!priv->cqm_use_rssi)
  rx.rcpi_rssi = rx.rcpi_rssi / 2 - 110;

 fctl = *(__le16 *)buf->data;
 hdr_len = buf->data - buf->begin;
 skb_pull(*skb_p, hdr_len);
 if (!rx.status && ieee80211_is_deauth(fctl)) {
  if (priv->join_status == CW1200_JOIN_STATUS_STA) {

   pr_debug("[WSM] Issue unjoin command (RX).\n");
   wsm_lock_tx_async(priv);
   if (queue_work(priv->workqueue,
           &priv->unjoin_work) <= 0)
    wsm_unlock_tx(priv);
  }
 }
 cw1200_rx_cb(priv, &rx, link_id, skb_p);
 if (*skb_p)
  skb_push(*skb_p, hdr_len);

 return 0;

underflow:
 return -EINVAL;
}
