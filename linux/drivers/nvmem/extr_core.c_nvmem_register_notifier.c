
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int dummy; } ;


 int blocking_notifier_chain_register (int *,struct notifier_block*) ;
 int nvmem_notifier ;

int nvmem_register_notifier(struct notifier_block *nb)
{
 return blocking_notifier_chain_register(&nvmem_notifier, nb);
}
