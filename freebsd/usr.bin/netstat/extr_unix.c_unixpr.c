
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_long ;
struct xunpgen {int xug_len; scalar_t__ xug_gen; scalar_t__ xug_count; } ;
struct xsocket {int dummy; } ;
struct xunpcb {scalar_t__ unp_gencnt; struct xsocket xu_socket; } ;





 int free (char*) ;
 scalar_t__ live ;
 int pcblist_kvm (scalar_t__,scalar_t__,scalar_t__,char**) ;
 int pcblist_sysctl (int,char**) ;
 int * socktype ;
 int unixdomainpr (struct xunpcb*,struct xsocket*) ;
 int xo_close_instance (char*) ;
 int xo_emit (char*,int ) ;
 int xo_open_instance (char*) ;
 int xo_open_list (char*) ;

void
unixpr(u_long count_off, u_long gencnt_off, u_long dhead_off, u_long shead_off,
    u_long sphead_off, bool *first)
{
 char *buf;
 int ret, type;
 struct xsocket *so;
 struct xunpgen *xug, *oxug;
 struct xunpcb *xunp;
 u_long head_off;

 buf = ((void*)0);
 for (type = 128; type <= 129; type++) {
  if (live)
   ret = pcblist_sysctl(type, &buf);
  else {
   head_off = 0;
   switch (type) {
   case 128:
    head_off = shead_off;
    break;

   case 130:
    head_off = dhead_off;
    break;

   case 129:
    head_off = sphead_off;
    break;
   }
   ret = pcblist_kvm(count_off, gencnt_off, head_off,
       &buf);
  }
  if (ret == -1)
   continue;
  if (ret < 0)
   return;

  oxug = xug = (struct xunpgen *)buf;
  for (xug = (struct xunpgen *)((char *)xug + xug->xug_len);
      xug->xug_len > sizeof(struct xunpgen);
      xug = (struct xunpgen *)((char *)xug + xug->xug_len)) {
   xunp = (struct xunpcb *)xug;
   so = &xunp->xu_socket;


   if (xunp->unp_gencnt > oxug->xug_gen)
    continue;
   if (*first) {
    xo_open_list("socket");
    *first = 0;
   }
   xo_open_instance("socket");
   unixdomainpr(xunp, so);
   xo_close_instance("socket");
  }
  if (xug != oxug && xug->xug_gen != oxug->xug_gen) {
   if (oxug->xug_count > xug->xug_count) {
    xo_emit("Some {:type/%s} sockets may have "
        "been {:action/deleted}.\n",
        socktype[type]);
   } else if (oxug->xug_count < xug->xug_count) {
    xo_emit("Some {:type/%s} sockets may have "
        "been {:action/created}.\n",
        socktype[type]);
   } else {
    xo_emit("Some {:type/%s} sockets may have "
        "been {:action/created or deleted}",
        socktype[type]);
   }
  }
  free(buf);
 }
}
