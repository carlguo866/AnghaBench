
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef void* u64 ;
typedef void* u32 ;
struct tcp_sock {scalar_t__ undo_retrans; int lost_out; int retrans_out; int sacked_out; int delivered; int lost_cnt_hint; scalar_t__ lost_skb_hint; scalar_t__ high_seq; scalar_t__ snd_una; scalar_t__ undo_marker; } ;
struct tcp_sacktag_state {scalar_t__ first_sackt; int flag; void* last_sackt; void* reord; } ;
struct sock {int dummy; } ;
struct TYPE_2__ {void* seq; } ;


 int FLAG_DATA_SACKED ;
 int FLAG_ORIG_SACK_ACKED ;
 int TCPCB_LOST ;
 int TCPCB_RETRANS ;
 int TCPCB_SACKED_ACKED ;
 int TCPCB_SACKED_RETRANS ;
 TYPE_1__* TCP_SKB_CB (scalar_t__) ;
 scalar_t__ after (void*,scalar_t__) ;
 scalar_t__ before (void*,void*) ;
 void* tcp_highest_sack_seq (struct tcp_sock*) ;
 int tcp_rack_advance (struct tcp_sock*,int,void*,void*) ;
 struct tcp_sock* tcp_sk (struct sock*) ;

__attribute__((used)) static u8 tcp_sacktag_one(struct sock *sk,
     struct tcp_sacktag_state *state, u8 sacked,
     u32 start_seq, u32 end_seq,
     int dup_sack, int pcount,
     u64 xmit_time)
{
 struct tcp_sock *tp = tcp_sk(sk);


 if (dup_sack && (sacked & TCPCB_RETRANS)) {
  if (tp->undo_marker && tp->undo_retrans > 0 &&
      after(end_seq, tp->undo_marker))
   tp->undo_retrans--;
  if ((sacked & TCPCB_SACKED_ACKED) &&
      before(start_seq, state->reord))
    state->reord = start_seq;
 }


 if (!after(end_seq, tp->snd_una))
  return sacked;

 if (!(sacked & TCPCB_SACKED_ACKED)) {
  tcp_rack_advance(tp, sacked, end_seq, xmit_time);

  if (sacked & TCPCB_SACKED_RETRANS) {




   if (sacked & TCPCB_LOST) {
    sacked &= ~(TCPCB_LOST|TCPCB_SACKED_RETRANS);
    tp->lost_out -= pcount;
    tp->retrans_out -= pcount;
   }
  } else {
   if (!(sacked & TCPCB_RETRANS)) {



    if (before(start_seq,
        tcp_highest_sack_seq(tp)) &&
        before(start_seq, state->reord))
     state->reord = start_seq;

    if (!after(end_seq, tp->high_seq))
     state->flag |= FLAG_ORIG_SACK_ACKED;
    if (state->first_sackt == 0)
     state->first_sackt = xmit_time;
    state->last_sackt = xmit_time;
   }

   if (sacked & TCPCB_LOST) {
    sacked &= ~TCPCB_LOST;
    tp->lost_out -= pcount;
   }
  }

  sacked |= TCPCB_SACKED_ACKED;
  state->flag |= FLAG_DATA_SACKED;
  tp->sacked_out += pcount;
  tp->delivered += pcount;


  if (tp->lost_skb_hint &&
      before(start_seq, TCP_SKB_CB(tp->lost_skb_hint)->seq))
   tp->lost_cnt_hint += pcount;
 }





 if (dup_sack && (sacked & TCPCB_SACKED_RETRANS)) {
  sacked &= ~TCPCB_SACKED_RETRANS;
  tp->retrans_out -= pcount;
 }

 return sacked;
}
