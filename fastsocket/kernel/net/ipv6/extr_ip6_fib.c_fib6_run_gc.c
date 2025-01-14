
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int ip6_rt_gc_interval; } ;
struct TYPE_5__ {int ip6_fib_timer; TYPE_1__ sysctl; } ;
struct net {TYPE_2__ ipv6; } ;
struct TYPE_6__ {int timeout; scalar_t__ more; } ;


 scalar_t__ HZ ;
 int del_timer (int *) ;
 int fib6_age ;
 int fib6_clean_all (struct net*,int ,int ,int *) ;
 int fib6_gc_lock ;
 TYPE_3__ gc_args ;
 scalar_t__ icmp6_dst_gc () ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 scalar_t__ round_jiffies (scalar_t__) ;
 int spin_lock_bh (int *) ;
 int spin_trylock_bh (int *) ;
 int spin_unlock_bh (int *) ;

void fib6_run_gc(unsigned long expires, struct net *net, bool force)
{
 if (force) {
  spin_lock_bh(&fib6_gc_lock);
 } else if (!spin_trylock_bh(&fib6_gc_lock)) {
  mod_timer(&net->ipv6.ip6_fib_timer, jiffies + HZ);
  return;
 }
 gc_args.timeout = expires ? (int)expires :
     net->ipv6.sysctl.ip6_rt_gc_interval;

 gc_args.more = icmp6_dst_gc();

 fib6_clean_all(net, fib6_age, 0, ((void*)0));

 if (gc_args.more)
  mod_timer(&net->ipv6.ip6_fib_timer,
     round_jiffies(jiffies
     + net->ipv6.sysctl.ip6_rt_gc_interval));
 else
  del_timer(&net->ipv6.ip6_fib_timer);
 spin_unlock_bh(&fib6_gc_lock);
}
