; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_kms.c_dpu_unbind.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_kms.c_dpu_unbind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.platform_device = type { i32 }
%struct.dpu_kms = type { i64, %struct.dss_module_power }
%struct.dss_module_power = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*, %struct.device*, i8*)* @dpu_unbind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dpu_unbind(%struct.device* %0, %struct.device* %1, i8* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.platform_device*, align 8
  %8 = alloca %struct.dpu_kms*, align 8
  %9 = alloca %struct.dss_module_power*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.device* %1, %struct.device** %5, align 8
  store i8* %2, i8** %6, align 8
  %10 = load %struct.device*, %struct.device** %4, align 8
  %11 = call %struct.platform_device* @to_platform_device(%struct.device* %10)
  store %struct.platform_device* %11, %struct.platform_device** %7, align 8
  %12 = load %struct.platform_device*, %struct.platform_device** %7, align 8
  %13 = call %struct.dpu_kms* @platform_get_drvdata(%struct.platform_device* %12)
  store %struct.dpu_kms* %13, %struct.dpu_kms** %8, align 8
  %14 = load %struct.dpu_kms*, %struct.dpu_kms** %8, align 8
  %15 = getelementptr inbounds %struct.dpu_kms, %struct.dpu_kms* %14, i32 0, i32 1
  store %struct.dss_module_power* %15, %struct.dss_module_power** %9, align 8
  %16 = load %struct.dss_module_power*, %struct.dss_module_power** %9, align 8
  %17 = getelementptr inbounds %struct.dss_module_power, %struct.dss_module_power* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.dss_module_power*, %struct.dss_module_power** %9, align 8
  %20 = getelementptr inbounds %struct.dss_module_power, %struct.dss_module_power* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = call i32 @msm_dss_put_clk(i32 %18, i64 %21)
  %23 = load %struct.platform_device*, %struct.platform_device** %7, align 8
  %24 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %23, i32 0, i32 0
  %25 = load %struct.dss_module_power*, %struct.dss_module_power** %9, align 8
  %26 = getelementptr inbounds %struct.dss_module_power, %struct.dss_module_power* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @devm_kfree(i32* %24, i32 %27)
  %29 = load %struct.dss_module_power*, %struct.dss_module_power** %9, align 8
  %30 = getelementptr inbounds %struct.dss_module_power, %struct.dss_module_power* %29, i32 0, i32 0
  store i64 0, i64* %30, align 8
  %31 = load %struct.dpu_kms*, %struct.dpu_kms** %8, align 8
  %32 = getelementptr inbounds %struct.dpu_kms, %struct.dpu_kms* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %3
  %36 = load %struct.platform_device*, %struct.platform_device** %7, align 8
  %37 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %36, i32 0, i32 0
  %38 = call i32 @pm_runtime_disable(i32* %37)
  br label %39

39:                                               ; preds = %35, %3
  ret void
}

declare dso_local %struct.platform_device* @to_platform_device(%struct.device*) #1

declare dso_local %struct.dpu_kms* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @msm_dss_put_clk(i32, i64) #1

declare dso_local i32 @devm_kfree(i32*, i32) #1

declare dso_local i32 @pm_runtime_disable(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
