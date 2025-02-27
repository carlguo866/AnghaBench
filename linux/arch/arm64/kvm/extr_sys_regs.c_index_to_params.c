
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct sys_reg_params {int Op0; int Op1; int CRn; int CRm; int Op2; } ;


 int KVM_REG_ARCH_MASK ;
 int KVM_REG_ARM64_SYSREG_CRM_MASK ;
 int KVM_REG_ARM64_SYSREG_CRM_SHIFT ;
 int KVM_REG_ARM64_SYSREG_CRN_MASK ;
 int KVM_REG_ARM64_SYSREG_CRN_SHIFT ;
 int KVM_REG_ARM64_SYSREG_OP0_MASK ;
 int KVM_REG_ARM64_SYSREG_OP0_SHIFT ;
 int KVM_REG_ARM64_SYSREG_OP1_MASK ;
 int KVM_REG_ARM64_SYSREG_OP1_SHIFT ;
 int KVM_REG_ARM64_SYSREG_OP2_MASK ;
 int KVM_REG_ARM64_SYSREG_OP2_SHIFT ;
 int KVM_REG_ARM_COPROC_MASK ;
 int KVM_REG_SIZE_MASK ;


__attribute__((used)) static bool index_to_params(u64 id, struct sys_reg_params *params)
{
 switch (id & KVM_REG_SIZE_MASK) {
 case 128:

  if (id & ~(KVM_REG_ARCH_MASK | KVM_REG_SIZE_MASK
         | KVM_REG_ARM_COPROC_MASK
         | KVM_REG_ARM64_SYSREG_OP0_MASK
         | KVM_REG_ARM64_SYSREG_OP1_MASK
         | KVM_REG_ARM64_SYSREG_CRN_MASK
         | KVM_REG_ARM64_SYSREG_CRM_MASK
         | KVM_REG_ARM64_SYSREG_OP2_MASK))
   return 0;
  params->Op0 = ((id & KVM_REG_ARM64_SYSREG_OP0_MASK)
          >> KVM_REG_ARM64_SYSREG_OP0_SHIFT);
  params->Op1 = ((id & KVM_REG_ARM64_SYSREG_OP1_MASK)
          >> KVM_REG_ARM64_SYSREG_OP1_SHIFT);
  params->CRn = ((id & KVM_REG_ARM64_SYSREG_CRN_MASK)
          >> KVM_REG_ARM64_SYSREG_CRN_SHIFT);
  params->CRm = ((id & KVM_REG_ARM64_SYSREG_CRM_MASK)
          >> KVM_REG_ARM64_SYSREG_CRM_SHIFT);
  params->Op2 = ((id & KVM_REG_ARM64_SYSREG_OP2_MASK)
          >> KVM_REG_ARM64_SYSREG_OP2_SHIFT);
  return 1;
 default:
  return 0;
 }
}
