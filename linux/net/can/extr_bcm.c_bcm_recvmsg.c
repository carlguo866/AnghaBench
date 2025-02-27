
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {struct sock* sk; } ;
struct sockaddr_can {int dummy; } ;
struct sock {int dummy; } ;
struct sk_buff {size_t len; int cb; int data; } ;
struct msghdr {int msg_namelen; scalar_t__ msg_name; } ;


 int MSG_DONTWAIT ;
 int __sockaddr_check_size (int) ;
 int memcpy (scalar_t__,int ,int) ;
 int memcpy_to_msg (struct msghdr*,int ,size_t) ;
 int skb_free_datagram (struct sock*,struct sk_buff*) ;
 struct sk_buff* skb_recv_datagram (struct sock*,int,int,int*) ;
 int sock_recv_ts_and_drops (struct msghdr*,struct sock*,struct sk_buff*) ;

__attribute__((used)) static int bcm_recvmsg(struct socket *sock, struct msghdr *msg, size_t size,
         int flags)
{
 struct sock *sk = sock->sk;
 struct sk_buff *skb;
 int error = 0;
 int noblock;
 int err;

 noblock = flags & MSG_DONTWAIT;
 flags &= ~MSG_DONTWAIT;
 skb = skb_recv_datagram(sk, flags, noblock, &error);
 if (!skb)
  return error;

 if (skb->len < size)
  size = skb->len;

 err = memcpy_to_msg(msg, skb->data, size);
 if (err < 0) {
  skb_free_datagram(sk, skb);
  return err;
 }

 sock_recv_ts_and_drops(msg, sk, skb);

 if (msg->msg_name) {
  __sockaddr_check_size(sizeof(struct sockaddr_can));
  msg->msg_namelen = sizeof(struct sockaddr_can);
  memcpy(msg->msg_name, skb->cb, msg->msg_namelen);
 }

 skb_free_datagram(sk, skb);

 return size;
}
