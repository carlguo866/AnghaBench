; ModuleID = '/home/carl/AnghaBench/micropython/ports/cc3200/hal/extr_wdt.c_WatchdogIntStatus.c'
source_filename = "/home/carl/AnghaBench/micropython/ports/cc3200/hal/extr_wdt.c_WatchdogIntStatus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@WDT_BASE = common dso_local global i64 0, align 8
@WDT_O_MIS = common dso_local global i64 0, align 8
@WDT_O_RIS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @WatchdogIntStatus(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = load i64, i64* %4, align 8
  %7 = load i64, i64* @WDT_BASE, align 8
  %8 = icmp eq i64 %6, %7
  %9 = zext i1 %8 to i32
  %10 = call i32 @ASSERT(i32 %9)
  %11 = load i64, i64* %5, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %2
  %14 = load i64, i64* %4, align 8
  %15 = load i64, i64* @WDT_O_MIS, align 8
  %16 = add i64 %14, %15
  %17 = call i64 @HWREG(i64 %16)
  store i64 %17, i64* %3, align 8
  br label %23

18:                                               ; preds = %2
  %19 = load i64, i64* %4, align 8
  %20 = load i64, i64* @WDT_O_RIS, align 8
  %21 = add i64 %19, %20
  %22 = call i64 @HWREG(i64 %21)
  store i64 %22, i64* %3, align 8
  br label %23

23:                                               ; preds = %18, %13
  %24 = load i64, i64* %3, align 8
  ret i64 %24
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i64 @HWREG(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
