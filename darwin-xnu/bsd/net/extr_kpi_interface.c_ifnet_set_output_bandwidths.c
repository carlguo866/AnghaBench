
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int64_t ;
struct if_bandwidths {scalar_t__ eff_bw; scalar_t__ max_bw; } ;
struct TYPE_2__ {int max_bw; } ;
struct ifclassq {int dummy; } ;
struct ifnet {int if_baudrate; int if_link_status_lock; int * if_link_status; struct if_bandwidths if_output_bw; TYPE_1__ if_input_bw; struct ifclassq if_snd; } ;
typedef int errno_t ;
typedef int boolean_t ;


 int CLASSQ_EV_LINK_BANDWIDTH ;
 int IFCQ_LOCK (struct ifclassq*) ;
 int IFCQ_LOCK_ASSERT_HELD (struct ifclassq*) ;
 int IFCQ_UNLOCK (struct ifclassq*) ;
 scalar_t__ IFNET_IS_WIFI (struct ifnet*) ;
 int MAX (scalar_t__,int ) ;
 int VERIFY (int) ;
 int ifnet_set_link_status_outbw (struct ifnet*) ;
 int ifnet_update_sndq (struct ifclassq*,int ) ;
 int lck_rw_done (int *) ;
 int lck_rw_lock_exclusive (int *) ;

errno_t
ifnet_set_output_bandwidths(struct ifnet *ifp, struct if_bandwidths *bw,
    boolean_t locked)
{
 struct if_bandwidths old_bw;
 struct ifclassq *ifq;
 u_int64_t br;

 VERIFY(ifp != ((void*)0) && bw != ((void*)0));

 ifq = &ifp->if_snd;
 if (!locked)
  IFCQ_LOCK(ifq);
 IFCQ_LOCK_ASSERT_HELD(ifq);

 old_bw = ifp->if_output_bw;
 if (bw->eff_bw != 0)
  ifp->if_output_bw.eff_bw = bw->eff_bw;
 if (bw->max_bw != 0)
  ifp->if_output_bw.max_bw = bw->max_bw;
 if (ifp->if_output_bw.eff_bw > ifp->if_output_bw.max_bw)
  ifp->if_output_bw.max_bw = ifp->if_output_bw.eff_bw;
 else if (ifp->if_output_bw.eff_bw == 0)
  ifp->if_output_bw.eff_bw = ifp->if_output_bw.max_bw;


 br = MAX(ifp->if_output_bw.max_bw, ifp->if_input_bw.max_bw);
 if (br != 0)
  ifp->if_baudrate = (br > 0xFFFFFFFF) ? 0xFFFFFFFF : br;


 if (old_bw.eff_bw != ifp->if_output_bw.eff_bw ||
     old_bw.max_bw != ifp->if_output_bw.max_bw)
  ifnet_update_sndq(ifq, CLASSQ_EV_LINK_BANDWIDTH);

 if (!locked)
  IFCQ_UNLOCK(ifq);





 if (IFNET_IS_WIFI(ifp) && ifp->if_link_status != ((void*)0)) {
  lck_rw_lock_exclusive(&ifp->if_link_status_lock);
  ifnet_set_link_status_outbw(ifp);
  lck_rw_done(&ifp->if_link_status_lock);
 }

 return (0);
}
