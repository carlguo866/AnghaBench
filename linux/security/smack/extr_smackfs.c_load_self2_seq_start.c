
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct task_smack {int smk_rules; } ;
struct seq_file {int dummy; } ;
typedef int loff_t ;


 int current_cred () ;
 struct task_smack* smack_cred (int ) ;
 void* smk_seq_start (struct seq_file*,int *,int *) ;

__attribute__((used)) static void *load_self2_seq_start(struct seq_file *s, loff_t *pos)
{
 struct task_smack *tsp = smack_cred(current_cred());

 return smk_seq_start(s, pos, &tsp->smk_rules);
}
