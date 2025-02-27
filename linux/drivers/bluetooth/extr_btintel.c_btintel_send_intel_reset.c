
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sk_buff {int dummy; } ;
struct intel_reset {int member_0; int member_1; int member_2; int member_3; int member_4; int boot_param; } ;
struct hci_dev {int dummy; } ;
typedef int params ;


 int HCI_INIT_TIMEOUT ;
 scalar_t__ IS_ERR (struct sk_buff*) ;
 int PTR_ERR (struct sk_buff*) ;
 struct sk_buff* __hci_cmd_sync (struct hci_dev*,int,int,struct intel_reset*,int ) ;
 int bt_dev_err (struct hci_dev*,char*) ;
 int cpu_to_le32 (int ) ;
 int kfree_skb (struct sk_buff*) ;

int btintel_send_intel_reset(struct hci_dev *hdev, u32 boot_param)
{
 struct intel_reset params = { 0x00, 0x01, 0x00, 0x01, 0x00000000 };
 struct sk_buff *skb;

 params.boot_param = cpu_to_le32(boot_param);

 skb = __hci_cmd_sync(hdev, 0xfc01, sizeof(params), &params,
        HCI_INIT_TIMEOUT);
 if (IS_ERR(skb)) {
  bt_dev_err(hdev, "Failed to send Intel Reset command");
  return PTR_ERR(skb);
 }

 kfree_skb(skb);

 return 0;
}
