
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct tun_struct {scalar_t__ rx_batched; } ;
struct sk_buff_head {int lock; } ;
struct TYPE_2__ {struct sk_buff_head sk_write_queue; } ;
struct tun_file {int queue_index; TYPE_1__ sk; } ;
struct sk_buff {int dummy; } ;


 struct sk_buff* __skb_dequeue (struct sk_buff_head*) ;
 int __skb_queue_head_init (struct sk_buff_head*) ;
 int __skb_queue_tail (struct sk_buff_head*,struct sk_buff*) ;
 int local_bh_disable () ;
 int local_bh_enable () ;
 int netif_receive_skb (struct sk_buff*) ;
 scalar_t__ skb_queue_empty (struct sk_buff_head*) ;
 scalar_t__ skb_queue_len (struct sk_buff_head*) ;
 int skb_queue_splice_tail_init (struct sk_buff_head*,struct sk_buff_head*) ;
 int skb_record_rx_queue (struct sk_buff*,int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void tun_rx_batched(struct tun_struct *tun, struct tun_file *tfile,
      struct sk_buff *skb, int more)
{
 struct sk_buff_head *queue = &tfile->sk.sk_write_queue;
 struct sk_buff_head process_queue;
 u32 rx_batched = tun->rx_batched;
 bool rcv = 0;

 if (!rx_batched || (!more && skb_queue_empty(queue))) {
  local_bh_disable();
  skb_record_rx_queue(skb, tfile->queue_index);
  netif_receive_skb(skb);
  local_bh_enable();
  return;
 }

 spin_lock(&queue->lock);
 if (!more || skb_queue_len(queue) == rx_batched) {
  __skb_queue_head_init(&process_queue);
  skb_queue_splice_tail_init(queue, &process_queue);
  rcv = 1;
 } else {
  __skb_queue_tail(queue, skb);
 }
 spin_unlock(&queue->lock);

 if (rcv) {
  struct sk_buff *nskb;

  local_bh_disable();
  while ((nskb = __skb_dequeue(&process_queue))) {
   skb_record_rx_queue(nskb, tfile->queue_index);
   netif_receive_skb(nskb);
  }
  skb_record_rx_queue(skb, tfile->queue_index);
  netif_receive_skb(skb);
  local_bh_enable();
 }
}
