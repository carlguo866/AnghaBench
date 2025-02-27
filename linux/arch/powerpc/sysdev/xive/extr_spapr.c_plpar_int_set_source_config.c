
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int H_INT_SET_SOURCE_CONFIG ;
 scalar_t__ plpar_busy_delay (long) ;
 long plpar_hcall_norets (int ,unsigned long,unsigned long,unsigned long,unsigned long,unsigned long) ;
 int pr_devel (char*,unsigned long,unsigned long,unsigned long,unsigned long,unsigned long) ;
 int pr_err (char*,unsigned long,unsigned long,unsigned long,long) ;

__attribute__((used)) static long plpar_int_set_source_config(unsigned long flags,
     unsigned long lisn,
     unsigned long target,
     unsigned long prio,
     unsigned long sw_irq)
{
 long rc;


 pr_devel("H_INT_SET_SOURCE_CONFIG flags=%lx lisn=%lx target=%lx prio=%lx sw_irq=%lx\n",
  flags, lisn, target, prio, sw_irq);


 do {
  rc = plpar_hcall_norets(H_INT_SET_SOURCE_CONFIG, flags, lisn,
     target, prio, sw_irq);
 } while (plpar_busy_delay(rc));

 if (rc) {
  pr_err("H_INT_SET_SOURCE_CONFIG lisn=%ld target=%lx prio=%lx failed %ld\n",
         lisn, target, prio, rc);
  return rc;
 }

 return 0;
}
