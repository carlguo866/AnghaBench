
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int dummy; } ;


 int blocking_notifier_chain_unregister (int *,struct notifier_block*) ;
 int vmap_notify_list ;

int unregister_vmap_purge_notifier(struct notifier_block *nb)
{
 return blocking_notifier_chain_unregister(&vmap_notify_list, nb);
}
