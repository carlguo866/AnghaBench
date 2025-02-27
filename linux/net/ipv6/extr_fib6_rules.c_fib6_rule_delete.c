
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ fib6_rules_require_fldissect; } ;
struct net {TYPE_1__ ipv6; } ;
struct fib_rule {struct net* fr_net; } ;


 scalar_t__ fib_rule_requires_fldissect (struct fib_rule*) ;

__attribute__((used)) static int fib6_rule_delete(struct fib_rule *rule)
{
 struct net *net = rule->fr_net;

 if (net->ipv6.fib6_rules_require_fldissect &&
     fib_rule_requires_fldissect(rule))
  net->ipv6.fib6_rules_require_fldissect--;

 return 0;
}
