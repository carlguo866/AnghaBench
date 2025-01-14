
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;
struct rsbtbl_iter {int format; int rsb; int header; } ;


 int print_format1 (int ,struct seq_file*) ;
 int print_format2 (int ,struct seq_file*) ;
 int print_format3 (int ,struct seq_file*) ;
 int seq_printf (struct seq_file*,char*) ;

__attribute__((used)) static int table_seq_show(struct seq_file *seq, void *iter_ptr)
{
 struct rsbtbl_iter *ri = iter_ptr;
 int rv = 0;

 switch (ri->format) {
 case 1:
  rv = print_format1(ri->rsb, seq);
  break;
 case 2:
  if (ri->header) {
   seq_printf(seq, "id nodeid remid pid xid exflags "
     "flags sts grmode rqmode time_ms "
     "r_nodeid r_len r_name\n");
   ri->header = 0;
  }
  rv = print_format2(ri->rsb, seq);
  break;
 case 3:
  if (ri->header) {
   seq_printf(seq, "version rsb 1.1 lvb 1.1 lkb 1.1\n");
   ri->header = 0;
  }
  rv = print_format3(ri->rsb, seq);
  break;
 }

 return rv;
}
