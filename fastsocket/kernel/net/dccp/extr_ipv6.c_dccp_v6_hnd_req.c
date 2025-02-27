
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sock {scalar_t__ sk_state; } ;
struct sk_buff {int dummy; } ;
struct request_sock {int dummy; } ;
struct ipv6hdr {int daddr; int saddr; } ;
struct dccp_hdr {int dccph_dport; int dccph_sport; } ;


 scalar_t__ DCCP_TIME_WAIT ;
 struct sock* __inet6_lookup_established (int ,int *,int *,int ,int *,int ,int ) ;
 int bh_lock_sock (struct sock*) ;
 struct sock* dccp_check_req (struct sock*,struct sk_buff*,struct request_sock*,struct request_sock**) ;
 int dccp_hashinfo ;
 struct dccp_hdr* dccp_hdr (struct sk_buff*) ;
 struct request_sock* inet6_csk_search_req (struct sock*,struct request_sock***,int ,int *,int *,int ) ;
 int inet6_iif (struct sk_buff*) ;
 int inet_twsk (struct sock*) ;
 int inet_twsk_put (int ) ;
 struct ipv6hdr* ipv6_hdr (struct sk_buff*) ;
 int ntohs (int ) ;
 int sock_net (struct sock*) ;

__attribute__((used)) static struct sock *dccp_v6_hnd_req(struct sock *sk,struct sk_buff *skb)
{
 const struct dccp_hdr *dh = dccp_hdr(skb);
 const struct ipv6hdr *iph = ipv6_hdr(skb);
 struct sock *nsk;
 struct request_sock **prev;

 struct request_sock *req = inet6_csk_search_req(sk, &prev,
       dh->dccph_sport,
       &iph->saddr,
       &iph->daddr,
       inet6_iif(skb));
 if (req != ((void*)0))
  return dccp_check_req(sk, skb, req, prev);

 nsk = __inet6_lookup_established(sock_net(sk), &dccp_hashinfo,
      &iph->saddr, dh->dccph_sport,
      &iph->daddr, ntohs(dh->dccph_dport),
      inet6_iif(skb));
 if (nsk != ((void*)0)) {
  if (nsk->sk_state != DCCP_TIME_WAIT) {
   bh_lock_sock(nsk);
   return nsk;
  }
  inet_twsk_put(inet_twsk(nsk));
  return ((void*)0);
 }

 return sk;
}
