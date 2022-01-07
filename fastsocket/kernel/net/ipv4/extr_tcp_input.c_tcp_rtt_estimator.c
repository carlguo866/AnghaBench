
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcp_sock {int srtt; int mdev; long mdev_max; long rttvar; int snd_nxt; int rtt_seq; int snd_una; } ;
struct sock {int dummy; } ;
typedef long __u32 ;


 scalar_t__ after (int ,int ) ;
 int max (long,int) ;
 int tcp_rto_min (struct sock*) ;
 struct tcp_sock* tcp_sk (struct sock*) ;

__attribute__((used)) static void tcp_rtt_estimator(struct sock *sk, const __u32 mrtt)
{
 struct tcp_sock *tp = tcp_sk(sk);
 long m = mrtt;
 if (m == 0)
  m = 1;
 if (tp->srtt != 0) {
  m -= (tp->srtt >> 3);
  tp->srtt += m;
  if (m < 0) {
   m = -m;
   m -= (tp->mdev >> 2);
   if (m > 0)
    m >>= 3;
  } else {
   m -= (tp->mdev >> 2);
  }
  tp->mdev += m;
  if (tp->mdev > tp->mdev_max) {
   tp->mdev_max = tp->mdev;
   if (tp->mdev_max > tp->rttvar)
    tp->rttvar = tp->mdev_max;
  }
  if (after(tp->snd_una, tp->rtt_seq)) {
   if (tp->mdev_max < tp->rttvar)
    tp->rttvar -= (tp->rttvar - tp->mdev_max) >> 2;
   tp->rtt_seq = tp->snd_nxt;
   tp->mdev_max = tcp_rto_min(sk);
  }
 } else {

  tp->srtt = m << 3;
  tp->mdev = m << 1;
  tp->mdev_max = tp->rttvar = max(tp->mdev, tcp_rto_min(sk));
  tp->rtt_seq = tp->snd_nxt;
 }
}
