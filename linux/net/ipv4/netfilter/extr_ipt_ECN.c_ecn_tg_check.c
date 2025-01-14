
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xt_tgchk_param {struct ipt_entry* entryinfo; struct ipt_ECN_info* targinfo; } ;
struct TYPE_2__ {scalar_t__ proto; int invflags; } ;
struct ipt_entry {TYPE_1__ ip; } ;
struct ipt_ECN_info {int operation; int ip_ect; } ;


 int EINVAL ;
 scalar_t__ IPPROTO_TCP ;
 int IPT_ECN_IP_MASK ;
 int IPT_ECN_OP_MASK ;
 int IPT_ECN_OP_SET_CWR ;
 int IPT_ECN_OP_SET_ECE ;
 int XT_INV_PROTO ;
 int pr_info_ratelimited (char*) ;

__attribute__((used)) static int ecn_tg_check(const struct xt_tgchk_param *par)
{
 const struct ipt_ECN_info *einfo = par->targinfo;
 const struct ipt_entry *e = par->entryinfo;

 if (einfo->operation & IPT_ECN_OP_MASK)
  return -EINVAL;

 if (einfo->ip_ect & ~IPT_ECN_IP_MASK)
  return -EINVAL;

 if ((einfo->operation & (IPT_ECN_OP_SET_ECE|IPT_ECN_OP_SET_CWR)) &&
     (e->ip.proto != IPPROTO_TCP || (e->ip.invflags & XT_INV_PROTO))) {
  pr_info_ratelimited("cannot use operation on non-tcp rule\n");
  return -EINVAL;
 }
 return 0;
}
