; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/xen/extr_xencomm.c_xencomm_initialize.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/xen/extr_xencomm.c_xencomm_initialize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@KERNEL_START = common dso_local global i64 0, align 8
@kernel_virtual_offset = common dso_local global i64 0, align 8
@is_xencomm_initialized = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xencomm_initialize() #0 {
  %1 = load i64, i64* @KERNEL_START, align 8
  %2 = load i64, i64* @KERNEL_START, align 8
  %3 = call i64 @ia64_tpa(i64 %2)
  %4 = sub nsw i64 %1, %3
  store i64 %4, i64* @kernel_virtual_offset, align 8
  store i32 1, i32* @is_xencomm_initialized, align 4
  ret void
}

declare dso_local i64 @ia64_tpa(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
