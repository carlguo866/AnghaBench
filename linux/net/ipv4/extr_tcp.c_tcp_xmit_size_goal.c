
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int u32 ;
struct tcp_sock {unsigned int gso_segs; } ;
struct sock {int sk_gso_max_size; int sk_gso_max_segs; } ;


 int MAX_TCP_HEADER ;
 unsigned int max (unsigned int,unsigned int) ;
 unsigned int min_t (int ,unsigned int,int ) ;
 unsigned int tcp_bound_to_half_wnd (struct tcp_sock*,unsigned int) ;
 struct tcp_sock* tcp_sk (struct sock*) ;
 int u16 ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static unsigned int tcp_xmit_size_goal(struct sock *sk, u32 mss_now,
           int large_allowed)
{
 struct tcp_sock *tp = tcp_sk(sk);
 u32 new_size_goal, size_goal;

 if (!large_allowed)
  return mss_now;


 new_size_goal = sk->sk_gso_max_size - 1 - MAX_TCP_HEADER;
 new_size_goal = tcp_bound_to_half_wnd(tp, new_size_goal);


 size_goal = tp->gso_segs * mss_now;
 if (unlikely(new_size_goal < size_goal ||
       new_size_goal >= size_goal + mss_now)) {
  tp->gso_segs = min_t(u16, new_size_goal / mss_now,
         sk->sk_gso_max_segs);
  size_goal = tp->gso_segs * mss_now;
 }

 return max(size_goal, mss_now);
}
