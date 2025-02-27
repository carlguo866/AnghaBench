
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {int dummy; } ;
struct sk_psock {struct sock* sk; } ;
struct TYPE_2__ {int size; int end; scalar_t__ start; int data; } ;
struct sk_msg {struct sk_buff* skb; TYPE_1__ sg; } ;
struct sk_buff {int len; } ;


 int EAGAIN ;
 int GFP_ATOMIC ;
 int MAX_MSG_FRAGS ;
 int __GFP_NOWARN ;
 int kfree (struct sk_msg*) ;
 struct sk_msg* kzalloc (int,int) ;
 int sk_mem_charge (struct sock*,int) ;
 int sk_msg_init (struct sk_msg*) ;
 int sk_psock_data_ready (struct sock*,struct sk_psock*) ;
 int sk_psock_queue_msg (struct sk_psock*,struct sk_msg*) ;
 int sk_rmem_schedule (struct sock*,struct sk_buff*,int) ;
 int skb_to_sgvec (struct sk_buff*,int ,int ,int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int sk_psock_skb_ingress(struct sk_psock *psock, struct sk_buff *skb)
{
 struct sock *sk = psock->sk;
 int copied = 0, num_sge;
 struct sk_msg *msg;

 msg = kzalloc(sizeof(*msg), __GFP_NOWARN | GFP_ATOMIC);
 if (unlikely(!msg))
  return -EAGAIN;
 if (!sk_rmem_schedule(sk, skb, skb->len)) {
  kfree(msg);
  return -EAGAIN;
 }

 sk_msg_init(msg);
 num_sge = skb_to_sgvec(skb, msg->sg.data, 0, skb->len);
 if (unlikely(num_sge < 0)) {
  kfree(msg);
  return num_sge;
 }

 sk_mem_charge(sk, skb->len);
 copied = skb->len;
 msg->sg.start = 0;
 msg->sg.size = copied;
 msg->sg.end = num_sge == MAX_MSG_FRAGS ? 0 : num_sge;
 msg->skb = skb;

 sk_psock_queue_msg(psock, msg);
 sk_psock_data_ready(sk, psock);
 return copied;
}
