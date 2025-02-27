
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {struct sock* sk; } ;
struct sock {int dummy; } ;


 int atalk_destroy_socket (struct sock*) ;
 int sock_orphan (struct sock*) ;

__attribute__((used)) static int atalk_release(struct socket *sock)
{
 struct sock *sk = sock->sk;

 if (sk) {
  sock_orphan(sk);
  sock->sk = ((void*)0);
  atalk_destroy_socket(sk);
 }
 return 0;
}
