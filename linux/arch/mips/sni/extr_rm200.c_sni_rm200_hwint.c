
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;


 int C_IRQ0 ;
 int C_IRQ5 ;
 int IE_IRQ0 ;
 scalar_t__ MIPS_CPU_IRQ_BASE ;
 scalar_t__ SNI_RM200_INT_ENA_REG ;
 scalar_t__ SNI_RM200_INT_START ;
 scalar_t__ SNI_RM200_INT_STAT_REG ;
 int clear_c0_status (int ) ;
 int do_IRQ (scalar_t__) ;
 int ffs (int) ;
 scalar_t__ likely (int) ;
 int read_c0_cause () ;
 int read_c0_status () ;
 int set_c0_status (int ) ;

__attribute__((used)) static void sni_rm200_hwint(void)
{
 u32 pending = read_c0_cause() & read_c0_status();
 u8 mask;
 u8 stat;
 int irq;

 if (pending & C_IRQ5)
  do_IRQ(MIPS_CPU_IRQ_BASE + 7);
 else if (pending & C_IRQ0) {
  clear_c0_status(IE_IRQ0);
  mask = *(volatile u8 *)SNI_RM200_INT_ENA_REG ^ 0x1f;
  stat = *(volatile u8 *)SNI_RM200_INT_STAT_REG ^ 0x14;
  irq = ffs(stat & mask & 0x1f);

  if (likely(irq > 0))
   do_IRQ(irq + SNI_RM200_INT_START - 1);
  set_c0_status(IE_IRQ0);
 }
}
