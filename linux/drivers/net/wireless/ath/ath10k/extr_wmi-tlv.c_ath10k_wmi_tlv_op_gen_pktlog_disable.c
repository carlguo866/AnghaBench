
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wmi_tlv_pktlog_disable {int dummy; } ;
struct wmi_tlv {scalar_t__ value; void* len; void* tag; } ;
struct sk_buff {scalar_t__ data; } ;
struct ath10k {int dummy; } ;


 int ATH10K_DBG_WMI ;
 int ENOMEM ;
 struct sk_buff* ERR_PTR (int ) ;
 int WMI_TLV_TAG_STRUCT_PDEV_PKTLOG_DISABLE_CMD ;
 void* __cpu_to_le16 (int) ;
 int ath10k_dbg (struct ath10k*,int ,char*) ;
 struct sk_buff* ath10k_wmi_alloc_skb (struct ath10k*,size_t) ;

__attribute__((used)) static struct sk_buff *
ath10k_wmi_tlv_op_gen_pktlog_disable(struct ath10k *ar)
{
 struct wmi_tlv_pktlog_disable *cmd;
 struct wmi_tlv *tlv;
 struct sk_buff *skb;
 void *ptr;
 size_t len;

 len = sizeof(*tlv) + sizeof(*cmd);
 skb = ath10k_wmi_alloc_skb(ar, len);
 if (!skb)
  return ERR_PTR(-ENOMEM);

 ptr = (void *)skb->data;
 tlv = ptr;
 tlv->tag = __cpu_to_le16(WMI_TLV_TAG_STRUCT_PDEV_PKTLOG_DISABLE_CMD);
 tlv->len = __cpu_to_le16(sizeof(*cmd));
 cmd = (void *)tlv->value;

 ptr += sizeof(*tlv);
 ptr += sizeof(*cmd);

 ath10k_dbg(ar, ATH10K_DBG_WMI, "wmi tlv pktlog disable\n");
 return skb;
}
