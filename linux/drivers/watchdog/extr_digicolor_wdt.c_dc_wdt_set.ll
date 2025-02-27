; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_digicolor_wdt.c_dc_wdt_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_digicolor_wdt.c_dc_wdt_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc_wdt = type { i32, i64 }

@TIMER_A_CONTROL = common dso_local global i64 0, align 8
@TIMER_A_COUNT = common dso_local global i64 0, align 8
@TIMER_A_ENABLE_COUNT = common dso_local global i32 0, align 4
@TIMER_A_ENABLE_WATCHDOG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dc_wdt*, i32)* @dc_wdt_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dc_wdt_set(%struct.dc_wdt* %0, i32 %1) #0 {
  %3 = alloca %struct.dc_wdt*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.dc_wdt* %0, %struct.dc_wdt** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.dc_wdt*, %struct.dc_wdt** %3, align 8
  %7 = getelementptr inbounds %struct.dc_wdt, %struct.dc_wdt* %6, i32 0, i32 0
  %8 = load i64, i64* %5, align 8
  %9 = call i32 @spin_lock_irqsave(i32* %7, i64 %8)
  %10 = load %struct.dc_wdt*, %struct.dc_wdt** %3, align 8
  %11 = getelementptr inbounds %struct.dc_wdt, %struct.dc_wdt* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @TIMER_A_CONTROL, align 8
  %14 = add nsw i64 %12, %13
  %15 = call i32 @writel_relaxed(i32 0, i64 %14)
  %16 = load i32, i32* %4, align 4
  %17 = load %struct.dc_wdt*, %struct.dc_wdt** %3, align 8
  %18 = getelementptr inbounds %struct.dc_wdt, %struct.dc_wdt* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @TIMER_A_COUNT, align 8
  %21 = add nsw i64 %19, %20
  %22 = call i32 @writel_relaxed(i32 %16, i64 %21)
  %23 = load i32, i32* @TIMER_A_ENABLE_COUNT, align 4
  %24 = load i32, i32* @TIMER_A_ENABLE_WATCHDOG, align 4
  %25 = or i32 %23, %24
  %26 = load %struct.dc_wdt*, %struct.dc_wdt** %3, align 8
  %27 = getelementptr inbounds %struct.dc_wdt, %struct.dc_wdt* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @TIMER_A_CONTROL, align 8
  %30 = add nsw i64 %28, %29
  %31 = call i32 @writel_relaxed(i32 %25, i64 %30)
  %32 = load %struct.dc_wdt*, %struct.dc_wdt** %3, align 8
  %33 = getelementptr inbounds %struct.dc_wdt, %struct.dc_wdt* %32, i32 0, i32 0
  %34 = load i64, i64* %5, align 8
  %35 = call i32 @spin_unlock_irqrestore(i32* %33, i64 %34)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
