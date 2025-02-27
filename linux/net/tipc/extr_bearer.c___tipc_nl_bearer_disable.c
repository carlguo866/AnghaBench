
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tipc_bearer {int dummy; } ;
struct sk_buff {int sk; } ;
struct nlattr {int dummy; } ;
struct net {int dummy; } ;
struct genl_info {int extack; int * attrs; } ;


 int EINVAL ;
 size_t TIPC_NLA_BEARER ;
 int TIPC_NLA_BEARER_MAX ;
 size_t TIPC_NLA_BEARER_NAME ;
 int bearer_disable (struct net*,struct tipc_bearer*) ;
 char* nla_data (struct nlattr*) ;
 int nla_parse_nested_deprecated (struct nlattr**,int ,int ,int ,int ) ;
 struct net* sock_net (int ) ;
 struct tipc_bearer* tipc_bearer_find (struct net*,char*) ;
 int tipc_nl_bearer_policy ;

int __tipc_nl_bearer_disable(struct sk_buff *skb, struct genl_info *info)
{
 int err;
 char *name;
 struct tipc_bearer *bearer;
 struct nlattr *attrs[TIPC_NLA_BEARER_MAX + 1];
 struct net *net = sock_net(skb->sk);

 if (!info->attrs[TIPC_NLA_BEARER])
  return -EINVAL;

 err = nla_parse_nested_deprecated(attrs, TIPC_NLA_BEARER_MAX,
       info->attrs[TIPC_NLA_BEARER],
       tipc_nl_bearer_policy, info->extack);
 if (err)
  return err;

 if (!attrs[TIPC_NLA_BEARER_NAME])
  return -EINVAL;

 name = nla_data(attrs[TIPC_NLA_BEARER_NAME]);

 bearer = tipc_bearer_find(net, name);
 if (!bearer)
  return -EINVAL;

 bearer_disable(net, bearer);

 return 0;
}
