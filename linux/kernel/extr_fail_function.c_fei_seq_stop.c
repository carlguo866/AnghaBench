
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;


 int fei_lock ;
 int mutex_unlock (int *) ;

__attribute__((used)) static void fei_seq_stop(struct seq_file *m, void *v)
{
 mutex_unlock(&fei_lock);
}
