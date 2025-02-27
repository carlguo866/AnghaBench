; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/m68knommu/platform/532x/extr_config.c_get_sys_clock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/m68knommu/platform/532x/extr_config.c_get_sys_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MCF_CCM_MISCCR = common dso_local global i32 0, align 4
@MCF_CCM_MISCCR_LIMP = common dso_local global i32 0, align 4
@MCF_CCM_CDR = common dso_local global i32 0, align 4
@FREF = common dso_local global i32 0, align 4
@MCF_PLL_PFDR = common dso_local global i32 0, align 4
@BUSDIV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @get_sys_clock() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i32, i32* @MCF_CCM_MISCCR, align 4
  %4 = load i32, i32* @MCF_CCM_MISCCR_LIMP, align 4
  %5 = and i32 %3, %4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %15

7:                                                ; preds = %0
  %8 = load i32, i32* @MCF_CCM_CDR, align 4
  %9 = call i32 @MCF_CCM_CDR_LPDIV(i32 15)
  %10 = and i32 %8, %9
  store i32 %10, i32* %2, align 4
  %11 = load i32, i32* @FREF, align 4
  %12 = load i32, i32* %2, align 4
  %13 = shl i32 2, %12
  %14 = sdiv i32 %11, %13
  store i32 %14, i32* %1, align 4
  br label %22

15:                                               ; preds = %0
  %16 = load i32, i32* @FREF, align 4
  %17 = load i32, i32* @MCF_PLL_PFDR, align 4
  %18 = mul nsw i32 %16, %17
  %19 = load i32, i32* @BUSDIV, align 4
  %20 = mul nsw i32 %19, 4
  %21 = sdiv i32 %18, %20
  store i32 %21, i32* %1, align 4
  br label %22

22:                                               ; preds = %15, %7
  %23 = load i32, i32* %1, align 4
  ret i32 %23
}

declare dso_local i32 @MCF_CCM_CDR_LPDIV(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
