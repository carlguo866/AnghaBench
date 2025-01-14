
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct nlmsghdr {scalar_t__ nlmsg_len; int nlmsg_seq; } ;
struct nlmsgerr {int error; int msg; } ;
struct nlattr {int dummy; } ;
struct nfgenmsg {int dummy; } ;
struct ip_set {int lock; TYPE_1__* variant; } ;
typedef enum ipset_adt { ____Placeholder_ipset_adt } ipset_adt ;
struct TYPE_4__ {int pid; } ;
struct TYPE_3__ {int (* resize ) (struct ip_set*,int ) ;int (* uadt ) (struct ip_set*,struct nlattr**,int,int*,int) ;} ;


 int EAGAIN ;
 int EINTR ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int IPSET_ATTR_CMD_MAX ;
 size_t IPSET_ATTR_LINENO ;
 int IPSET_ERR_EXIST ;
 int IPSET_FLAG_EXIST ;
 int MSG_DONTWAIT ;
 TYPE_2__ NETLINK_CB (struct sk_buff*) ;
 int NLMSG_ERROR ;
 int NLMSG_SPACE (int) ;
 struct nlmsghdr* __nlmsg_put (struct sk_buff*,int ,int ,int ,size_t,int ) ;
 int ip_set_adt_policy ;
 int memcpy (int *,struct nlmsghdr*,scalar_t__) ;
 int netlink_unicast (struct sock*,struct sk_buff*,int ,int ) ;
 int* nla_data (struct nlattr*) ;
 int nla_parse (struct nlattr**,int ,struct nlattr*,scalar_t__,int ) ;
 struct nlmsgerr* nlmsg_data (struct nlmsghdr*) ;
 struct nlmsghdr* nlmsg_hdr (struct sk_buff*) ;
 int nlmsg_len (struct nlmsghdr*) ;
 struct sk_buff* nlmsg_new (size_t,int ) ;
 int stub1 (struct ip_set*,int ) ;
 int stub2 (struct ip_set*,struct nlattr**,int,int*,int) ;
 int write_lock_bh (int *) ;
 int write_unlock_bh (int *) ;

__attribute__((used)) static int
call_ad(struct sock *ctnl, struct sk_buff *skb, struct ip_set *set,
 struct nlattr *tb[], enum ipset_adt adt,
 u32 flags, bool use_lineno)
{
 int ret, retried = 0;
 u32 lineno = 0;
 bool eexist = flags & IPSET_FLAG_EXIST;

 do {
  write_lock_bh(&set->lock);
  ret = set->variant->uadt(set, tb, adt, &lineno, flags);
  write_unlock_bh(&set->lock);
 } while (ret == -EAGAIN &&
   set->variant->resize &&
   (ret = set->variant->resize(set, retried++)) == 0);

 if (!ret || (ret == -IPSET_ERR_EXIST && eexist))
  return 0;
 if (lineno && use_lineno) {

  struct nlmsghdr *rep, *nlh = nlmsg_hdr(skb);
  struct sk_buff *skb2;
  struct nlmsgerr *errmsg;
  size_t payload = sizeof(*errmsg) + nlmsg_len(nlh);
  int min_len = NLMSG_SPACE(sizeof(struct nfgenmsg));
  struct nlattr *cda[IPSET_ATTR_CMD_MAX+1];
  struct nlattr *cmdattr;
  u32 *errline;

  skb2 = nlmsg_new(payload, GFP_KERNEL);
  if (skb2 == ((void*)0))
   return -ENOMEM;
  rep = __nlmsg_put(skb2, NETLINK_CB(skb).pid,
      nlh->nlmsg_seq, NLMSG_ERROR, payload, 0);
  errmsg = nlmsg_data(rep);
  errmsg->error = ret;
  memcpy(&errmsg->msg, nlh, nlh->nlmsg_len);
  cmdattr = (void *)&errmsg->msg + min_len;

  nla_parse(cda, IPSET_ATTR_CMD_MAX,
     cmdattr, nlh->nlmsg_len - min_len,
     ip_set_adt_policy);

  errline = nla_data(cda[IPSET_ATTR_LINENO]);

  *errline = lineno;

  netlink_unicast(ctnl, skb2, NETLINK_CB(skb).pid, MSG_DONTWAIT);

  return -EINTR;
 }

 return ret;
}
