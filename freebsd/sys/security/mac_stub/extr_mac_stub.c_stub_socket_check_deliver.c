
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int dummy; } ;
struct mbuf {int dummy; } ;
struct label {int dummy; } ;


 int SOCK_LOCK (struct socket*) ;
 int SOCK_UNLOCK (struct socket*) ;

__attribute__((used)) static int
stub_socket_check_deliver(struct socket *so, struct label *solabel,
    struct mbuf *m, struct label *mlabel)
{






 return (0);
}
