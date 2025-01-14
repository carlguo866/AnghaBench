
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct tcpnv {int nv_allow_cwnd_growth; int nv_last_snd_una; int nv_last_rtt; int nv_min_rtt; int nv_rtt_max_rate; int nv_eval_call_cnt; int nv_min_rtt_new; unsigned long nv_min_rtt_reset_jiffies; int nv_min_cwnd; int nv_rtt_cnt; scalar_t__ cwnd_growth_factor; scalar_t__ nv_no_cong_cnt; scalar_t__ nv_rtt_start_seq; scalar_t__ nv_catchup; } ;
struct tcp_sock {int snd_cwnd; int snd_una; int mss_cache; int snd_ssthresh; scalar_t__ snd_nxt; } ;
struct sock {int dummy; } ;
struct inet_connection_sock {scalar_t__ icsk_ca_state; } ;
struct ack_sample {int rtt_us; scalar_t__ in_flight; } ;


 int HZ ;
 int NV_INIT_RTT ;
 int NV_MIN_CWND ;
 scalar_t__ NV_MIN_CWND_GROW ;
 int NV_TSO_CWND_BOUND ;
 scalar_t__ TCP_CA_Disorder ;
 scalar_t__ TCP_CA_Open ;
 int TCP_INFINITE_SSTHRESH ;
 scalar_t__ before (scalar_t__,int) ;
 scalar_t__ div64_u64 (int,unsigned long long) ;
 int do_div (int,int) ;
 int get_random_bytes (unsigned char*,int) ;
 struct inet_connection_sock* inet_csk (struct sock*) ;
 struct tcpnv* inet_csk_ca (struct sock*) ;
 unsigned long jiffies ;
 void* max (unsigned int,int) ;
 int min (scalar_t__,int) ;
 int nv_cong_dec_mult ;
 scalar_t__ nv_cwnd_growth_rate_neg ;
 scalar_t__ nv_cwnd_growth_rate_pos ;
 int nv_dec_eval_min_calls ;
 int nv_get_bounded_rtt (struct tcpnv*,int) ;
 int nv_inc_eval_min_calls ;
 int nv_min_cwnd ;
 int nv_pad ;
 int nv_pad_buffer ;
 int nv_reset_period ;
 int nv_rtt_factor ;
 int nv_rtt_min_cnt ;
 int nv_ssthresh_eval_min_calls ;
 int nv_ssthresh_factor ;
 int nv_stop_rtt_cnt ;
 struct tcp_sock* tcp_sk (struct sock*) ;
 scalar_t__ time_after_eq (unsigned long,unsigned long) ;

