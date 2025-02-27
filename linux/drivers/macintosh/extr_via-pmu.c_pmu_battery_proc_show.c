
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct seq_file {scalar_t__ private; } ;
struct TYPE_2__ {int time_remaining; int voltage; int amperage; int max_charge; int charge; int flags; } ;


 TYPE_1__* pmu_batteries ;
 int seq_printf (struct seq_file*,char*,int ) ;
 int seq_putc (struct seq_file*,char) ;

__attribute__((used)) static int pmu_battery_proc_show(struct seq_file *m, void *v)
{
 long batnum = (long)m->private;

 seq_putc(m, '\n');
 seq_printf(m, "flags      : %08x\n", pmu_batteries[batnum].flags);
 seq_printf(m, "charge     : %d\n", pmu_batteries[batnum].charge);
 seq_printf(m, "max_charge : %d\n", pmu_batteries[batnum].max_charge);
 seq_printf(m, "current    : %d\n", pmu_batteries[batnum].amperage);
 seq_printf(m, "voltage    : %d\n", pmu_batteries[batnum].voltage);
 seq_printf(m, "time rem.  : %d\n", pmu_batteries[batnum].time_remaining);
 return 0;
}
