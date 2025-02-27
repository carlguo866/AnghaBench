
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct socket {struct sock* sk; } ;
struct TYPE_4__ {int pgn; int addr; int name; } ;
struct TYPE_5__ {TYPE_1__ j1939; } ;
struct sockaddr_can {TYPE_2__ can_addr; int can_ifindex; int can_family; } ;
struct sock {int dummy; } ;
struct sk_buff {size_t len; int skb_iif; int data; } ;
struct msghdr {int msg_flags; int msg_namelen; struct sockaddr_can* msg_name; } ;
struct TYPE_6__ {int pgn; int sa; int src_name; scalar_t__ dst_name; scalar_t__ da; } ;
struct j1939_sk_buff_cb {int msg_flags; TYPE_3__ addr; scalar_t__ priority; } ;


 int AF_CAN ;
 int EINVAL ;
 int J1939_MIN_NAMELEN ;
 int MSG_DONTWAIT ;
 int MSG_ERRQUEUE ;
 int MSG_TRUNC ;
 int SCM_J1939_DEST_ADDR ;
 int SCM_J1939_DEST_NAME ;
 int SCM_J1939_ERRQUEUE ;
 int SCM_J1939_PRIO ;
 int SOL_CAN_J1939 ;
 scalar_t__ j1939_address_is_valid (scalar_t__) ;
 struct j1939_sk_buff_cb* j1939_skb_to_cb (struct sk_buff*) ;
 int memcpy_to_msg (struct msghdr*,int ,size_t) ;
 int memset (struct sockaddr_can*,int ,int ) ;
 int put_cmsg (struct msghdr*,int ,int ,int,scalar_t__*) ;
 int skb_free_datagram (struct sock*,struct sk_buff*) ;
 struct sk_buff* skb_recv_datagram (struct sock*,int,int ,int*) ;
 int sock_recv_errqueue (struct sock*,struct msghdr*,size_t,int ,int ) ;
 int sock_recv_ts_and_drops (struct msghdr*,struct sock*,struct sk_buff*) ;

__attribute__((used)) static int j1939_sk_recvmsg(struct socket *sock, struct msghdr *msg,
       size_t size, int flags)
{
 struct sock *sk = sock->sk;
 struct sk_buff *skb;
 struct j1939_sk_buff_cb *skcb;
 int ret = 0;

 if (flags & ~(MSG_DONTWAIT | MSG_ERRQUEUE))
  return -EINVAL;

 if (flags & MSG_ERRQUEUE)
  return sock_recv_errqueue(sock->sk, msg, size, SOL_CAN_J1939,
       SCM_J1939_ERRQUEUE);

 skb = skb_recv_datagram(sk, flags, 0, &ret);
 if (!skb)
  return ret;

 if (size < skb->len)
  msg->msg_flags |= MSG_TRUNC;
 else
  size = skb->len;

 ret = memcpy_to_msg(msg, skb->data, size);
 if (ret < 0) {
  skb_free_datagram(sk, skb);
  return ret;
 }

 skcb = j1939_skb_to_cb(skb);
 if (j1939_address_is_valid(skcb->addr.da))
  put_cmsg(msg, SOL_CAN_J1939, SCM_J1939_DEST_ADDR,
    sizeof(skcb->addr.da), &skcb->addr.da);

 if (skcb->addr.dst_name)
  put_cmsg(msg, SOL_CAN_J1939, SCM_J1939_DEST_NAME,
    sizeof(skcb->addr.dst_name), &skcb->addr.dst_name);

 put_cmsg(msg, SOL_CAN_J1939, SCM_J1939_PRIO,
   sizeof(skcb->priority), &skcb->priority);

 if (msg->msg_name) {
  struct sockaddr_can *paddr = msg->msg_name;

  msg->msg_namelen = J1939_MIN_NAMELEN;
  memset(msg->msg_name, 0, msg->msg_namelen);
  paddr->can_family = AF_CAN;
  paddr->can_ifindex = skb->skb_iif;
  paddr->can_addr.j1939.name = skcb->addr.src_name;
  paddr->can_addr.j1939.addr = skcb->addr.sa;
  paddr->can_addr.j1939.pgn = skcb->addr.pgn;
 }

 sock_recv_ts_and_drops(msg, sk, skb);
 msg->msg_flags |= skcb->msg_flags;
 skb_free_datagram(sk, skb);

 return size;
}
