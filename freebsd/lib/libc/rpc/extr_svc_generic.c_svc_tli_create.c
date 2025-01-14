
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int u_int ;
struct TYPE_9__ {scalar_t__ buf; } ;
struct t_bind {scalar_t__ qlen; TYPE_1__ addr; } ;
struct sockaddr_storage {scalar_t__ ss_len; int ss_family; } ;
struct sockaddr {int dummy; } ;
struct netconfig {int nc_device; int nc_netid; int nc_protofmly; } ;
struct __rpc_sockinfo {int si_socktype; scalar_t__ si_alen; int si_af; } ;
typedef int socklen_t ;
typedef scalar_t__ bool_t ;
struct TYPE_10__ {int xp_fd; void* xp_tp; void* xp_netid; int xp_type; } ;
typedef TYPE_2__ SVCXPRT ;


 scalar_t__ FALSE ;
 int RPC_ANYFD ;


 int SOMAXCONN ;
 int SVC_DESTROY (TYPE_2__*) ;
 scalar_t__ TRUE ;
 int __rpc_fd2sockinfo (int,struct __rpc_sockinfo*) ;
 int __rpc_nconf2fd (struct netconfig const*) ;
 int __rpc_nconf2sockinfo (struct netconfig const*,struct __rpc_sockinfo*) ;
 int __rpc_sockisbound (int) ;
 int __rpc_socktype2seman (int) ;
 int __svc_vc_setflag (TYPE_2__*,scalar_t__) ;
 scalar_t__ _bind (int,struct sockaddr*,int) ;
 int _close (int) ;
 int _getpeername (int,struct sockaddr*,int*) ;
 int _listen (int,int) ;
 scalar_t__ bindresvport (int,int *) ;
 int memset (struct sockaddr_storage*,int ,int) ;
 int strcmp (int ,char*) ;
 void* strdup (int ) ;
 TYPE_2__* svc_dg_create (int,int ,int ) ;
 TYPE_2__* svc_fd_create (int,int ,int ) ;
 TYPE_2__* svc_vc_create (int,int ,int ) ;
 int warnx (char*,...) ;

SVCXPRT *
svc_tli_create(int fd, const struct netconfig *nconf,
    const struct t_bind *bindaddr, u_int sendsz, u_int recvsz)
{
 SVCXPRT *xprt = ((void*)0);
 bool_t madefd = FALSE;
 struct __rpc_sockinfo si;
 struct sockaddr_storage ss;
 socklen_t slen;

 if (fd == RPC_ANYFD) {
  if (nconf == ((void*)0)) {
   warnx("svc_tli_create: invalid netconfig");
   return (((void*)0));
  }
  fd = __rpc_nconf2fd(nconf);
  if (fd == -1) {
   warnx(
       "svc_tli_create: could not open connection for %s",
     nconf->nc_netid);
   return (((void*)0));
  }
  __rpc_nconf2sockinfo(nconf, &si);
  madefd = TRUE;
 } else {



  if (!__rpc_fd2sockinfo(fd, &si)) {
   warnx(
  "svc_tli_create: could not get transport information");
   return (((void*)0));
  }
 }




 if (madefd || !__rpc_sockisbound(fd)) {
  if (bindaddr == ((void*)0)) {
   if (bindresvport(fd, ((void*)0)) < 0) {
    memset(&ss, 0, sizeof ss);
    ss.ss_family = si.si_af;
    ss.ss_len = si.si_alen;
    if (_bind(fd, (struct sockaddr *)(void *)&ss,
        (socklen_t)si.si_alen) < 0) {
     warnx(
   "svc_tli_create: could not bind to anonymous port");
     goto freedata;
    }
   }
   _listen(fd, SOMAXCONN);
  } else {
   if (_bind(fd,
       (struct sockaddr *)bindaddr->addr.buf,
       (socklen_t)si.si_alen) < 0) {
    warnx(
  "svc_tli_create: could not bind to requested address");
    goto freedata;
   }
   _listen(fd, (int)bindaddr->qlen);
  }

 }



 switch (si.si_socktype) {
  case 128:
   slen = sizeof ss;
   if (_getpeername(fd, (struct sockaddr *)(void *)&ss, &slen)
       == 0) {

    xprt = svc_fd_create(fd, sendsz, recvsz);
   } else
    xprt = svc_vc_create(fd, sendsz, recvsz);
   if (!nconf || !xprt)
    break;






   break;
  case 129:
   xprt = svc_dg_create(fd, sendsz, recvsz);
   break;
  default:
   warnx("svc_tli_create: bad service type");
   goto freedata;
 }

 if (xprt == ((void*)0))




  goto freedata;


 xprt->xp_type = __rpc_socktype2seman(si.si_socktype);

 if (nconf) {
  xprt->xp_netid = strdup(nconf->nc_netid);
  xprt->xp_tp = strdup(nconf->nc_device);
 }
 return (xprt);

freedata:
 if (madefd)
  (void)_close(fd);
 if (xprt) {
  if (!madefd)
   xprt->xp_fd = RPC_ANYFD;
  SVC_DESTROY(xprt);
 }
 return (((void*)0));
}
