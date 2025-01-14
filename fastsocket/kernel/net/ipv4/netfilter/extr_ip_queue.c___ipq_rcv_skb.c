
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int len; } ;
struct nlmsghdr {int nlmsg_len; int nlmsg_pid; int nlmsg_flags; int nlmsg_type; } ;


 int CAP_NET_ADMIN ;
 int EBUSY ;
 int ECOMM ;
 int EINVAL ;
 int EPERM ;
 int IPQM_BASE ;
 int IPQM_MAX ;
 int MSG_TRUNC ;
 int NLMSG_DATA (struct nlmsghdr*) ;
 scalar_t__ NLMSG_LENGTH (int ) ;
 int NLMSG_NOOP ;
 int NLM_F_ACK ;
 int NLM_F_MULTI ;
 int NLM_F_REQUEST ;
 int RCV_SKB_FAIL (int) ;
 int ipq_receive_peer (int ,int,scalar_t__) ;
 int net_enable_timestamp () ;
 int netlink_ack (struct sk_buff*,struct nlmsghdr*,int ) ;
 struct nlmsghdr* nlmsg_hdr (struct sk_buff*) ;
 int peer_pid ;
 int queue_lock ;
 scalar_t__ security_netlink_recv (struct sk_buff*,int ) ;
 int write_lock_bh (int *) ;
 int write_unlock_bh (int *) ;

__attribute__((used)) static inline void
__ipq_rcv_skb(struct sk_buff *skb)
{
 int status, type, pid, flags, nlmsglen, skblen;
 struct nlmsghdr *nlh;

 skblen = skb->len;
 if (skblen < sizeof(*nlh))
  return;

 nlh = nlmsg_hdr(skb);
 nlmsglen = nlh->nlmsg_len;
 if (nlmsglen < sizeof(*nlh) || skblen < nlmsglen)
  return;

 pid = nlh->nlmsg_pid;
 flags = nlh->nlmsg_flags;

 if(pid <= 0 || !(flags & NLM_F_REQUEST) || flags & NLM_F_MULTI)
  RCV_SKB_FAIL(-EINVAL);

 if (flags & MSG_TRUNC)
  RCV_SKB_FAIL(-ECOMM);

 type = nlh->nlmsg_type;
 if (type < NLMSG_NOOP || type >= IPQM_MAX)
  RCV_SKB_FAIL(-EINVAL);

 if (type <= IPQM_BASE)
  return;

 if (security_netlink_recv(skb, CAP_NET_ADMIN))
  RCV_SKB_FAIL(-EPERM);

 write_lock_bh(&queue_lock);

 if (peer_pid) {
  if (peer_pid != pid) {
   write_unlock_bh(&queue_lock);
   RCV_SKB_FAIL(-EBUSY);
  }
 } else {
  net_enable_timestamp();
  peer_pid = pid;
 }

 write_unlock_bh(&queue_lock);

 status = ipq_receive_peer(NLMSG_DATA(nlh), type,
      nlmsglen - NLMSG_LENGTH(0));
 if (status < 0)
  RCV_SKB_FAIL(status);

 if (flags & NLM_F_ACK)
  netlink_ack(skb, nlh, 0);
 return;
}
