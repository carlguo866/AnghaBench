
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int dummy; } ;
struct route {int dummy; } ;
struct mbuf {int dummy; } ;
struct ifnet {int dummy; } ;


 int m_freem (struct mbuf*) ;

__attribute__((used)) static int
enc_output(struct ifnet *ifp, struct mbuf *m, const struct sockaddr *dst,
    struct route *ro)
{

 m_freem(m);
 return (0);
}
