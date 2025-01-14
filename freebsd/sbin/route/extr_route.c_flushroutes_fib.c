
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {scalar_t__ sa_family; } ;
struct rt_msghdr {int rtm_msglen; int rtm_flags; int rtm_seq; int rtm_type; } ;


 int AF_UNSPEC ;
 int CTL_NET ;
 scalar_t__ ENOMEM ;
 scalar_t__ EPERM ;
 int EX_OSERR ;
 int NET_RT_DUMP ;
 int PF_ROUTE ;
 int RTF_GATEWAY ;
 int RTF_HOST ;
 int RTM_DELETE ;
 int SA_SIZE (struct sockaddr*) ;
 scalar_t__ af ;
 scalar_t__ debugonly ;
 int err (int,char*) ;
 scalar_t__ errno ;
 int errx (int,char*) ;
 int free (char*) ;
 char* malloc (size_t) ;
 char* netname (struct sockaddr*) ;
 int nitems (int*) ;
 int print_rtmsg (struct rt_msghdr*,int) ;
 int printf (char*,...) ;
 scalar_t__ qflag ;
 char* routename (struct sockaddr*) ;
 int s ;
 int set_sofib (int) ;
 int sleep (int) ;
 scalar_t__ sysctl (int*,int ,char*,size_t*,int *,int ) ;
 scalar_t__ verbose ;
 int warn (char*,...) ;
 int warnx (char*) ;
 int write (int ,char*,int) ;

__attribute__((used)) static int
flushroutes_fib(int fib)
{
 struct rt_msghdr *rtm;
 size_t needed;
 char *buf, *next, *lim;
 int mib[7], rlen, seqno, count = 0;
 int error;

 error = set_sofib(fib);
 if (error) {
  warn("fib number %d is ignored", fib);
  return (error);
 }

retry:
 mib[0] = CTL_NET;
 mib[1] = PF_ROUTE;
 mib[2] = 0;
 mib[3] = AF_UNSPEC;
 mib[4] = NET_RT_DUMP;
 mib[5] = 0;
 mib[6] = fib;
 if (sysctl(mib, nitems(mib), ((void*)0), &needed, ((void*)0), 0) < 0)
  err(EX_OSERR, "route-sysctl-estimate");
 if ((buf = malloc(needed)) == ((void*)0))
  errx(EX_OSERR, "malloc failed");
 if (sysctl(mib, nitems(mib), buf, &needed, ((void*)0), 0) < 0) {
  if (errno == ENOMEM && count++ < 10) {
   warnx("Routing table grew, retrying");
   sleep(1);
   free(buf);
   goto retry;
  }
  err(EX_OSERR, "route-sysctl-get");
 }
 lim = buf + needed;
 if (verbose)
  (void)printf("Examining routing table from sysctl\n");
 seqno = 0;
 for (next = buf; next < lim; next += rtm->rtm_msglen) {
  rtm = (struct rt_msghdr *)(void *)next;
  if (verbose)
   print_rtmsg(rtm, rtm->rtm_msglen);
  if ((rtm->rtm_flags & RTF_GATEWAY) == 0)
   continue;
  if (af != 0) {
   struct sockaddr *sa = (struct sockaddr *)(rtm + 1);

   if (sa->sa_family != af)
    continue;
  }
  if (debugonly)
   continue;
  rtm->rtm_type = RTM_DELETE;
  rtm->rtm_seq = seqno;
  rlen = write(s, next, rtm->rtm_msglen);
  if (rlen < 0 && errno == EPERM)
   err(1, "write to routing socket");
  if (rlen < (int)rtm->rtm_msglen) {
   warn("write to routing socket");
   (void)printf("got only %d for rlen\n", rlen);
   free(buf);
   goto retry;
   break;
  }
  seqno++;
  if (qflag)
   continue;
  if (verbose)
   print_rtmsg(rtm, rlen);
  else {
   struct sockaddr *sa = (struct sockaddr *)(rtm + 1);

   printf("%-20.20s ", rtm->rtm_flags & RTF_HOST ?
       routename(sa) : netname(sa));
   sa = (struct sockaddr *)(SA_SIZE(sa) + (char *)sa);
   printf("%-20.20s ", routename(sa));
   if (fib >= 0)
    printf("-fib %-3d ", fib);
   printf("done\n");
  }
 }
 free(buf);
 return (error);
}
