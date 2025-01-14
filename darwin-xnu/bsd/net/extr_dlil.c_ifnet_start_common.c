
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifnet {int if_eflags; int if_start_flags; scalar_t__ if_start_thread; scalar_t__ if_start_delay_qlen; scalar_t__ if_start_delayed; int if_start_lock; int if_snd; int if_start_active; int if_start_req; } ;
typedef int caddr_t ;
typedef scalar_t__ boolean_t ;


 scalar_t__ IFCQ_LEN (int *) ;
 int IFEF_ENQUEUE_MULTI ;
 int IFEF_TXSTART ;
 int IFSF_FLOW_CONTROLLED ;
 scalar_t__ THREAD_NULL ;
 int lck_mtx_lock_spin (int *) ;
 int lck_mtx_unlock (int *) ;
 int thread_wakeup_thread (int ,scalar_t__) ;

__attribute__((used)) static void
ifnet_start_common(struct ifnet *ifp, boolean_t resetfc)
{
 if (!(ifp->if_eflags & IFEF_TXSTART))
  return;







 lck_mtx_lock_spin(&ifp->if_start_lock);
 if (resetfc) {
  ifp->if_start_flags &= ~IFSF_FLOW_CONTROLLED;
 } else if (ifp->if_start_flags & IFSF_FLOW_CONTROLLED) {
  lck_mtx_unlock(&ifp->if_start_lock);
  return;
 }
 ifp->if_start_req++;
 if (!ifp->if_start_active && ifp->if_start_thread != THREAD_NULL &&
     (resetfc || !(ifp->if_eflags & IFEF_ENQUEUE_MULTI) ||
     IFCQ_LEN(&ifp->if_snd) >= ifp->if_start_delay_qlen ||
     ifp->if_start_delayed == 0)) {
  (void) thread_wakeup_thread((caddr_t)&ifp->if_start_thread,
      ifp->if_start_thread);
 }
 lck_mtx_unlock(&ifp->if_start_lock);
}
