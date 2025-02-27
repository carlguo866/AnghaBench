; ModuleID = '/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-lpss.c_pwm_lpss_suspend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-lpss.c_pwm_lpss_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.pwm_lpss_chip = type { i64, i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@PWM_SIZE = common dso_local global i32 0, align 4
@PWM = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pwm_lpss_suspend(%struct.device* %0) #0 {
  %2 = alloca %struct.device*, align 8
  %3 = alloca %struct.pwm_lpss_chip*, align 8
  %4 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %2, align 8
  %5 = load %struct.device*, %struct.device** %2, align 8
  %6 = call %struct.pwm_lpss_chip* @dev_get_drvdata(%struct.device* %5)
  store %struct.pwm_lpss_chip* %6, %struct.pwm_lpss_chip** %3, align 8
  store i32 0, i32* %4, align 4
  br label %7

7:                                                ; preds = %33, %1
  %8 = load i32, i32* %4, align 4
  %9 = load %struct.pwm_lpss_chip*, %struct.pwm_lpss_chip** %3, align 8
  %10 = getelementptr inbounds %struct.pwm_lpss_chip, %struct.pwm_lpss_chip* %9, i32 0, i32 2
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp slt i32 %8, %13
  br i1 %14, label %15, label %36

15:                                               ; preds = %7
  %16 = load %struct.pwm_lpss_chip*, %struct.pwm_lpss_chip** %3, align 8
  %17 = getelementptr inbounds %struct.pwm_lpss_chip, %struct.pwm_lpss_chip* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i32, i32* %4, align 4
  %20 = load i32, i32* @PWM_SIZE, align 4
  %21 = mul nsw i32 %19, %20
  %22 = sext i32 %21 to i64
  %23 = add nsw i64 %18, %22
  %24 = load i64, i64* @PWM, align 8
  %25 = add nsw i64 %23, %24
  %26 = call i32 @readl(i64 %25)
  %27 = load %struct.pwm_lpss_chip*, %struct.pwm_lpss_chip** %3, align 8
  %28 = getelementptr inbounds %struct.pwm_lpss_chip, %struct.pwm_lpss_chip* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = load i32, i32* %4, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  store i32 %26, i32* %32, align 4
  br label %33

33:                                               ; preds = %15
  %34 = load i32, i32* %4, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %4, align 4
  br label %7

36:                                               ; preds = %7
  ret i32 0
}

declare dso_local %struct.pwm_lpss_chip* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @readl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
