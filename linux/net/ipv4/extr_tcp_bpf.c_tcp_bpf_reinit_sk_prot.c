
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {scalar_t__ sk_family; int * sk_prot; } ;
struct TYPE_2__ {scalar_t__ msg_parser; } ;
struct sk_psock {TYPE_1__ progs; } ;


 scalar_t__ AF_INET6 ;
 int TCP_BPF_BASE ;
 int TCP_BPF_IPV4 ;
 int TCP_BPF_IPV6 ;
 int TCP_BPF_TX ;
 int ** tcp_bpf_prots ;

__attribute__((used)) static void tcp_bpf_reinit_sk_prot(struct sock *sk, struct sk_psock *psock)
{
 int family = sk->sk_family == AF_INET6 ? TCP_BPF_IPV6 : TCP_BPF_IPV4;
 int config = psock->progs.msg_parser ? TCP_BPF_TX : TCP_BPF_BASE;





 sk->sk_prot = &tcp_bpf_prots[family][config];
}
