; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-sa1100.c_sa1100_rtc_alarm_irq_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-sa1100.c_sa1100_rtc_alarm_irq_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.sa1100_rtc = type { i32, i32 }

@RTSR_ALE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i32)* @sa1100_rtc_alarm_irq_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sa1100_rtc_alarm_irq_enable(%struct.device* %0, i32 %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.sa1100_rtc*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.device*, %struct.device** %3, align 8
  %8 = call %struct.sa1100_rtc* @dev_get_drvdata(%struct.device* %7)
  store %struct.sa1100_rtc* %8, %struct.sa1100_rtc** %6, align 8
  %9 = load %struct.sa1100_rtc*, %struct.sa1100_rtc** %6, align 8
  %10 = getelementptr inbounds %struct.sa1100_rtc, %struct.sa1100_rtc* %9, i32 0, i32 0
  %11 = call i32 @spin_lock_irq(i32* %10)
  %12 = load %struct.sa1100_rtc*, %struct.sa1100_rtc** %6, align 8
  %13 = getelementptr inbounds %struct.sa1100_rtc, %struct.sa1100_rtc* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @readl_relaxed(i32 %14)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %4, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %2
  %19 = load i32, i32* @RTSR_ALE, align 4
  %20 = load i32, i32* %5, align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* %5, align 4
  br label %27

22:                                               ; preds = %2
  %23 = load i32, i32* @RTSR_ALE, align 4
  %24 = xor i32 %23, -1
  %25 = load i32, i32* %5, align 4
  %26 = and i32 %25, %24
  store i32 %26, i32* %5, align 4
  br label %27

27:                                               ; preds = %22, %18
  %28 = load i32, i32* %5, align 4
  %29 = load %struct.sa1100_rtc*, %struct.sa1100_rtc** %6, align 8
  %30 = getelementptr inbounds %struct.sa1100_rtc, %struct.sa1100_rtc* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @writel_relaxed(i32 %28, i32 %31)
  %33 = load %struct.sa1100_rtc*, %struct.sa1100_rtc** %6, align 8
  %34 = getelementptr inbounds %struct.sa1100_rtc, %struct.sa1100_rtc* %33, i32 0, i32 0
  %35 = call i32 @spin_unlock_irq(i32* %34)
  ret i32 0
}

declare dso_local %struct.sa1100_rtc* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @readl_relaxed(i32) #1

declare dso_local i32 @writel_relaxed(i32, i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
