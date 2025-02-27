
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {scalar_t__ type; } ;
struct sock {int dummy; } ;
struct net {int user_ns; } ;


 int CAP_NET_RAW ;
 int EAFNOSUPPORT ;
 int ENOMEM ;
 int EPERM ;
 int ESOCKTNOSUPPORT ;
 int GFP_KERNEL ;
 int PF_LLC ;
 scalar_t__ SOCK_DGRAM ;
 scalar_t__ SOCK_STREAM ;
 int init_net ;
 scalar_t__ likely (int) ;
 int llc_proto ;
 struct sock* llc_sk_alloc (struct net*,int ,int ,int *,int) ;
 int llc_ui_sk_init (struct socket*,struct sock*) ;
 int net_eq (struct net*,int *) ;
 int ns_capable (int ,int ) ;

__attribute__((used)) static int llc_ui_create(struct net *net, struct socket *sock, int protocol,
    int kern)
{
 struct sock *sk;
 int rc = -ESOCKTNOSUPPORT;

 if (!ns_capable(net->user_ns, CAP_NET_RAW))
  return -EPERM;

 if (!net_eq(net, &init_net))
  return -EAFNOSUPPORT;

 if (likely(sock->type == SOCK_DGRAM || sock->type == SOCK_STREAM)) {
  rc = -ENOMEM;
  sk = llc_sk_alloc(net, PF_LLC, GFP_KERNEL, &llc_proto, kern);
  if (sk) {
   rc = 0;
   llc_ui_sk_init(sock, sk);
  }
 }
 return rc;
}