__attribute__((used)) static void tcpnv_acked(struct sock *sk, const struct ack_sample *sample)
{
 const struct inet_connection_sock *icsk = inet_csk(sk);
 struct tcp_sock *tp = tcp_sk(sk);
 struct tcpnv *ca = inet_csk_ca(sk);
 unsigned long now = jiffies;
 u64 rate64;
 u32 rate, max_win, cwnd_by_slope;
 u32 avg_rtt;
 u32 bytes_acked = 0;


 if (sample->rtt_us < 0)
  return;


 if (icsk->icsk_ca_state != TCP_CA_Open &&
     icsk->icsk_ca_state != TCP_CA_Disorder)
  return;


 if (ca->nv_catchup && tp->snd_cwnd >= nv_min_cwnd) {
  ca->nv_catchup = 0;
  ca->nv_allow_cwnd_growth = 0;
 }

 bytes_acked = tp->snd_una - ca->nv_last_snd_una;
 ca->nv_last_snd_una = tp->snd_una;

 if (sample->in_flight == 0)
  return;


 if (nv_rtt_factor > 0) {
  if (ca->nv_last_rtt > 0) {
   avg_rtt = (((u64)sample->rtt_us) * nv_rtt_factor +
       ((u64)ca->nv_last_rtt)
       * (256 - nv_rtt_factor)) >> 8;
  } else {
   avg_rtt = sample->rtt_us;
   ca->nv_min_rtt = avg_rtt << 1;
  }
  ca->nv_last_rtt = avg_rtt;
 } else {
  avg_rtt = sample->rtt_us;
 }


 rate64 = ((u64)sample->in_flight) * 80000;
 do_div(rate64, avg_rtt ?: 1);
 rate = (u32)rate64;





 if (ca->nv_rtt_max_rate < rate)
  ca->nv_rtt_max_rate = rate;


 if (ca->nv_eval_call_cnt < 255)
  ca->nv_eval_call_cnt++;


 avg_rtt = nv_get_bounded_rtt(ca, avg_rtt);


 if (avg_rtt < ca->nv_min_rtt)
  ca->nv_min_rtt = avg_rtt;


 if (avg_rtt < ca->nv_min_rtt_new)
  ca->nv_min_rtt_new = avg_rtt;
 if (time_after_eq(now, ca->nv_min_rtt_reset_jiffies)) {
  unsigned char rand;

  ca->nv_min_rtt = ca->nv_min_rtt_new;
  ca->nv_min_rtt_new = NV_INIT_RTT;
  get_random_bytes(&rand, 1);
  ca->nv_min_rtt_reset_jiffies =
   now + ((nv_reset_period * (384 + rand) * HZ) >> 9);



  ca->nv_min_cwnd = max(ca->nv_min_cwnd / 2, NV_MIN_CWND);
 }


 if (before(ca->nv_rtt_start_seq, tp->snd_una)) {
  ca->nv_rtt_start_seq = tp->snd_nxt;
  if (ca->nv_rtt_cnt < 0xff)

   ca->nv_rtt_cnt++;






  if (ca->nv_eval_call_cnt == 1 &&
      bytes_acked >= (ca->nv_min_cwnd - 1) * tp->mss_cache &&
      ca->nv_min_cwnd < (NV_TSO_CWND_BOUND + 1)) {
   ca->nv_min_cwnd = min(ca->nv_min_cwnd
           + NV_MIN_CWND_GROW,
           NV_TSO_CWND_BOUND + 1);
   ca->nv_rtt_start_seq = tp->snd_nxt +
    ca->nv_min_cwnd * tp->mss_cache;
   ca->nv_eval_call_cnt = 0;
   ca->nv_allow_cwnd_growth = 1;
   return;
  }





  cwnd_by_slope = (u32)
   div64_u64(((u64)ca->nv_rtt_max_rate) * ca->nv_min_rtt,
      80000ULL * tp->mss_cache);
  max_win = cwnd_by_slope + nv_pad;





  if (tp->snd_cwnd > max_win) {







   if (ca->nv_rtt_cnt < nv_rtt_min_cnt) {
    return;
   } else if (tp->snd_ssthresh == TCP_INFINITE_SSTHRESH) {
    if (ca->nv_eval_call_cnt <
        nv_ssthresh_eval_min_calls)
     return;

   } else if (ca->nv_eval_call_cnt <
       nv_dec_eval_min_calls) {
    if (ca->nv_allow_cwnd_growth &&
        ca->nv_rtt_cnt > nv_stop_rtt_cnt)
     ca->nv_allow_cwnd_growth = 0;
    return;
   }


   ca->nv_allow_cwnd_growth = 0;
   tp->snd_ssthresh =
    (nv_ssthresh_factor * max_win) >> 3;
   if (tp->snd_cwnd - max_win > 2) {

    int dec;

    dec = max(2U, ((tp->snd_cwnd - max_win) *
            nv_cong_dec_mult) >> 7);
    tp->snd_cwnd -= dec;
   } else if (nv_cong_dec_mult > 0) {
    tp->snd_cwnd = max_win;
   }
   if (ca->cwnd_growth_factor > 0)
    ca->cwnd_growth_factor = 0;
   ca->nv_no_cong_cnt = 0;
  } else if (tp->snd_cwnd <= max_win - nv_pad_buffer) {

   if (ca->nv_eval_call_cnt < nv_inc_eval_min_calls)
    return;

   ca->nv_allow_cwnd_growth = 1;
   ca->nv_no_cong_cnt++;
   if (ca->cwnd_growth_factor < 0 &&
       nv_cwnd_growth_rate_neg > 0 &&
       ca->nv_no_cong_cnt > nv_cwnd_growth_rate_neg) {
    ca->cwnd_growth_factor++;
    ca->nv_no_cong_cnt = 0;
   } else if (ca->cwnd_growth_factor >= 0 &&
       nv_cwnd_growth_rate_pos > 0 &&
       ca->nv_no_cong_cnt >
       nv_cwnd_growth_rate_pos) {
    ca->cwnd_growth_factor++;
    ca->nv_no_cong_cnt = 0;
   }
  } else {

   return;
  }


  ca->nv_eval_call_cnt = 0;
  ca->nv_rtt_cnt = 0;
  ca->nv_rtt_max_rate = 0;





  if (tp->snd_cwnd < nv_min_cwnd)
   tp->snd_cwnd = nv_min_cwnd;
 }
}
