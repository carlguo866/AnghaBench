
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {scalar_t__ private; } ;
struct hcall_stats {int tb_total; scalar_t__ num_calls; int purr_total; } ;


 int CPU_FTR_PURR ;
 scalar_t__ cpu_has_feature (int ) ;
 int seq_printf (struct seq_file*,char*,unsigned long,scalar_t__,int ,...) ;

__attribute__((used)) static int hc_show(struct seq_file *m, void *p)
{
 unsigned long h_num = (unsigned long)p;
 struct hcall_stats *hs = (struct hcall_stats *)m->private;

 if (hs[h_num].num_calls) {
  if (cpu_has_feature(CPU_FTR_PURR))
   seq_printf(m, "%lu %lu %lu %lu\n", h_num<<2,
       hs[h_num].num_calls,
       hs[h_num].tb_total,
       hs[h_num].purr_total);
  else
   seq_printf(m, "%lu %lu %lu\n", h_num<<2,
       hs[h_num].num_calls,
       hs[h_num].tb_total);
 }

 return 0;
}
