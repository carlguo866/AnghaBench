
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nf_exp_event_notifier {int dummy; } ;


 int EBUSY ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int nf_ct_ecache_mutex ;
 int nf_expect_event_cb ;
 int rcu_assign_pointer (int ,struct nf_exp_event_notifier*) ;
 struct nf_exp_event_notifier* rcu_dereference (int ) ;

int nf_ct_expect_register_notifier(struct nf_exp_event_notifier *new)
{
 int ret = 0;
 struct nf_exp_event_notifier *notify;

 mutex_lock(&nf_ct_ecache_mutex);
 notify = rcu_dereference(nf_expect_event_cb);
 if (notify != ((void*)0)) {
  ret = -EBUSY;
  goto out_unlock;
 }
 rcu_assign_pointer(nf_expect_event_cb, new);
 mutex_unlock(&nf_ct_ecache_mutex);
 return ret;

out_unlock:
 mutex_unlock(&nf_ct_ecache_mutex);
 return ret;
}
