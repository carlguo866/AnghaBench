; ModuleID = '/home/carl/AnghaBench/linux/arch/arm64/kernel/extr_cpu_errata.c_get_spectre_v2_workaround_state.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm64/kernel/extr_cpu_errata.c_get_spectre_v2_workaround_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__spectrev2_safe = common dso_local global i64 0, align 8
@ARM64_BP_HARDEN_NOT_REQUIRED = common dso_local global i32 0, align 4
@__hardenbp_enab = common dso_local global i32 0, align 4
@ARM64_BP_HARDEN_UNKNOWN = common dso_local global i32 0, align 4
@ARM64_BP_HARDEN_WA_NEEDED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_spectre_v2_workaround_state() #0 {
  %1 = alloca i32, align 4
  %2 = load i64, i64* @__spectrev2_safe, align 8
  %3 = icmp ne i64 %2, 0
  br i1 %3, label %4, label %6

4:                                                ; preds = %0
  %5 = load i32, i32* @ARM64_BP_HARDEN_NOT_REQUIRED, align 4
  store i32 %5, i32* %1, align 4
  br label %13

6:                                                ; preds = %0
  %7 = load i32, i32* @__hardenbp_enab, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %11, label %9

9:                                                ; preds = %6
  %10 = load i32, i32* @ARM64_BP_HARDEN_UNKNOWN, align 4
  store i32 %10, i32* %1, align 4
  br label %13

11:                                               ; preds = %6
  %12 = load i32, i32* @ARM64_BP_HARDEN_WA_NEEDED, align 4
  store i32 %12, i32* %1, align 4
  br label %13

13:                                               ; preds = %11, %9, %4
  %14 = load i32, i32* %1, align 4
  ret i32 %14
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
