; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/xen/extr_irq.c_xen_halt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/xen/extr_irq.c_xen_halt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@VCPUOP_down = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @xen_halt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xen_halt() #0 {
  %1 = call i64 (...) @irqs_disabled()
  %2 = icmp ne i64 %1, 0
  br i1 %2, label %3, label %7

3:                                                ; preds = %0
  %4 = load i32, i32* @VCPUOP_down, align 4
  %5 = call i32 (...) @smp_processor_id()
  %6 = call i32 @HYPERVISOR_vcpu_op(i32 %4, i32 %5, i32* null)
  br label %9

7:                                                ; preds = %0
  %8 = call i32 (...) @xen_safe_halt()
  br label %9

9:                                                ; preds = %7, %3
  ret void
}

declare dso_local i64 @irqs_disabled(...) #1

declare dso_local i32 @HYPERVISOR_vcpu_op(i32, i32, i32*) #1

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i32 @xen_safe_halt(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
