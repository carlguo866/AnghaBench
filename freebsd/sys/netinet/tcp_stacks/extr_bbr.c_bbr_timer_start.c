
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
typedef scalar_t__ uint32_t ;
struct tcpcb {int t_flags; scalar_t__ t_state; int snd_una; int snd_max; scalar_t__ t_srtt; scalar_t__ t_rttvar; int t_rxtshift; TYPE_2__* t_inpcb; } ;
struct TYPE_6__ {scalar_t__ rc_tlp_rxt_last_time; scalar_t__ rc_min_to; int rc_min_rto_ms; scalar_t__ rc_last_tlp_seq; scalar_t__ rc_tlp_seg_send_cnt; int rc_hpts_flags; int rc_tmap; } ;
struct tcp_bbr {scalar_t__ rc_max_rto_sec; scalar_t__ rc_tlp_in_progress; int rc_tlp_rtx_out; TYPE_3__ r_ctl; scalar_t__ rc_in_persist; scalar_t__ rc_all_timers_stopped; } ;
struct bbr_sendmap {int r_rtr_cnt; scalar_t__* r_tim_lastsent; int r_flags; scalar_t__ r_start; } ;
typedef size_t int32_t ;
struct TYPE_5__ {TYPE_1__* inp_socket; } ;
struct TYPE_4__ {int so_snd; } ;


 int BBR_ACKED ;
 int BBR_HAS_FIN ;
 scalar_t__ BBR_INITIAL_RTO ;
 int BBR_RTT_RACK ;
 int BBR_SACK_PASSED ;
 int BBR_STAT_INC (int ) ;
 int MS_IN_USEC ;
 int PACE_TMR_RACK ;
 int PACE_TMR_RXT ;
 int PACE_TMR_TLP ;
 scalar_t__ SEQ_GEQ (scalar_t__,scalar_t__) ;
 scalar_t__ SEQ_LT (int,int) ;
 struct bbr_sendmap* TAILQ_FIRST (int *) ;
 struct bbr_sendmap* TAILQ_LAST_FAST (int *,int ,int ) ;
 scalar_t__ TCPS_ESTABLISHED ;
 int TCPT_RANGESET_NOSLOP (scalar_t__,scalar_t__,int,scalar_t__) ;
 scalar_t__ TCP_RTT_SHIFT ;
 int TF_SACK_PERMIT ;
 int TF_SENTFIN ;
 scalar_t__ TICKS_2_USEC (scalar_t__) ;
 scalar_t__ TSTMP_GEQ (scalar_t__,scalar_t__) ;
 scalar_t__ TSTMP_GT (scalar_t__,scalar_t__) ;
 scalar_t__ USECS_IN_SECOND ;
 scalar_t__ bbr_calc_thresh_rack (struct tcp_bbr*,scalar_t__,scalar_t__,struct bbr_sendmap*) ;
 scalar_t__ bbr_calc_thresh_tlp (struct tcpcb*,struct tcp_bbr*,struct bbr_sendmap*,scalar_t__,scalar_t__) ;
 struct bbr_sendmap* bbr_find_lowest_rsm (struct tcp_bbr*) ;
 scalar_t__ bbr_get_persists_timer_val (struct tcpcb*,struct tcp_bbr*) ;
 scalar_t__ bbr_get_rtt (struct tcp_bbr*,int ) ;
 int bbr_log_timer_var (struct tcp_bbr*,int,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 int bbr_sendmap ;
 scalar_t__ bbr_tlp_max_resend ;
 int bbr_tlp_type_to_use ;
 int bbr_to_arm_rack ;
 int bbr_to_arm_tlp ;
 int r_tnext ;
 scalar_t__ sbavail (int *) ;
 scalar_t__* tcp_backoff ;

__attribute__((used)) static uint32_t
bbr_timer_start(struct tcpcb *tp, struct tcp_bbr *bbr, uint32_t cts)
{






 uint32_t thresh, exp, to, srtt, time_since_sent, tstmp_touse;
 int32_t idx;
 int32_t is_tlp_timer = 0;
 struct bbr_sendmap *rsm;

 if (bbr->rc_all_timers_stopped) {

  return (0);
 }
 if (bbr->rc_in_persist) {

  return (bbr_get_persists_timer_val(tp, bbr));
 }
 rsm = TAILQ_FIRST(&bbr->r_ctl.rc_tmap);
 if ((rsm == ((void*)0)) ||
     ((tp->t_flags & TF_SACK_PERMIT) == 0) ||
     (tp->t_state < TCPS_ESTABLISHED)) {

activate_rxt:
  if (SEQ_LT(tp->snd_una, tp->snd_max) || sbavail(&(tp->t_inpcb->inp_socket->so_snd))) {
   uint64_t tov;

   time_since_sent = 0;
   rsm = TAILQ_FIRST(&bbr->r_ctl.rc_tmap);
   if (rsm) {
    idx = rsm->r_rtr_cnt - 1;
    if (TSTMP_GEQ(rsm->r_tim_lastsent[idx], bbr->r_ctl.rc_tlp_rxt_last_time))
     tstmp_touse = rsm->r_tim_lastsent[idx];
    else
     tstmp_touse = bbr->r_ctl.rc_tlp_rxt_last_time;
    if (TSTMP_GT(tstmp_touse, cts))
        time_since_sent = cts - tstmp_touse;
   }
   bbr->r_ctl.rc_hpts_flags |= PACE_TMR_RXT;
   if (tp->t_srtt == 0)
    tov = BBR_INITIAL_RTO;
   else
    tov = ((uint64_t)(TICKS_2_USEC(tp->t_srtt) +
        ((uint64_t)TICKS_2_USEC(tp->t_rttvar) * (uint64_t)4)) >> TCP_RTT_SHIFT);
   if (tp->t_rxtshift)
    tov *= tcp_backoff[tp->t_rxtshift];
   if (tov > time_since_sent)
    tov -= time_since_sent;
   else
    tov = bbr->r_ctl.rc_min_to;
   TCPT_RANGESET_NOSLOP(to, tov,
       (bbr->r_ctl.rc_min_rto_ms * MS_IN_USEC),
       (bbr->rc_max_rto_sec * USECS_IN_SECOND));
   bbr_log_timer_var(bbr, 2, cts, 0, srtt, 0, to);
   return (to);
  }
  return (0);
 }
 if (rsm->r_flags & BBR_ACKED) {
  rsm = bbr_find_lowest_rsm(bbr);
  if (rsm == ((void*)0)) {

   goto activate_rxt;
  }
 }

 if (rsm->r_flags & BBR_SACK_PASSED) {
  if ((tp->t_flags & TF_SENTFIN) &&
      ((tp->snd_max - tp->snd_una) == 1) &&
      (rsm->r_flags & BBR_HAS_FIN)) {




   goto activate_rxt;
  }
  srtt = bbr_get_rtt(bbr, BBR_RTT_RACK);
  thresh = bbr_calc_thresh_rack(bbr, srtt, cts, rsm);
  idx = rsm->r_rtr_cnt - 1;
  exp = rsm->r_tim_lastsent[idx] + thresh;
  if (SEQ_GEQ(exp, cts)) {
   to = exp - cts;
   if (to < bbr->r_ctl.rc_min_to) {
    to = bbr->r_ctl.rc_min_to;
   }
  } else {
   to = bbr->r_ctl.rc_min_to;
  }
 } else {

  if (bbr->rc_tlp_in_progress != 0) {



   goto activate_rxt;
  }
  rsm = TAILQ_LAST_FAST(&bbr->r_ctl.rc_tmap, bbr_sendmap, r_tnext);
  if (rsm == ((void*)0)) {

   goto activate_rxt;
  }
  if (rsm->r_flags & BBR_HAS_FIN) {

   rsm = ((void*)0);
   goto activate_rxt;
  }
  time_since_sent = 0;
  idx = rsm->r_rtr_cnt - 1;
  if (TSTMP_GEQ(rsm->r_tim_lastsent[idx], bbr->r_ctl.rc_tlp_rxt_last_time))
   tstmp_touse = rsm->r_tim_lastsent[idx];
  else
   tstmp_touse = bbr->r_ctl.rc_tlp_rxt_last_time;
  if (TSTMP_GT(tstmp_touse, cts))
      time_since_sent = cts - tstmp_touse;
  is_tlp_timer = 1;
  srtt = bbr_get_rtt(bbr, bbr_tlp_type_to_use);
  thresh = bbr_calc_thresh_tlp(tp, bbr, rsm, srtt, cts);
  if (thresh > time_since_sent)
   to = thresh - time_since_sent;
  else
   to = bbr->r_ctl.rc_min_to;
  if (to > (((uint32_t)bbr->rc_max_rto_sec) * USECS_IN_SECOND)) {




   goto activate_rxt;
  }
  if ((bbr->rc_tlp_rtx_out == 1) &&
      (rsm->r_start == bbr->r_ctl.rc_last_tlp_seq)) {




   bbr->rc_tlp_rtx_out = 0;
   goto activate_rxt;
  }
  if (rsm->r_start != bbr->r_ctl.rc_last_tlp_seq) {




   bbr->r_ctl.rc_tlp_seg_send_cnt = 0;
   bbr->r_ctl.rc_last_tlp_seq = rsm->r_start;
  }
 }
 if (is_tlp_timer == 0) {
  BBR_STAT_INC(bbr_to_arm_rack);
  bbr->r_ctl.rc_hpts_flags |= PACE_TMR_RACK;
 } else {
  bbr_log_timer_var(bbr, 1, cts, time_since_sent, srtt, thresh, to);
  if (bbr->r_ctl.rc_tlp_seg_send_cnt > bbr_tlp_max_resend) {




   goto activate_rxt;
  } else {
   BBR_STAT_INC(bbr_to_arm_tlp);
   bbr->r_ctl.rc_hpts_flags |= PACE_TMR_TLP;
  }
 }
 return (to);
}
