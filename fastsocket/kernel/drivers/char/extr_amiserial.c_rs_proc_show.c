
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;


 int line_info (struct seq_file*,int *) ;
 int * rs_table ;
 int seq_printf (struct seq_file*,char*,int ) ;
 int serial_version ;

__attribute__((used)) static int rs_proc_show(struct seq_file *m, void *v)
{
 seq_printf(m, "serinfo:1.0 driver:%s\n", serial_version);
 line_info(m, &rs_table[0]);
 return 0;
}
