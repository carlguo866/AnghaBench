
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vsock_sock {int pending_links; } ;
struct sock {int dummy; } ;


 int list_empty (int *) ;
 struct vsock_sock* vsock_sk (struct sock*) ;

__attribute__((used)) static bool vsock_is_pending(struct sock *sk)
{
 struct vsock_sock *vsk = vsock_sk(sk);
 return !list_empty(&vsk->pending_links);
}
