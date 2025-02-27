
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pollfd {int revents; int fd; int events; } ;
struct cf_conn {int strm_stat; int last_recv_time; scalar_t__ nonblock; } ;
struct TYPE_2__ {int xp_fd; scalar_t__ xp_p1; } ;
typedef TYPE_1__ SVCXPRT ;


 scalar_t__ EAGAIN ;
 scalar_t__ EINTR ;
 int POLLIN ;
 int XPRT_DIED ;
 int _poll (struct pollfd*,int,int) ;
 int _read (int,void*,size_t) ;
 int assert (int ) ;
 scalar_t__ errno ;
 int gettimeofday (int *,int *) ;

__attribute__((used)) static int
read_vc(void *xprtp, void *buf, int len)
{
 SVCXPRT *xprt;
 int sock;
 int milliseconds = 35 * 1000;
 struct pollfd pollfd;
 struct cf_conn *cfp;

 xprt = (SVCXPRT *)xprtp;
 assert(xprt != ((void*)0));

 sock = xprt->xp_fd;

 cfp = (struct cf_conn *)xprt->xp_p1;

 if (cfp->nonblock) {
  len = _read(sock, buf, (size_t)len);
  if (len < 0) {
   if (errno == EAGAIN)
    len = 0;
   else
    goto fatal_err;
  }
  if (len != 0)
   gettimeofday(&cfp->last_recv_time, ((void*)0));
  return len;
 }

 do {
  pollfd.fd = sock;
  pollfd.events = POLLIN;
  pollfd.revents = 0;
  switch (_poll(&pollfd, 1, milliseconds)) {
  case -1:
   if (errno == EINTR)
    continue;

  case 0:
   goto fatal_err;

  default:
   break;
  }
 } while ((pollfd.revents & POLLIN) == 0);

 if ((len = _read(sock, buf, (size_t)len)) > 0) {
  gettimeofday(&cfp->last_recv_time, ((void*)0));
  return (len);
 }

fatal_err:
 ((struct cf_conn *)(xprt->xp_p1))->strm_stat = XPRT_DIED;
 return (-1);
}
