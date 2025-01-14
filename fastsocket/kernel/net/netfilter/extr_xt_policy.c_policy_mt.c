
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xt_policy_info {int flags; } ;
struct xt_match_param {TYPE_1__* match; struct xt_policy_info* matchinfo; } ;
struct sk_buff {int dummy; } ;
struct TYPE_2__ {int family; } ;


 int XT_POLICY_MATCH_IN ;
 int XT_POLICY_MATCH_NONE ;
 int match_policy_in (struct sk_buff const*,struct xt_policy_info const*,int ) ;
 int match_policy_out (struct sk_buff const*,struct xt_policy_info const*,int ) ;

__attribute__((used)) static bool
policy_mt(const struct sk_buff *skb, const struct xt_match_param *par)
{
 const struct xt_policy_info *info = par->matchinfo;
 int ret;

 if (info->flags & XT_POLICY_MATCH_IN)
  ret = match_policy_in(skb, info, par->match->family);
 else
  ret = match_policy_out(skb, info, par->match->family);

 if (ret < 0)
  ret = info->flags & XT_POLICY_MATCH_NONE ? 1 : 0;
 else if (info->flags & XT_POLICY_MATCH_NONE)
  ret = 0;

 return ret;
}
