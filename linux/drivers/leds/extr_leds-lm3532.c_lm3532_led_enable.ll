; ModuleID = '/home/carl/AnghaBench/linux/drivers/leds/extr_leds-lm3532.c_lm3532_led_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/leds/extr_leds-lm3532.c_lm3532_led_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lm3532_led = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32, i32 }

@LM3532_REG_ENABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Failed to set ctrl:%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lm3532_led*)* @lm3532_led_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lm3532_led_enable(%struct.lm3532_led* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lm3532_led*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.lm3532_led* %0, %struct.lm3532_led** %3, align 8
  %6 = load %struct.lm3532_led*, %struct.lm3532_led** %3, align 8
  %7 = getelementptr inbounds %struct.lm3532_led, %struct.lm3532_led* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 8
  %9 = call i32 @BIT(i32 %8)
  store i32 %9, i32* %4, align 4
  %10 = load %struct.lm3532_led*, %struct.lm3532_led** %3, align 8
  %11 = getelementptr inbounds %struct.lm3532_led, %struct.lm3532_led* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %50

15:                                               ; preds = %1
  %16 = load %struct.lm3532_led*, %struct.lm3532_led** %3, align 8
  %17 = getelementptr inbounds %struct.lm3532_led, %struct.lm3532_led* %16, i32 0, i32 1
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @LM3532_REG_ENABLE, align 4
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @regmap_update_bits(i32 %20, i32 %21, i32 %22, i32 %23)
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %5, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %36

27:                                               ; preds = %15
  %28 = load %struct.lm3532_led*, %struct.lm3532_led** %3, align 8
  %29 = getelementptr inbounds %struct.lm3532_led, %struct.lm3532_led* %28, i32 0, i32 1
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @dev_err(i32 %32, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %33)
  %35 = load i32, i32* %5, align 4
  store i32 %35, i32* %2, align 4
  br label %50

36:                                               ; preds = %15
  %37 = load %struct.lm3532_led*, %struct.lm3532_led** %3, align 8
  %38 = getelementptr inbounds %struct.lm3532_led, %struct.lm3532_led* %37, i32 0, i32 1
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @regulator_enable(i32 %41)
  store i32 %42, i32* %5, align 4
  %43 = load i32, i32* %5, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %36
  %46 = load i32, i32* %5, align 4
  store i32 %46, i32* %2, align 4
  br label %50

47:                                               ; preds = %36
  %48 = load %struct.lm3532_led*, %struct.lm3532_led** %3, align 8
  %49 = getelementptr inbounds %struct.lm3532_led, %struct.lm3532_led* %48, i32 0, i32 0
  store i32 1, i32* %49, align 8
  store i32 0, i32* %2, align 4
  br label %50

50:                                               ; preds = %47, %45, %27, %14
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @regulator_enable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
