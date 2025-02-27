; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-core.c_cvmx_core_get_tlb_entries.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/octeon-sdk/extr_cvmx-core.c_cvmx_core_get_tlb_entries.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@OCTEON_CN3XXX = common dso_local global i32 0, align 4
@OCTEON_CN5XXX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cvmx_core_get_tlb_entries() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @OCTEON_CN3XXX, align 4
  %3 = call i64 @OCTEON_IS_MODEL(i32 %2)
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %0
  store i32 32, i32* %1, align 4
  br label %12

6:                                                ; preds = %0
  %7 = load i32, i32* @OCTEON_CN5XXX, align 4
  %8 = call i64 @OCTEON_IS_MODEL(i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %6
  store i32 64, i32* %1, align 4
  br label %12

11:                                               ; preds = %6
  store i32 128, i32* %1, align 4
  br label %12

12:                                               ; preds = %11, %10, %5
  %13 = load i32, i32* %1, align 4
  ret i32 %13
}

declare dso_local i64 @OCTEON_IS_MODEL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
