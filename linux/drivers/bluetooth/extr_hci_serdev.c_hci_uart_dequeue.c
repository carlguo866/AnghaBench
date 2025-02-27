
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct hci_uart {struct sk_buff* tx_skb; TYPE_1__* proto; int flags; } ;
struct TYPE_2__ {struct sk_buff* (* dequeue ) (struct hci_uart*) ;} ;


 int HCI_UART_PROTO_READY ;
 struct sk_buff* stub1 (struct hci_uart*) ;
 scalar_t__ test_bit (int ,int *) ;

__attribute__((used)) static inline struct sk_buff *hci_uart_dequeue(struct hci_uart *hu)
{
 struct sk_buff *skb = hu->tx_skb;

 if (!skb) {
  if (test_bit(HCI_UART_PROTO_READY, &hu->flags))
   skb = hu->proto->dequeue(hu);
 } else
  hu->tx_skb = ((void*)0);

 return skb;
}
