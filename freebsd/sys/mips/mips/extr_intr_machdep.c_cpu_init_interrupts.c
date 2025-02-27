
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MAXCOMLEN ;
 int NHARD_IRQS ;
 int NSOFT_IRQS ;
 int * mips_intr_counters ;
 int mips_intrcnt_create (char*) ;
 int snprintf (char*,int,char*,int) ;

void
cpu_init_interrupts()
{
 int i;
 char name[MAXCOMLEN + 1];





 for (i = 0; i < NSOFT_IRQS; i++) {
  snprintf(name, MAXCOMLEN + 1, "sint%d:", i);
  mips_intr_counters[i] = mips_intrcnt_create(name);
 }

 for (i = 0; i < NHARD_IRQS; i++) {
  snprintf(name, MAXCOMLEN + 1, "int%d:", i);
  mips_intr_counters[NSOFT_IRQS + i] = mips_intrcnt_create(name);
 }
}
