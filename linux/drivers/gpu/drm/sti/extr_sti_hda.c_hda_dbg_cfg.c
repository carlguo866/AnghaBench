
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct seq_file {int dummy; } ;


 int CFG_AWG_ASYNC_EN ;
 int seq_puts (struct seq_file*,char*) ;

__attribute__((used)) static void hda_dbg_cfg(struct seq_file *s, int val)
{
 seq_puts(s, "\tAWG ");
 seq_puts(s, val & CFG_AWG_ASYNC_EN ? "enabled" : "disabled");
}
