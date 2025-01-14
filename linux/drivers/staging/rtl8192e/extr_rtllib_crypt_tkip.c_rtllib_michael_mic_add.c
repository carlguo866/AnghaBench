
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct sk_buff {int* data; int len; int dev; } ;
struct rtllib_tkip_data {int* tx_hdr; int * key; int tx_tfm_michael; } ;
struct rtllib_hdr_4addr {int frame_ctl; } ;


 scalar_t__ RTLLIB_QOS_HAS_SEQ (int ) ;
 int le16_to_cpu (int ) ;
 scalar_t__ michael_mic (int ,int *,int*,int*,int,int *) ;
 int michael_mic_hdr (struct sk_buff*,int*) ;
 int netdev_dbg (int ,char*,int,int,int) ;
 int * skb_put (struct sk_buff*,int) ;
 int skb_tailroom (struct sk_buff*) ;

__attribute__((used)) static int rtllib_michael_mic_add(struct sk_buff *skb, int hdr_len, void *priv)
{
 struct rtllib_tkip_data *tkey = priv;
 u8 *pos;
 struct rtllib_hdr_4addr *hdr;

 hdr = (struct rtllib_hdr_4addr *) skb->data;

 if (skb_tailroom(skb) < 8 || skb->len < hdr_len) {
  netdev_dbg(skb->dev,
      "Invalid packet for Michael MIC add (tailroom=%d hdr_len=%d skb->len=%d)\n",
      skb_tailroom(skb), hdr_len, skb->len);
  return -1;
 }

 michael_mic_hdr(skb, tkey->tx_hdr);

 if (RTLLIB_QOS_HAS_SEQ(le16_to_cpu(hdr->frame_ctl)))
  tkey->tx_hdr[12] = *(skb->data + hdr_len - 2) & 0x07;
 pos = skb_put(skb, 8);
 if (michael_mic(tkey->tx_tfm_michael, &tkey->key[16], tkey->tx_hdr,
     skb->data + hdr_len, skb->len - 8 - hdr_len, pos))
  return -1;

 return 0;
}
