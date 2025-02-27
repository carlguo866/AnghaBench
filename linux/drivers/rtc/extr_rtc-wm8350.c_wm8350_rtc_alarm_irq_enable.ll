; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-wm8350.c_wm8350_rtc_alarm_irq_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-wm8350.c_wm8350_rtc_alarm_irq_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.wm8350 = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i32)* @wm8350_rtc_alarm_irq_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8350_rtc_alarm_irq_enable(%struct.device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.wm8350*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.device*, %struct.device** %4, align 8
  %8 = call %struct.wm8350* @dev_get_drvdata(%struct.device* %7)
  store %struct.wm8350* %8, %struct.wm8350** %6, align 8
  %9 = load i32, i32* %5, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load %struct.wm8350*, %struct.wm8350** %6, align 8
  %13 = call i32 @wm8350_rtc_start_alarm(%struct.wm8350* %12)
  store i32 %13, i32* %3, align 4
  br label %17

14:                                               ; preds = %2
  %15 = load %struct.wm8350*, %struct.wm8350** %6, align 8
  %16 = call i32 @wm8350_rtc_stop_alarm(%struct.wm8350* %15)
  store i32 %16, i32* %3, align 4
  br label %17

17:                                               ; preds = %14, %11
  %18 = load i32, i32* %3, align 4
  ret i32 %18
}

declare dso_local %struct.wm8350* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @wm8350_rtc_start_alarm(%struct.wm8350*) #1

declare dso_local i32 @wm8350_rtc_stop_alarm(%struct.wm8350*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
