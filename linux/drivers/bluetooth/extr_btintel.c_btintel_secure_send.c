
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct sk_buff {int dummy; } ;
struct hci_dev {int dummy; } ;


 int HCI_INIT_TIMEOUT ;
 scalar_t__ IS_ERR (struct sk_buff*) ;
 int PTR_ERR (struct sk_buff*) ;
 struct sk_buff* __hci_cmd_sync (struct hci_dev*,int,int,int*,int ) ;
 int kfree_skb (struct sk_buff*) ;
 int memcpy (int*,void const*,int) ;

int btintel_secure_send(struct hci_dev *hdev, u8 fragment_type, u32 plen,
   const void *param)
{
 while (plen > 0) {
  struct sk_buff *skb;
  u8 cmd_param[253], fragment_len = (plen > 252) ? 252 : plen;

  cmd_param[0] = fragment_type;
  memcpy(cmd_param + 1, param, fragment_len);

  skb = __hci_cmd_sync(hdev, 0xfc09, fragment_len + 1,
         cmd_param, HCI_INIT_TIMEOUT);
  if (IS_ERR(skb))
   return PTR_ERR(skb);

  kfree_skb(skb);

  plen -= fragment_len;
  param += fragment_len;
 }

 return 0;
}
