
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket_wq {int wait; } ;
struct sock {int sk_wq; } ;


 int EPOLLERR ;
 int POLL_ERR ;
 int SOCK_WAKE_IO ;
 struct socket_wq* rcu_dereference (int ) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int sk_wake_async (struct sock*,int ,int ) ;
 scalar_t__ skwq_has_sleeper (struct socket_wq*) ;
 int wake_up_interruptible_poll (int *,int ) ;

__attribute__((used)) static void sock_def_error_report(struct sock *sk)
{
 struct socket_wq *wq;

 rcu_read_lock();
 wq = rcu_dereference(sk->sk_wq);
 if (skwq_has_sleeper(wq))
  wake_up_interruptible_poll(&wq->wait, EPOLLERR);
 sk_wake_async(sk, SOCK_WAKE_IO, POLL_ERR);
 rcu_read_unlock();
}
