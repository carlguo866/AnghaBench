
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long uint64_t ;
typedef int uint32_t ;


 int EINVAL ;
 int KASSERT (int,char*) ;
 int MSR_VMX_BASIC ;
 int panic (char*,int,int,int) ;
 unsigned long rdmsr (int) ;
 int vmx_ctl_allows_one_setting (unsigned long,int) ;
 int vmx_ctl_allows_zero_setting (unsigned long,int) ;

int
vmx_set_ctlreg(int ctl_reg, int true_ctl_reg, uint32_t ones_mask,
        uint32_t zeros_mask, uint32_t *retval)
{
 int i;
 uint64_t val, trueval;
 bool true_ctls_avail, one_allowed, zero_allowed;


 if ((ones_mask ^ zeros_mask) != (ones_mask | zeros_mask))
  return (EINVAL);

 true_ctls_avail = (rdmsr(MSR_VMX_BASIC) & (1UL << 55)) != 0;

 val = rdmsr(ctl_reg);
 if (true_ctls_avail)
  trueval = rdmsr(true_ctl_reg);
 else
  trueval = val;

 for (i = 0; i < 32; i++) {
  one_allowed = vmx_ctl_allows_one_setting(trueval, i);
  zero_allowed = vmx_ctl_allows_zero_setting(trueval, i);

  KASSERT(one_allowed || zero_allowed,
   ("invalid zero/one setting for bit %d of ctl 0x%0x, "
    "truectl 0x%0x\n", i, ctl_reg, true_ctl_reg));

  if (zero_allowed && !one_allowed) {
   if (ones_mask & (1 << i))
    return (EINVAL);
   *retval &= ~(1 << i);
  } else if (one_allowed && !zero_allowed) {
   if (zeros_mask & (1 << i))
    return (EINVAL);
   *retval |= 1 << i;
  } else {
   if (zeros_mask & (1 << i))
    *retval &= ~(1 << i);
   else if (ones_mask & (1 << i))
    *retval |= 1 << i;
   else if (!true_ctls_avail)
    *retval &= ~(1 << i);
   else if (vmx_ctl_allows_zero_setting(val, i))
    *retval &= ~(1 << i);
   else if (vmx_ctl_allows_one_setting(val, i))
    *retval |= 1 << i;
   else {
    panic("vmx_set_ctlreg: unable to determine "
          "correct value of ctl bit %d for msr "
          "0x%0x and true msr 0x%0x", i, ctl_reg,
          true_ctl_reg);
   }
  }
 }

 return (0);
}
