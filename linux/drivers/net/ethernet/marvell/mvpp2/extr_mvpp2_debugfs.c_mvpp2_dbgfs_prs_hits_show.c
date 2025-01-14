
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {struct mvpp2_dbgfs_prs_entry* private; } ;
struct mvpp2_dbgfs_prs_entry {int tid; int priv; } ;


 int mvpp2_prs_hits (int ,int ) ;
 int seq_printf (struct seq_file*,char*,int) ;

__attribute__((used)) static int mvpp2_dbgfs_prs_hits_show(struct seq_file *s, void *unused)
{
 struct mvpp2_dbgfs_prs_entry *entry = s->private;
 int val;

 val = mvpp2_prs_hits(entry->priv, entry->tid);
 if (val < 0)
  return val;

 seq_printf(s, "%d\n", val);

 return 0;
}
