
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct klist_node {scalar_t__ n_klist; } ;
struct klist {int dummy; } ;


 unsigned long KNODE_KLIST_MASK ;

__attribute__((used)) static struct klist *knode_klist(struct klist_node *knode)
{
 return (struct klist *)
  ((unsigned long)knode->n_klist & KNODE_KLIST_MASK);
}
