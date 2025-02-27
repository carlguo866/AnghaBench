; ModuleID = '/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-imx1.c_pwm_imx1_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-imx1.c_pwm_imx1_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pwm_chip = type { i32 }
%struct.pwm_device = type { i32 }
%struct.pwm_imx1_chip = type { i64 }

@MX1_PWMP = common dso_local global i64 0, align 8
@MX1_PWMS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pwm_chip*, %struct.pwm_device*, i32, i32)* @pwm_imx1_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pwm_imx1_config(%struct.pwm_chip* %0, %struct.pwm_device* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.pwm_chip*, align 8
  %6 = alloca %struct.pwm_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.pwm_imx1_chip*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.pwm_chip* %0, %struct.pwm_chip** %5, align 8
  store %struct.pwm_device* %1, %struct.pwm_device** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load %struct.pwm_chip*, %struct.pwm_chip** %5, align 8
  %13 = call %struct.pwm_imx1_chip* @to_pwm_imx1_chip(%struct.pwm_chip* %12)
  store %struct.pwm_imx1_chip* %13, %struct.pwm_imx1_chip** %9, align 8
  %14 = load %struct.pwm_imx1_chip*, %struct.pwm_imx1_chip** %9, align 8
  %15 = getelementptr inbounds %struct.pwm_imx1_chip, %struct.pwm_imx1_chip* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @MX1_PWMP, align 8
  %18 = add nsw i64 %16, %17
  %19 = call i32 @readl(i64 %18)
  store i32 %19, i32* %10, align 4
  %20 = load i32, i32* %10, align 4
  %21 = load i32, i32* %7, align 4
  %22 = mul nsw i32 %20, %21
  %23 = load i32, i32* %8, align 4
  %24 = sdiv i32 %22, %23
  store i32 %24, i32* %11, align 4
  %25 = load i32, i32* %10, align 4
  %26 = load i32, i32* %11, align 4
  %27 = sub nsw i32 %25, %26
  %28 = load %struct.pwm_imx1_chip*, %struct.pwm_imx1_chip** %9, align 8
  %29 = getelementptr inbounds %struct.pwm_imx1_chip, %struct.pwm_imx1_chip* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @MX1_PWMS, align 8
  %32 = add nsw i64 %30, %31
  %33 = call i32 @writel(i32 %27, i64 %32)
  ret i32 0
}

declare dso_local %struct.pwm_imx1_chip* @to_pwm_imx1_chip(%struct.pwm_chip*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
