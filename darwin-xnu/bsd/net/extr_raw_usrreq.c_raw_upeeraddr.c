
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int dummy; } ;
struct sockaddr {int dummy; } ;
struct rawcb {scalar_t__ rcb_faddr; } ;


 int EINVAL ;
 int ENOTCONN ;
 struct sockaddr* dup_sockaddr (scalar_t__,int) ;
 struct rawcb* sotorawcb (struct socket*) ;

__attribute__((used)) static int
raw_upeeraddr(struct socket *so, struct sockaddr **nam)
{
 struct rawcb *rp = sotorawcb(so);

 if (rp == 0)
  return EINVAL;
 if (rp->rcb_faddr == 0) {
  return ENOTCONN;
 }
 *nam = dup_sockaddr(rp->rcb_faddr, 1);
 return 0;
}
