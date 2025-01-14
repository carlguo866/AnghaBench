
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct intel_uncore {int dummy; } ;
typedef int i915_reg_t ;


 int gen3_assert_iir_is_zero (struct intel_uncore*,int ) ;
 int intel_uncore_posting_read (struct intel_uncore*,int ) ;
 int intel_uncore_write (struct intel_uncore*,int ,int ) ;

void gen3_irq_init(struct intel_uncore *uncore,
     i915_reg_t imr, u32 imr_val,
     i915_reg_t ier, u32 ier_val,
     i915_reg_t iir)
{
 gen3_assert_iir_is_zero(uncore, iir);

 intel_uncore_write(uncore, ier, ier_val);
 intel_uncore_write(uncore, imr, imr_val);
 intel_uncore_posting_read(uncore, imr);
}
