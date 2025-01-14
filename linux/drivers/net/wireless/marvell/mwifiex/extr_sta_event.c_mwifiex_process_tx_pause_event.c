
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
typedef int u16 ;
struct sk_buff {int len; scalar_t__ data; } ;
struct mwifiex_private {int adapter; int bss_role; int media_connected; } ;
struct mwifiex_ie_types_header {int len; int type; } ;


 int ERROR ;
 scalar_t__ GET_BSS_ROLE (struct mwifiex_private*) ;
 scalar_t__ MWIFIEX_BSS_ROLE_STA ;
 int TLV_TYPE_TX_PAUSE ;
 int le16_to_cpu (int ) ;
 int mwifiex_dbg (int ,int ,char*,int,...) ;
 int mwifiex_process_sta_tx_pause (struct mwifiex_private*,struct mwifiex_ie_types_header*) ;
 int mwifiex_process_uap_tx_pause (struct mwifiex_private*,struct mwifiex_ie_types_header*) ;

void mwifiex_process_tx_pause_event(struct mwifiex_private *priv,
        struct sk_buff *event_skb)
{
 struct mwifiex_ie_types_header *tlv;
 u16 tlv_type, tlv_len;
 int tlv_buf_left;

 if (!priv->media_connected) {
  mwifiex_dbg(priv->adapter, ERROR,
       "tx_pause event while disconnected; bss_role=%d\n",
       priv->bss_role);
  return;
 }

 tlv_buf_left = event_skb->len - sizeof(u32);
 tlv = (void *)event_skb->data + sizeof(u32);

 while (tlv_buf_left >= (int)sizeof(struct mwifiex_ie_types_header)) {
  tlv_type = le16_to_cpu(tlv->type);
  tlv_len = le16_to_cpu(tlv->len);
  if ((sizeof(struct mwifiex_ie_types_header) + tlv_len) >
      tlv_buf_left) {
   mwifiex_dbg(priv->adapter, ERROR,
        "wrong tlv: tlvLen=%d, tlvBufLeft=%d\n",
        tlv_len, tlv_buf_left);
   break;
  }
  if (tlv_type == TLV_TYPE_TX_PAUSE) {
   if (GET_BSS_ROLE(priv) == MWIFIEX_BSS_ROLE_STA)
    mwifiex_process_sta_tx_pause(priv, tlv);
   else
    mwifiex_process_uap_tx_pause(priv, tlv);
  }

  tlv_buf_left -= sizeof(struct mwifiex_ie_types_header) +
    tlv_len;
  tlv = (void *)((u8 *)tlv + tlv_len +
          sizeof(struct mwifiex_ie_types_header));
 }

}
