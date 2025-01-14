
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u_short ;
typedef scalar_t__ u_int ;
struct sockaddr_storage {scalar_t__ ss_len; } ;
struct sockaddr {int dummy; } ;
struct TYPE_4__ {int maxlen; } ;
struct TYPE_3__ {int * buf; scalar_t__ len; scalar_t__ maxlen; } ;
struct cf_rendezvous {int xp_fd; TYPE_2__ xp_rtaddr; TYPE_1__ xp_ltaddr; scalar_t__ xp_port; int xp_verf; struct cf_rendezvous* xp_p1; int maxrec; void* recvsize; void* sendsize; } ;
struct __rpc_sockinfo {int si_proto; int si_af; } ;
typedef int socklen_t ;
typedef struct cf_rendezvous SVCXPRT ;


 int __rpc_fd2sockinfo (int,struct __rpc_sockinfo*) ;
 void* __rpc_get_t_size (int ,int ,int) ;
 int __svc_maxrec ;
 scalar_t__ _getsockname (int,struct sockaddr*,int*) ;
 int _null_auth ;
 void* mem_alloc (size_t) ;
 int mem_free (struct cf_rendezvous*,int) ;
 int memcpy (int *,struct sockaddr_storage*,size_t) ;
 int svc_vc_rendezvous_ops (struct cf_rendezvous*) ;
 struct cf_rendezvous* svc_xprt_alloc () ;
 int warnx (char*) ;
 int xprt_register (struct cf_rendezvous*) ;

SVCXPRT *
svc_vc_create(int fd, u_int sendsize, u_int recvsize)
{
 SVCXPRT *xprt = ((void*)0);
 struct cf_rendezvous *r = ((void*)0);
 struct __rpc_sockinfo si;
 struct sockaddr_storage sslocal;
 socklen_t slen;

 if (!__rpc_fd2sockinfo(fd, &si))
  return ((void*)0);

 r = mem_alloc(sizeof(*r));
 if (r == ((void*)0)) {
  warnx("svc_vc_create: out of memory");
  goto cleanup_svc_vc_create;
 }
 r->sendsize = __rpc_get_t_size(si.si_af, si.si_proto, (int)sendsize);
 r->recvsize = __rpc_get_t_size(si.si_af, si.si_proto, (int)recvsize);
 r->maxrec = __svc_maxrec;
 xprt = svc_xprt_alloc();
 if (xprt == ((void*)0)) {
  warnx("svc_vc_create: out of memory");
  goto cleanup_svc_vc_create;
 }
 xprt->xp_p1 = r;
 xprt->xp_verf = _null_auth;
 svc_vc_rendezvous_ops(xprt);
 xprt->xp_port = (u_short)-1;
 xprt->xp_fd = fd;

 slen = sizeof (struct sockaddr_storage);
 if (_getsockname(fd, (struct sockaddr *)(void *)&sslocal, &slen) < 0) {
  warnx("svc_vc_create: could not retrieve local addr");
  goto cleanup_svc_vc_create;
 }

 xprt->xp_ltaddr.maxlen = xprt->xp_ltaddr.len = sslocal.ss_len;
 xprt->xp_ltaddr.buf = mem_alloc((size_t)sslocal.ss_len);
 if (xprt->xp_ltaddr.buf == ((void*)0)) {
  warnx("svc_vc_create: no mem for local addr");
  goto cleanup_svc_vc_create;
 }
 memcpy(xprt->xp_ltaddr.buf, &sslocal, (size_t)sslocal.ss_len);

 xprt->xp_rtaddr.maxlen = sizeof (struct sockaddr_storage);
 xprt_register(xprt);
 return (xprt);
cleanup_svc_vc_create:
 if (xprt)
  mem_free(xprt, sizeof(*xprt));
 if (r != ((void*)0))
  mem_free(r, sizeof(*r));
 return (((void*)0));
}
