; ModuleID = '/home/carl/AnghaBench/micropython/ports/cc3200/hal/extr_prcm.c_PRCMSlowClkCtrGet.c'
source_filename = "/home/carl/AnghaBench/micropython/ports/cc3200/hal/extr_prcm.c_PRCMSlowClkCtrGet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@HIB3P3_BASE = common dso_local global i64 0, align 8
@HIB3P3_O_MEM_HIB_RTC_TIMER_READ = common dso_local global i64 0, align 8
@HIB3P3_O_MEM_HIB_RTC_TIMER_MSW = common dso_local global i64 0, align 8
@HIB3P3_O_MEM_HIB_RTC_TIMER_LSW = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @PRCMSlowClkCtrGet() #0 {
  %1 = alloca i64, align 8
  %2 = load i64, i64* @HIB3P3_BASE, align 8
  %3 = load i64, i64* @HIB3P3_O_MEM_HIB_RTC_TIMER_READ, align 8
  %4 = add nsw i64 %2, %3
  %5 = call i32 @MAP_PRCMHIBRegWrite(i64 %4, i32 1)
  %6 = load i64, i64* @HIB3P3_BASE, align 8
  %7 = load i64, i64* @HIB3P3_O_MEM_HIB_RTC_TIMER_MSW, align 8
  %8 = add nsw i64 %6, %7
  %9 = call i64 @MAP_PRCMHIBRegRead(i64 %8)
  store i64 %9, i64* %1, align 8
  %10 = load i64, i64* %1, align 8
  %11 = shl i64 %10, 32
  store i64 %11, i64* %1, align 8
  %12 = load i64, i64* @HIB3P3_BASE, align 8
  %13 = load i64, i64* @HIB3P3_O_MEM_HIB_RTC_TIMER_LSW, align 8
  %14 = add nsw i64 %12, %13
  %15 = call i64 @MAP_PRCMHIBRegRead(i64 %14)
  %16 = load i64, i64* %1, align 8
  %17 = or i64 %16, %15
  store i64 %17, i64* %1, align 8
  %18 = load i64, i64* %1, align 8
  ret i64 %18
}

declare dso_local i32 @MAP_PRCMHIBRegWrite(i64, i32) #1

declare dso_local i64 @MAP_PRCMHIBRegRead(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
