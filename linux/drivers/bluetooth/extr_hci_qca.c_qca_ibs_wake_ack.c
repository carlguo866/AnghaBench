
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct hci_uart {int dummy; } ;
struct hci_dev {int dummy; } ;


 int BT_DBG (char*,struct hci_uart*,int ) ;
 int HCI_IBS_WAKE_ACK ;
 int device_woke_up (struct hci_uart*) ;
 struct hci_uart* hci_get_drvdata (struct hci_dev*) ;
 int kfree_skb (struct sk_buff*) ;

__attribute__((used)) static int qca_ibs_wake_ack(struct hci_dev *hdev, struct sk_buff *skb)
{
 struct hci_uart *hu = hci_get_drvdata(hdev);

 BT_DBG("hu %p recv hci ibs cmd 0x%x", hu, HCI_IBS_WAKE_ACK);

 device_woke_up(hu);

 kfree_skb(skb);
 return 0;
}
