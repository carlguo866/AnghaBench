
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xt_target_param {scalar_t__ hooknum; struct nf_nat_multi_range_compat* targinfo; } ;
struct sk_buff {int dummy; } ;
struct nf_nat_multi_range_compat {int * range; } ;
struct nf_conn {int dummy; } ;
typedef enum ip_conntrack_info { ____Placeholder_ip_conntrack_info } ip_conntrack_info ;


 int IP_CT_NEW ;
 int IP_CT_RELATED ;
 int IP_NAT_MANIP_DST ;
 int NF_CT_ASSERT (int) ;
 scalar_t__ NF_INET_LOCAL_OUT ;
 scalar_t__ NF_INET_PRE_ROUTING ;
 struct nf_conn* nf_ct_get (struct sk_buff*,int*) ;
 unsigned int nf_nat_setup_info (struct nf_conn*,int *,int ) ;

__attribute__((used)) static unsigned int
ipt_dnat_target(struct sk_buff *skb, const struct xt_target_param *par)
{
 struct nf_conn *ct;
 enum ip_conntrack_info ctinfo;
 const struct nf_nat_multi_range_compat *mr = par->targinfo;

 NF_CT_ASSERT(par->hooknum == NF_INET_PRE_ROUTING ||
       par->hooknum == NF_INET_LOCAL_OUT);

 ct = nf_ct_get(skb, &ctinfo);


 NF_CT_ASSERT(ct && (ctinfo == IP_CT_NEW || ctinfo == IP_CT_RELATED));

 return nf_nat_setup_info(ct, &mr->range[0], IP_NAT_MANIP_DST);
}
