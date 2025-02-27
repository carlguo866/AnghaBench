
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {int dummy; } ;
struct TYPE_2__ {int msg_parser; } ;
struct sk_psock {int sk_redir; int apply_bytes; TYPE_1__ progs; } ;
struct sk_msg {int sk_redir; int apply_bytes; struct sock* sk; } ;
struct bpf_prog {int dummy; } ;


 int BPF_PROG_RUN (struct bpf_prog*,struct sk_msg*) ;
 struct bpf_prog* READ_ONCE (int ) ;
 int __SK_DROP ;
 int __SK_PASS ;
 int __SK_REDIRECT ;
 int preempt_disable () ;
 int preempt_enable () ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 int sk_msg_compute_data_pointers (struct sk_msg*) ;
 int sk_psock_map_verd (int,int ) ;
 int sock_hold (int ) ;
 int sock_put (int ) ;
 scalar_t__ unlikely (int) ;

int sk_psock_msg_verdict(struct sock *sk, struct sk_psock *psock,
    struct sk_msg *msg)
{
 struct bpf_prog *prog;
 int ret;

 preempt_disable();
 rcu_read_lock();
 prog = READ_ONCE(psock->progs.msg_parser);
 if (unlikely(!prog)) {
  ret = __SK_PASS;
  goto out;
 }

 sk_msg_compute_data_pointers(msg);
 msg->sk = sk;
 ret = BPF_PROG_RUN(prog, msg);
 ret = sk_psock_map_verd(ret, msg->sk_redir);
 psock->apply_bytes = msg->apply_bytes;
 if (ret == __SK_REDIRECT) {
  if (psock->sk_redir)
   sock_put(psock->sk_redir);
  psock->sk_redir = msg->sk_redir;
  if (!psock->sk_redir) {
   ret = __SK_DROP;
   goto out;
  }
  sock_hold(psock->sk_redir);
 }
out:
 rcu_read_unlock();
 preempt_enable();
 return ret;
}
