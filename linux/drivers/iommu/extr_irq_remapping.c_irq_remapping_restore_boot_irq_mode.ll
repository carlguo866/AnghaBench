; ModuleID = '/home/carl/AnghaBench/linux/drivers/iommu/extr_irq_remapping.c_irq_remapping_restore_boot_irq_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/iommu/extr_irq_remapping.c_irq_remapping_restore_boot_irq_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@X86_FEATURE_APIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @irq_remapping_restore_boot_irq_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @irq_remapping_restore_boot_irq_mode() #0 {
  %1 = load i32, i32* @X86_FEATURE_APIC, align 4
  %2 = call i64 @boot_cpu_has(i32 %1)
  %3 = icmp ne i64 %2, 0
  br i1 %3, label %7, label %4

4:                                                ; preds = %0
  %5 = call i64 (...) @apic_from_smp_config()
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %4, %0
  %8 = call i32 @disconnect_bsp_APIC(i32 0)
  br label %9

9:                                                ; preds = %7, %4
  ret void
}

declare dso_local i64 @boot_cpu_has(i32) #1

declare dso_local i64 @apic_from_smp_config(...) #1

declare dso_local i32 @disconnect_bsp_APIC(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
