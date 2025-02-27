; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-pxa/extr_sharpsl_pm.c_sharpsl_pm_led.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-pxa/extr_sharpsl_pm.c_sharpsl_pm_led.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@SHARPSL_LED_ERROR = common dso_local global i32 0, align 4
@sharpsl_pm = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@.str = private unnamed_addr constant [17 x i8] c"Charging Error!\0A\00", align 1
@SHARPSL_LED_ON = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"Charge LED On\0A\00", align 1
@sharpsl_charge_led_trigger = common dso_local global i32 0, align 4
@LED_FULL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"Charge LED Off\0A\00", align 1
@LED_OFF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sharpsl_pm_led(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = load i32, i32* @SHARPSL_LED_ERROR, align 4
  %5 = icmp eq i32 %3, %4
  br i1 %5, label %6, label %9

6:                                                ; preds = %1
  %7 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sharpsl_pm, i32 0, i32 0), align 4
  %8 = call i32 @dev_err(i32 %7, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  br label %26

9:                                                ; preds = %1
  %10 = load i32, i32* %2, align 4
  %11 = load i32, i32* @SHARPSL_LED_ON, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %19

13:                                               ; preds = %9
  %14 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sharpsl_pm, i32 0, i32 0), align 4
  %15 = call i32 @dev_dbg(i32 %14, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %16 = load i32, i32* @sharpsl_charge_led_trigger, align 4
  %17 = load i32, i32* @LED_FULL, align 4
  %18 = call i32 @led_trigger_event(i32 %16, i32 %17)
  br label %25

19:                                               ; preds = %9
  %20 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @sharpsl_pm, i32 0, i32 0), align 4
  %21 = call i32 @dev_dbg(i32 %20, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %22 = load i32, i32* @sharpsl_charge_led_trigger, align 4
  %23 = load i32, i32* @LED_OFF, align 4
  %24 = call i32 @led_trigger_event(i32 %22, i32 %23)
  br label %25

25:                                               ; preds = %19, %13
  br label %26

26:                                               ; preds = %25, %6
  ret void
}

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @led_trigger_event(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
