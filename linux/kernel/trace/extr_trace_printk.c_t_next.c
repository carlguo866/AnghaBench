
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;
typedef int loff_t ;


 void* find_next (void*,int *) ;

__attribute__((used)) static void *t_next(struct seq_file *m, void * v, loff_t *pos)
{
 (*pos)++;
 return find_next(v, pos);
}
