; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-vr41xx.c_vr41xx_rtc_set_alarm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-vr41xx.c_vr41xx_rtc_set_alarm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_wkalrm = type { i64, i32 }

@rtc_lock = common dso_local global i32 0, align 4
@alarm_enabled = common dso_local global i64 0, align 8
@aie_irq = common dso_local global i32 0, align 4
@ECMPLREG = common dso_local global i32 0, align 4
@ECMPMREG = common dso_local global i32 0, align 4
@ECMPHREG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_wkalrm*)* @vr41xx_rtc_set_alarm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vr41xx_rtc_set_alarm(%struct.device* %0, %struct.rtc_wkalrm* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.rtc_wkalrm*, align 8
  %5 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  store %struct.rtc_wkalrm* %1, %struct.rtc_wkalrm** %4, align 8
  %6 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %4, align 8
  %7 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %6, i32 0, i32 1
  %8 = call i32 @rtc_tm_to_time64(i32* %7)
  store i32 %8, i32* %5, align 4
  %9 = call i32 @spin_lock_irq(i32* @rtc_lock)
  %10 = load i64, i64* @alarm_enabled, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load i32, i32* @aie_irq, align 4
  %14 = call i32 @disable_irq(i32 %13)
  br label %15

15:                                               ; preds = %12, %2
  %16 = load i32, i32* @ECMPLREG, align 4
  %17 = load i32, i32* %5, align 4
  %18 = shl i32 %17, 15
  %19 = call i32 @rtc1_write(i32 %16, i32 %18)
  %20 = load i32, i32* @ECMPMREG, align 4
  %21 = load i32, i32* %5, align 4
  %22 = ashr i32 %21, 1
  %23 = call i32 @rtc1_write(i32 %20, i32 %22)
  %24 = load i32, i32* @ECMPHREG, align 4
  %25 = load i32, i32* %5, align 4
  %26 = ashr i32 %25, 17
  %27 = call i32 @rtc1_write(i32 %24, i32 %26)
  %28 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %4, align 8
  %29 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %15
  %33 = load i32, i32* @aie_irq, align 4
  %34 = call i32 @enable_irq(i32 %33)
  br label %35

35:                                               ; preds = %32, %15
  %36 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %4, align 8
  %37 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  store i64 %38, i64* @alarm_enabled, align 8
  %39 = call i32 @spin_unlock_irq(i32* @rtc_lock)
  ret i32 0
}

declare dso_local i32 @rtc_tm_to_time64(i32*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @disable_irq(i32) #1

declare dso_local i32 @rtc1_write(i32, i32) #1

declare dso_local i32 @enable_irq(i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
