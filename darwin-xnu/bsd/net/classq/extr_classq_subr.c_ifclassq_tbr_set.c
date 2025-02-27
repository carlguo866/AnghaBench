
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int64_t ;
typedef int u_int32_t ;
struct timespec {int member_1; int member_0; } ;
struct tb_regulator {int tbr_rate_raw; int tbr_percent; int tbr_rate; int tbr_depth; int tbr_filluptime; int tbr_token; int tbr_last; } ;
struct tb_profile {int rate; int percent; int depth; } ;
struct TYPE_2__ {int eff_bw; } ;
struct ifnet {int if_mtu; int if_flags; TYPE_1__ if_output_bw; } ;
struct ifclassq {int ifcq_flags; struct tb_regulator ifcq_tbr; struct ifnet* ifcq_ifp; } ;
typedef int int64_t ;
typedef scalar_t__ boolean_t ;


 int CLASSQ_EV_LINK_BANDWIDTH ;
 int EINVAL ;
 int ENODEV ;
 int ENOENT ;
 int IFCQF_TBR ;
 int IFCQ_IS_READY (struct ifclassq*) ;
 int IFCQ_LOCK_ASSERT_HELD (struct ifclassq*) ;
 int IFCQ_TBR_IS_ENABLED (struct ifclassq*) ;
 int IFF_UP ;
 int IF_MINMTU ;
 int NSEC_PER_MSEC ;
 int TBR_SCALE (int) ;
 int TBR_UNSCALE (int) ;
 int VERIFY (int) ;
 int bzero (struct tb_regulator*,int) ;
 char* if_name (struct ifnet*) ;
 int ifclassq_update (struct ifclassq*,int ) ;
 int ifnet_set_start_cycle (struct ifnet*,struct timespec*) ;
 int machclk_freq ;
 int pktsched_abs_to_nsecs (int) ;
 int pktsched_nsecs_to_abstime (int) ;
 scalar_t__ pktsched_verbose ;
 int printf (char*,char*,...) ;
 int read_machclk () ;

int
ifclassq_tbr_set(struct ifclassq *ifq, struct tb_profile *profile,
    boolean_t update)
{
 struct tb_regulator *tbr;
 struct ifnet *ifp = ifq->ifcq_ifp;
 u_int64_t rate, old_rate;

 IFCQ_LOCK_ASSERT_HELD(ifq);
 VERIFY(IFCQ_IS_READY(ifq));

 VERIFY(machclk_freq != 0);

 tbr = &ifq->ifcq_tbr;
 old_rate = tbr->tbr_rate_raw;

 rate = profile->rate;
 if (profile->percent > 0) {
  u_int64_t eff_rate;

  if (profile->percent > 100)
   return (EINVAL);
  if ((eff_rate = ifp->if_output_bw.eff_bw) == 0)
   return (ENODEV);
  rate = (eff_rate * profile->percent) / 100;
 }

 if (rate == 0) {
  if (!IFCQ_TBR_IS_ENABLED(ifq))
   return (ENOENT);

  if (pktsched_verbose)
   printf("%s: TBR disabled\n", if_name(ifp));


  ifq->ifcq_flags &= ~IFCQF_TBR;
  bzero(tbr, sizeof (*tbr));
  ifnet_set_start_cycle(ifp, ((void*)0));
  if (update)
   ifclassq_update(ifq, CLASSQ_EV_LINK_BANDWIDTH);
  return (0);
 }

 if (pktsched_verbose) {
  printf("%s: TBR %s (rate %llu bps depth %u)\n", if_name(ifp),
      (ifq->ifcq_flags & IFCQF_TBR) ? "reconfigured" :
      "enabled", rate, profile->depth);
 }


 bzero(tbr, sizeof (*tbr));
 tbr->tbr_rate_raw = rate;
 tbr->tbr_percent = profile->percent;
 ifq->ifcq_flags |= IFCQF_TBR;
 tbr->tbr_rate = TBR_SCALE(rate / 8) / machclk_freq;
 if (tbr->tbr_rate > 0) {
  u_int32_t mtu = ifp->if_mtu;
  int64_t ival, idepth = 0;
  int i;

  if (mtu < IF_MINMTU)
   mtu = IF_MINMTU;

  ival = pktsched_nsecs_to_abstime(10 * NSEC_PER_MSEC);

  for (i = 1; ; i++) {
   idepth = TBR_SCALE(i * mtu);
   if ((idepth / tbr->tbr_rate) > ival)
    break;
  }
  VERIFY(idepth > 0);

  tbr->tbr_depth = TBR_SCALE(profile->depth);
  if (tbr->tbr_depth == 0) {
   tbr->tbr_filluptime = idepth / tbr->tbr_rate;

   tbr->tbr_depth = idepth + (idepth >> 3);
  } else {
   tbr->tbr_filluptime = tbr->tbr_depth / tbr->tbr_rate;
  }
 } else {
  tbr->tbr_depth = TBR_SCALE(profile->depth);
  tbr->tbr_filluptime = 0xffffffffffffffffLL;
 }
 tbr->tbr_token = tbr->tbr_depth;
 tbr->tbr_last = read_machclk();

 if (tbr->tbr_rate > 0 && (ifp->if_flags & IFF_UP)) {
  struct timespec ts =
      { 0, pktsched_abs_to_nsecs(tbr->tbr_filluptime) };
  if (pktsched_verbose) {
   printf("%s: TBR calculated tokens %lld "
       "filluptime %llu ns\n", if_name(ifp),
       TBR_UNSCALE(tbr->tbr_token),
       pktsched_abs_to_nsecs(tbr->tbr_filluptime));
  }
  ifnet_set_start_cycle(ifp, &ts);
 } else {
  if (pktsched_verbose) {
   if (tbr->tbr_rate == 0) {
    printf("%s: TBR calculated tokens %lld "
        "infinite filluptime\n", if_name(ifp),
        TBR_UNSCALE(tbr->tbr_token));
   } else if (!(ifp->if_flags & IFF_UP)) {
    printf("%s: TBR suspended (link is down)\n",
        if_name(ifp));
   }
  }
  ifnet_set_start_cycle(ifp, ((void*)0));
 }
 if (update && tbr->tbr_rate_raw != old_rate)
  ifclassq_update(ifq, CLASSQ_EV_LINK_BANDWIDTH);

 return (0);
}
