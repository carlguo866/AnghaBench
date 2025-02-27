
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intel_uncore_mmio_debug {int saved_mmio_check; int unclaimed_mmio_check; int suspend_count; int lock; } ;


 int lockdep_assert_held (int *) ;

__attribute__((used)) static void mmio_debug_resume(struct intel_uncore_mmio_debug *mmio_debug)
{
 lockdep_assert_held(&mmio_debug->lock);

 if (!--mmio_debug->suspend_count)
  mmio_debug->unclaimed_mmio_check = mmio_debug->saved_mmio_check;
}
