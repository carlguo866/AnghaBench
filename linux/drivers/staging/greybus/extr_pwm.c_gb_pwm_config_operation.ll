; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_pwm.c_gb_pwm_config_operation.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_pwm.c_gb_pwm_config_operation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gb_pwm_chip = type { i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.gb_pwm_config_request = type { i8*, i8*, i64 }
%struct.gbphy_device = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@GB_PWM_TYPE_CONFIG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gb_pwm_chip*, i64, i32, i32)* @gb_pwm_config_operation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gb_pwm_config_operation(%struct.gb_pwm_chip* %0, i64 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.gb_pwm_chip*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.gb_pwm_config_request, align 8
  %11 = alloca %struct.gbphy_device*, align 8
  %12 = alloca i32, align 4
  store %struct.gb_pwm_chip* %0, %struct.gb_pwm_chip** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load i64, i64* %7, align 8
  %14 = load %struct.gb_pwm_chip*, %struct.gb_pwm_chip** %6, align 8
  %15 = getelementptr inbounds %struct.gb_pwm_chip, %struct.gb_pwm_chip* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp sgt i64 %13, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %4
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %5, align 4
  br label %50

21:                                               ; preds = %4
  %22 = load i64, i64* %7, align 8
  %23 = getelementptr inbounds %struct.gb_pwm_config_request, %struct.gb_pwm_config_request* %10, i32 0, i32 2
  store i64 %22, i64* %23, align 8
  %24 = load i32, i32* %8, align 4
  %25 = call i8* @cpu_to_le32(i32 %24)
  %26 = getelementptr inbounds %struct.gb_pwm_config_request, %struct.gb_pwm_config_request* %10, i32 0, i32 1
  store i8* %25, i8** %26, align 8
  %27 = load i32, i32* %9, align 4
  %28 = call i8* @cpu_to_le32(i32 %27)
  %29 = getelementptr inbounds %struct.gb_pwm_config_request, %struct.gb_pwm_config_request* %10, i32 0, i32 0
  store i8* %28, i8** %29, align 8
  %30 = load %struct.gb_pwm_chip*, %struct.gb_pwm_chip** %6, align 8
  %31 = getelementptr inbounds %struct.gb_pwm_chip, %struct.gb_pwm_chip* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call %struct.gbphy_device* @to_gbphy_dev(i32 %33)
  store %struct.gbphy_device* %34, %struct.gbphy_device** %11, align 8
  %35 = load %struct.gbphy_device*, %struct.gbphy_device** %11, align 8
  %36 = call i32 @gbphy_runtime_get_sync(%struct.gbphy_device* %35)
  store i32 %36, i32* %12, align 4
  %37 = load i32, i32* %12, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %21
  %40 = load i32, i32* %12, align 4
  store i32 %40, i32* %5, align 4
  br label %50

41:                                               ; preds = %21
  %42 = load %struct.gb_pwm_chip*, %struct.gb_pwm_chip** %6, align 8
  %43 = getelementptr inbounds %struct.gb_pwm_chip, %struct.gb_pwm_chip* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @GB_PWM_TYPE_CONFIG, align 4
  %46 = call i32 @gb_operation_sync(i32 %44, i32 %45, %struct.gb_pwm_config_request* %10, i32 24, i32* null, i32 0)
  store i32 %46, i32* %12, align 4
  %47 = load %struct.gbphy_device*, %struct.gbphy_device** %11, align 8
  %48 = call i32 @gbphy_runtime_put_autosuspend(%struct.gbphy_device* %47)
  %49 = load i32, i32* %12, align 4
  store i32 %49, i32* %5, align 4
  br label %50

50:                                               ; preds = %41, %39, %18
  %51 = load i32, i32* %5, align 4
  ret i32 %51
}

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local %struct.gbphy_device* @to_gbphy_dev(i32) #1

declare dso_local i32 @gbphy_runtime_get_sync(%struct.gbphy_device*) #1

declare dso_local i32 @gb_operation_sync(i32, i32, %struct.gb_pwm_config_request*, i32, i32*, i32) #1

declare dso_local i32 @gbphy_runtime_put_autosuspend(%struct.gbphy_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
