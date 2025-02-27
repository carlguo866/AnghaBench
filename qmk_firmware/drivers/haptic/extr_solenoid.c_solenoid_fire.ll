; ModuleID = '/home/carl/AnghaBench/qmk_firmware/drivers/haptic/extr_solenoid.c_solenoid_fire.c'
source_filename = "/home/carl/AnghaBench/qmk_firmware/drivers/haptic/extr_solenoid.c_solenoid_fire.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@haptic_config = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@solenoid_on = common dso_local global i32 0, align 4
@solenoid_buzzing = common dso_local global i32 0, align 4
@solenoid_start = common dso_local global i32 0, align 4
@SOLENOID_PIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @solenoid_fire() #0 {
  %1 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @haptic_config, i32 0, i32 0), align 8
  %2 = icmp ne i64 %1, 0
  br i1 %2, label %7, label %3

3:                                                ; preds = %0
  %4 = load i32, i32* @solenoid_on, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %3
  br label %18

7:                                                ; preds = %3, %0
  %8 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @haptic_config, i32 0, i32 0), align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %7
  %11 = load i32, i32* @solenoid_buzzing, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %10
  br label %18

14:                                               ; preds = %10, %7
  store i32 1, i32* @solenoid_on, align 4
  store i32 1, i32* @solenoid_buzzing, align 4
  %15 = call i32 (...) @timer_read()
  store i32 %15, i32* @solenoid_start, align 4
  %16 = load i32, i32* @SOLENOID_PIN, align 4
  %17 = call i32 @writePinHigh(i32 %16)
  br label %18

18:                                               ; preds = %14, %13, %6
  ret void
}

declare dso_local i32 @timer_read(...) #1

declare dso_local i32 @writePinHigh(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
