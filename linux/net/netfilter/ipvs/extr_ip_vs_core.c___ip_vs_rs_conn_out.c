
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct netns_ipvs {int dummy; } ;
struct ip_vs_service {int pe; } ;
struct ip_vs_pe {struct ip_vs_conn* (* conn_out ) (struct ip_vs_service*,struct ip_vs_dest*,struct sk_buff*,struct ip_vs_iphdr const*,int ,int ) ;} ;
struct ip_vs_iphdr {int saddr; int protocol; int len; } ;
struct ip_vs_dest {int svc; } ;
struct ip_vs_conn {int dummy; } ;
typedef int _ports ;
typedef int __be16 ;


 unsigned int NF_INET_LOCAL_IN ;
 int * frag_safe_skb_hp (struct sk_buff*,int ,int,int *) ;
 struct ip_vs_dest* ip_vs_find_real_service (struct netns_ipvs*,int,int ,int *,int ) ;
 void* rcu_dereference (int ) ;
 struct ip_vs_conn* stub1 (struct ip_vs_service*,struct ip_vs_dest*,struct sk_buff*,struct ip_vs_iphdr const*,int ,int ) ;

__attribute__((used)) static struct ip_vs_conn *__ip_vs_rs_conn_out(unsigned int hooknum,
           struct netns_ipvs *ipvs,
           int af, struct sk_buff *skb,
           const struct ip_vs_iphdr *iph)
{
 struct ip_vs_dest *dest;
 struct ip_vs_conn *cp = ((void*)0);
 __be16 _ports[2], *pptr;

 if (hooknum == NF_INET_LOCAL_IN)
  return ((void*)0);

 pptr = frag_safe_skb_hp(skb, iph->len,
    sizeof(_ports), _ports);
 if (!pptr)
  return ((void*)0);

 dest = ip_vs_find_real_service(ipvs, af, iph->protocol,
           &iph->saddr, pptr[0]);
 if (dest) {
  struct ip_vs_service *svc;
  struct ip_vs_pe *pe;

  svc = rcu_dereference(dest->svc);
  if (svc) {
   pe = rcu_dereference(svc->pe);
   if (pe && pe->conn_out)
    cp = pe->conn_out(svc, dest, skb, iph,
        pptr[0], pptr[1]);
  }
 }

 return cp;
}
