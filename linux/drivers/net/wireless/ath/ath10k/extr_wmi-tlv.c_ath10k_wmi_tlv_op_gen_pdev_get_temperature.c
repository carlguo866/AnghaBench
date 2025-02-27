
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wmi_tlv_pdev_get_temp_cmd {int dummy; } ;
struct wmi_tlv {scalar_t__ value; void* len; void* tag; } ;
struct sk_buff {scalar_t__ data; } ;
struct ath10k {int dummy; } ;


 int ATH10K_DBG_WMI ;
 int ENOMEM ;
 struct sk_buff* ERR_PTR (int ) ;
 int WMI_TLV_TAG_STRUCT_PDEV_GET_TEMPERATURE_CMD ;
 void* __cpu_to_le16 (int) ;
 int ath10k_dbg (struct ath10k*,int ,char*) ;
 struct sk_buff* ath10k_wmi_alloc_skb (struct ath10k*,int) ;

__attribute__((used)) static struct sk_buff *
ath10k_wmi_tlv_op_gen_pdev_get_temperature(struct ath10k *ar)
{
 struct wmi_tlv_pdev_get_temp_cmd *cmd;
 struct wmi_tlv *tlv;
 struct sk_buff *skb;

 skb = ath10k_wmi_alloc_skb(ar, sizeof(*tlv) + sizeof(*cmd));
 if (!skb)
  return ERR_PTR(-ENOMEM);

 tlv = (void *)skb->data;
 tlv->tag = __cpu_to_le16(WMI_TLV_TAG_STRUCT_PDEV_GET_TEMPERATURE_CMD);
 tlv->len = __cpu_to_le16(sizeof(*cmd));
 cmd = (void *)tlv->value;
 ath10k_dbg(ar, ATH10K_DBG_WMI, "wmi pdev get temperature tlv\n");
 return skb;
}
