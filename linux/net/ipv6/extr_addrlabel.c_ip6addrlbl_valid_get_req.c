
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct nlmsghdr {scalar_t__ nlmsg_len; } ;
struct nlattr {int dummy; } ;
struct netlink_ext_ack {int dummy; } ;
struct ifaddrlblmsg {scalar_t__ ifal_seq; scalar_t__ ifal_flags; scalar_t__ __ifal_reserved; } ;


 int EINVAL ;

 int IFAL_MAX ;
 int NL_SET_ERR_MSG_MOD (struct netlink_ext_ack*,char*) ;
 int ifal_policy ;
 int netlink_strict_get_check (struct sk_buff*) ;
 struct ifaddrlblmsg* nlmsg_data (struct nlmsghdr const*) ;
 scalar_t__ nlmsg_msg_size (int) ;
 int nlmsg_parse_deprecated (struct nlmsghdr const*,int,struct nlattr**,int,int ,struct netlink_ext_ack*) ;
 int nlmsg_parse_deprecated_strict (struct nlmsghdr const*,int,struct nlattr**,int,int ,struct netlink_ext_ack*) ;

__attribute__((used)) static int ip6addrlbl_valid_get_req(struct sk_buff *skb,
        const struct nlmsghdr *nlh,
        struct nlattr **tb,
        struct netlink_ext_ack *extack)
{
 struct ifaddrlblmsg *ifal;
 int i, err;

 if (nlh->nlmsg_len < nlmsg_msg_size(sizeof(*ifal))) {
  NL_SET_ERR_MSG_MOD(extack, "Invalid header for addrlabel get request");
  return -EINVAL;
 }

 if (!netlink_strict_get_check(skb))
  return nlmsg_parse_deprecated(nlh, sizeof(*ifal), tb,
           IFAL_MAX, ifal_policy, extack);

 ifal = nlmsg_data(nlh);
 if (ifal->__ifal_reserved || ifal->ifal_flags || ifal->ifal_seq) {
  NL_SET_ERR_MSG_MOD(extack, "Invalid values in header for addrlabel get request");
  return -EINVAL;
 }

 err = nlmsg_parse_deprecated_strict(nlh, sizeof(*ifal), tb, IFAL_MAX,
         ifal_policy, extack);
 if (err)
  return err;

 for (i = 0; i <= IFAL_MAX; i++) {
  if (!tb[i])
   continue;

  switch (i) {
  case 128:
   break;
  default:
   NL_SET_ERR_MSG_MOD(extack, "Unsupported attribute in addrlabel get request");
   return -EINVAL;
  }
 }

 return 0;
}
