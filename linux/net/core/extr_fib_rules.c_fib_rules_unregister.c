
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net {int rules_mod_lock; } ;
struct fib_rules_ops {int list; struct net* fro_net; } ;


 int fib_rules_cleanup_ops (struct fib_rules_ops*) ;
 int kfree_rcu (struct fib_rules_ops*,int ) ;
 int list_del_rcu (int *) ;
 int rcu ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void fib_rules_unregister(struct fib_rules_ops *ops)
{
 struct net *net = ops->fro_net;

 spin_lock(&net->rules_mod_lock);
 list_del_rcu(&ops->list);
 spin_unlock(&net->rules_mod_lock);

 fib_rules_cleanup_ops(ops);
 kfree_rcu(ops, rcu);
}
