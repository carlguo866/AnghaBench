
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union nf_inet_addr {int dummy; } nf_inet_addr ;
struct sk_buff {int dummy; } ;
struct ip_vs_sh_state {int dummy; } ;
struct ip_vs_service {int flags; int af; scalar_t__ sched_data; } ;
struct ip_vs_iphdr {union nf_inet_addr saddr; union nf_inet_addr daddr; } ;
struct ip_vs_dest {int port; union nf_inet_addr const addr; int af; } ;
typedef int __be16 ;


 int IP_VS_DBG (int,char*) ;
 int IP_VS_DBG_ADDR (int ,union nf_inet_addr const*) ;
 int IP_VS_DBG_BUF (int,char*,int ,int ,int ) ;
 int IP_VS_SVC_F_SCHED_SH_FALLBACK ;
 int IP_VS_SVC_F_SCHED_SH_PORT ;
 scalar_t__ ip_vs_iph_inverse (struct ip_vs_iphdr*) ;
 int ip_vs_scheduler_err (struct ip_vs_service*,char*) ;
 struct ip_vs_dest* ip_vs_sh_get (struct ip_vs_service*,struct ip_vs_sh_state*,union nf_inet_addr const*,int ) ;
 struct ip_vs_dest* ip_vs_sh_get_fallback (struct ip_vs_service*,struct ip_vs_sh_state*,union nf_inet_addr const*,int ) ;
 int ip_vs_sh_get_port (struct sk_buff const*,struct ip_vs_iphdr*) ;
 int ntohs (int ) ;

__attribute__((used)) static struct ip_vs_dest *
ip_vs_sh_schedule(struct ip_vs_service *svc, const struct sk_buff *skb,
    struct ip_vs_iphdr *iph)
{
 struct ip_vs_dest *dest;
 struct ip_vs_sh_state *s;
 __be16 port = 0;
 const union nf_inet_addr *hash_addr;

 hash_addr = ip_vs_iph_inverse(iph) ? &iph->daddr : &iph->saddr;

 IP_VS_DBG(6, "ip_vs_sh_schedule(): Scheduling...\n");

 if (svc->flags & IP_VS_SVC_F_SCHED_SH_PORT)
  port = ip_vs_sh_get_port(skb, iph);

 s = (struct ip_vs_sh_state *) svc->sched_data;

 if (svc->flags & IP_VS_SVC_F_SCHED_SH_FALLBACK)
  dest = ip_vs_sh_get_fallback(svc, s, hash_addr, port);
 else
  dest = ip_vs_sh_get(svc, s, hash_addr, port);

 if (!dest) {
  ip_vs_scheduler_err(svc, "no destination available");
  return ((void*)0);
 }

 IP_VS_DBG_BUF(6, "SH: source IP address %s --> server %s:%d\n",
        IP_VS_DBG_ADDR(svc->af, hash_addr),
        IP_VS_DBG_ADDR(dest->af, &dest->addr),
        ntohs(dest->port));

 return dest;
}
