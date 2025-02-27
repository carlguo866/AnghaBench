
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef scalar_t__ u_int32_t ;
struct thread {int dummy; } ;
struct mbuf {int dummy; } ;
struct ifnet_stat_increment_param {scalar_t__ packets_in; scalar_t__ bytes_in; } ;
struct ifnet {scalar_t__ if_family; scalar_t__ if_type; struct dlil_threading_info* if_inp; } ;
struct dlil_threading_info {scalar_t__ wloop_thr; scalar_t__ poll_thr; scalar_t__ tag; scalar_t__ input_mbuf_cnt; int input_waiting; int input_lck; int wtot; scalar_t__ input_mit_tcall; int rcvq_pkts; scalar_t__ net_affinity; } ;
struct dlil_main_threading_info {int lo_rcvq_pkts; } ;
typedef int errno_t ;
typedef int caddr_t ;
typedef scalar_t__ boolean_t ;


 int DLIL_INPUT_RUNNING ;
 int DLIL_INPUT_WAITING ;
 scalar_t__ IFNET_FAMILY_ETHERNET ;
 scalar_t__ IFT_CELLULAR ;
 scalar_t__ THREAD_NULL ;
 int VERIFY (int) ;
 int _addq_multi (int *,struct mbuf*,struct mbuf*,scalar_t__,scalar_t__) ;
 int clock_interval_to_deadline (int ,int,int *) ;
 int dlil_affinity_set (struct thread*,scalar_t__) ;
 scalar_t__ dlil_input_sanity_check ;
 int dlil_input_stats_add (struct ifnet_stat_increment_param const*,struct dlil_threading_info*,scalar_t__) ;
 int dlil_input_stats_sync (struct ifnet*,struct dlil_threading_info*) ;
 struct dlil_threading_info* dlil_main_input_thread ;
 int dlil_rcv_mit_interval ;
 scalar_t__ dlil_rcv_mit_pkts_max ;
 scalar_t__ dlil_rcv_mit_pkts_min ;
 int if_name (struct ifnet*) ;
 int lck_mtx_lock_spin (int *) ;
 int lck_mtx_unlock (int *) ;
 struct ifnet* lo_ifp ;
 struct mbuf* mbuf_nextpkt (struct mbuf*) ;
 int panic_plain (char*,int ,scalar_t__,scalar_t__) ;
 scalar_t__ qlen (int *) ;
 int thread_call_enter_delayed (scalar_t__,int ) ;
 int thread_call_isactive (scalar_t__) ;
 int thread_reference (struct thread*) ;
 int wakeup_one (int ) ;

errno_t
dlil_input_handler(struct ifnet *ifp, struct mbuf *m_head,
    struct mbuf *m_tail, const struct ifnet_stat_increment_param *s,
    boolean_t poll, struct thread *tp)
{
 struct dlil_threading_info *inp;
 u_int32_t m_cnt = s->packets_in;
 u_int32_t m_size = s->bytes_in;

 if ((inp = ifp->if_inp) == ((void*)0))
  inp = dlil_main_input_thread;






 lck_mtx_lock_spin(&inp->input_lck);
 if (inp != dlil_main_input_thread && inp->net_affinity && tp != ((void*)0) &&
     ((!poll && inp->wloop_thr == THREAD_NULL) ||
     (poll && inp->poll_thr == THREAD_NULL))) {
  u_int32_t tag = inp->tag;

  if (poll) {
   VERIFY(inp->poll_thr == THREAD_NULL);
   inp->poll_thr = tp;
  } else {
   VERIFY(inp->wloop_thr == THREAD_NULL);
   inp->wloop_thr = tp;
  }
  lck_mtx_unlock(&inp->input_lck);


  (void) dlil_affinity_set(tp, tag);






  thread_reference(tp);
  lck_mtx_lock_spin(&inp->input_lck);
 }

 VERIFY(m_head != ((void*)0) || (m_tail == ((void*)0) && m_cnt == 0));
 if (m_head != ((void*)0)) {
  if (inp == dlil_main_input_thread && ifp == lo_ifp) {
   struct dlil_main_threading_info *inpm =
       (struct dlil_main_threading_info *)inp;
   _addq_multi(&inpm->lo_rcvq_pkts, m_head, m_tail,
       m_cnt, m_size);
  } else {
   _addq_multi(&inp->rcvq_pkts, m_head, m_tail,
       m_cnt, m_size);
  }
 }
 dlil_input_stats_add(s, inp, poll);






 if (inp == dlil_main_input_thread)
  dlil_input_stats_sync(ifp, inp);

 if (inp->input_mit_tcall &&
     qlen(&inp->rcvq_pkts) >= dlil_rcv_mit_pkts_min &&
     qlen(&inp->rcvq_pkts) < dlil_rcv_mit_pkts_max &&
     (ifp->if_family == IFNET_FAMILY_ETHERNET ||
     ifp->if_type == IFT_CELLULAR)
     ) {
  if (!thread_call_isactive(inp->input_mit_tcall)) {
   uint64_t deadline;
   clock_interval_to_deadline(dlil_rcv_mit_interval,
       1, &deadline);
   (void) thread_call_enter_delayed(
       inp->input_mit_tcall, deadline);
  }
 } else {
  inp->input_waiting |= DLIL_INPUT_WAITING;
  if (!(inp->input_waiting & DLIL_INPUT_RUNNING)) {
   inp->wtot++;
   wakeup_one((caddr_t)&inp->input_waiting);
  }
 }
 lck_mtx_unlock(&inp->input_lck);

 return (0);
}
