
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u32 ;
struct wmi_bss_filter_cmd {int ie_mask; scalar_t__ bss_filter; } ;
struct wmi {int dummy; } ;
struct sk_buff {scalar_t__ data; } ;


 int EINVAL ;
 int ENOMEM ;
 scalar_t__ LAST_BSS_FILTER ;
 int NO_SYNC_WMIFLAG ;
 int WMI_SET_BSS_FILTER_CMDID ;
 int ath6kl_wmi_cmd_send (struct wmi*,scalar_t__,struct sk_buff*,int ,int ) ;
 struct sk_buff* ath6kl_wmi_get_new_buf (int) ;
 int cpu_to_le32 (int ) ;

int ath6kl_wmi_bssfilter_cmd(struct wmi *wmi, u8 if_idx, u8 filter, u32 ie_mask)
{
 struct sk_buff *skb;
 struct wmi_bss_filter_cmd *cmd;
 int ret;

 if (filter >= LAST_BSS_FILTER)
  return -EINVAL;

 skb = ath6kl_wmi_get_new_buf(sizeof(*cmd));
 if (!skb)
  return -ENOMEM;

 cmd = (struct wmi_bss_filter_cmd *) skb->data;
 cmd->bss_filter = filter;
 cmd->ie_mask = cpu_to_le32(ie_mask);

 ret = ath6kl_wmi_cmd_send(wmi, if_idx, skb, WMI_SET_BSS_FILTER_CMDID,
      NO_SYNC_WMIFLAG);
 return ret;
}
