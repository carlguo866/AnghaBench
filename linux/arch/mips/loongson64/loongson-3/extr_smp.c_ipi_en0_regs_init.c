
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ EN0 ;
 scalar_t__ SMP_CORE0_OFFSET ;
 scalar_t__ SMP_CORE1_OFFSET ;
 scalar_t__ SMP_CORE2_OFFSET ;
 scalar_t__ SMP_CORE3_OFFSET ;
 scalar_t__ SMP_CORE_GROUP0_BASE ;
 scalar_t__ SMP_CORE_GROUP1_BASE ;
 scalar_t__ SMP_CORE_GROUP2_BASE ;
 scalar_t__ SMP_CORE_GROUP3_BASE ;
 void** ipi_en0_regs ;

__attribute__((used)) static void ipi_en0_regs_init(void)
{
 ipi_en0_regs[0] = (void *)
  (SMP_CORE_GROUP0_BASE + SMP_CORE0_OFFSET + EN0);
 ipi_en0_regs[1] = (void *)
  (SMP_CORE_GROUP0_BASE + SMP_CORE1_OFFSET + EN0);
 ipi_en0_regs[2] = (void *)
  (SMP_CORE_GROUP0_BASE + SMP_CORE2_OFFSET + EN0);
 ipi_en0_regs[3] = (void *)
  (SMP_CORE_GROUP0_BASE + SMP_CORE3_OFFSET + EN0);
 ipi_en0_regs[4] = (void *)
  (SMP_CORE_GROUP1_BASE + SMP_CORE0_OFFSET + EN0);
 ipi_en0_regs[5] = (void *)
  (SMP_CORE_GROUP1_BASE + SMP_CORE1_OFFSET + EN0);
 ipi_en0_regs[6] = (void *)
  (SMP_CORE_GROUP1_BASE + SMP_CORE2_OFFSET + EN0);
 ipi_en0_regs[7] = (void *)
  (SMP_CORE_GROUP1_BASE + SMP_CORE3_OFFSET + EN0);
 ipi_en0_regs[8] = (void *)
  (SMP_CORE_GROUP2_BASE + SMP_CORE0_OFFSET + EN0);
 ipi_en0_regs[9] = (void *)
  (SMP_CORE_GROUP2_BASE + SMP_CORE1_OFFSET + EN0);
 ipi_en0_regs[10] = (void *)
  (SMP_CORE_GROUP2_BASE + SMP_CORE2_OFFSET + EN0);
 ipi_en0_regs[11] = (void *)
  (SMP_CORE_GROUP2_BASE + SMP_CORE3_OFFSET + EN0);
 ipi_en0_regs[12] = (void *)
  (SMP_CORE_GROUP3_BASE + SMP_CORE0_OFFSET + EN0);
 ipi_en0_regs[13] = (void *)
  (SMP_CORE_GROUP3_BASE + SMP_CORE1_OFFSET + EN0);
 ipi_en0_regs[14] = (void *)
  (SMP_CORE_GROUP3_BASE + SMP_CORE2_OFFSET + EN0);
 ipi_en0_regs[15] = (void *)
  (SMP_CORE_GROUP3_BASE + SMP_CORE3_OFFSET + EN0);
}
