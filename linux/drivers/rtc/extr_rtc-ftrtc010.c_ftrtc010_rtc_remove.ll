; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-ftrtc010.c_ftrtc010_rtc_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-ftrtc010.c_ftrtc010_rtc_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.ftrtc010_rtc = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @ftrtc010_rtc_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ftrtc010_rtc_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.ftrtc010_rtc*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %4 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %5 = call %struct.ftrtc010_rtc* @platform_get_drvdata(%struct.platform_device* %4)
  store %struct.ftrtc010_rtc* %5, %struct.ftrtc010_rtc** %3, align 8
  %6 = load %struct.ftrtc010_rtc*, %struct.ftrtc010_rtc** %3, align 8
  %7 = getelementptr inbounds %struct.ftrtc010_rtc, %struct.ftrtc010_rtc* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @IS_ERR(i32 %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %16, label %11

11:                                               ; preds = %1
  %12 = load %struct.ftrtc010_rtc*, %struct.ftrtc010_rtc** %3, align 8
  %13 = getelementptr inbounds %struct.ftrtc010_rtc, %struct.ftrtc010_rtc* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @clk_disable_unprepare(i32 %14)
  br label %16

16:                                               ; preds = %11, %1
  %17 = load %struct.ftrtc010_rtc*, %struct.ftrtc010_rtc** %3, align 8
  %18 = getelementptr inbounds %struct.ftrtc010_rtc, %struct.ftrtc010_rtc* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @IS_ERR(i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %27, label %22

22:                                               ; preds = %16
  %23 = load %struct.ftrtc010_rtc*, %struct.ftrtc010_rtc** %3, align 8
  %24 = getelementptr inbounds %struct.ftrtc010_rtc, %struct.ftrtc010_rtc* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @clk_disable_unprepare(i32 %25)
  br label %27

27:                                               ; preds = %22, %16
  ret i32 0
}

declare dso_local %struct.ftrtc010_rtc* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @IS_ERR(i32) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
