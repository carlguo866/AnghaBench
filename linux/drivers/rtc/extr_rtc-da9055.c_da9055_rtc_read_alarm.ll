; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-da9055.c_da9055_rtc_read_alarm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-da9055.c_da9055_rtc_read_alarm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.rtc_wkalrm = type { i32, %struct.rtc_time }
%struct.rtc_time = type { i32 }
%struct.da9055_rtc = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.rtc_wkalrm*)* @da9055_rtc_read_alarm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @da9055_rtc_read_alarm(%struct.device* %0, %struct.rtc_wkalrm* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.rtc_wkalrm*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.rtc_time*, align 8
  %8 = alloca %struct.da9055_rtc*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.rtc_wkalrm* %1, %struct.rtc_wkalrm** %5, align 8
  %9 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %10 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %9, i32 0, i32 1
  store %struct.rtc_time* %10, %struct.rtc_time** %7, align 8
  %11 = load %struct.device*, %struct.device** %4, align 8
  %12 = call %struct.da9055_rtc* @dev_get_drvdata(%struct.device* %11)
  store %struct.da9055_rtc* %12, %struct.da9055_rtc** %8, align 8
  %13 = load %struct.da9055_rtc*, %struct.da9055_rtc** %8, align 8
  %14 = getelementptr inbounds %struct.da9055_rtc, %struct.da9055_rtc* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.rtc_time*, %struct.rtc_time** %7, align 8
  %17 = call i32 @da9055_read_alarm(i32 %15, %struct.rtc_time* %16)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %2
  %21 = load i32, i32* %6, align 4
  store i32 %21, i32* %3, align 4
  br label %29

22:                                               ; preds = %2
  %23 = load %struct.da9055_rtc*, %struct.da9055_rtc** %8, align 8
  %24 = getelementptr inbounds %struct.da9055_rtc, %struct.da9055_rtc* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @da9055_rtc_get_alarm_status(i32 %25)
  %27 = load %struct.rtc_wkalrm*, %struct.rtc_wkalrm** %5, align 8
  %28 = getelementptr inbounds %struct.rtc_wkalrm, %struct.rtc_wkalrm* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  store i32 0, i32* %3, align 4
  br label %29

29:                                               ; preds = %22, %20
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

declare dso_local %struct.da9055_rtc* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @da9055_read_alarm(i32, %struct.rtc_time*) #1

declare dso_local i32 @da9055_rtc_get_alarm_status(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
