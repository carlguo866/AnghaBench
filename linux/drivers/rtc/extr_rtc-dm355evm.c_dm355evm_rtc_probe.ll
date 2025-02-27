; ModuleID = '/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-dm355evm.c_dm355evm_rtc_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rtc/extr_rtc-dm355evm.c_dm355evm_rtc_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.rtc_device = type { i32, i32* }

@dm355evm_rtc_ops = common dso_local global i32 0, align 4
@U32_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @dm355evm_rtc_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dm355evm_rtc_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.rtc_device*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %6 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %5, i32 0, i32 0
  %7 = call %struct.rtc_device* @devm_rtc_allocate_device(i32* %6)
  store %struct.rtc_device* %7, %struct.rtc_device** %4, align 8
  %8 = load %struct.rtc_device*, %struct.rtc_device** %4, align 8
  %9 = call i64 @IS_ERR(%struct.rtc_device* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load %struct.rtc_device*, %struct.rtc_device** %4, align 8
  %13 = call i32 @PTR_ERR(%struct.rtc_device* %12)
  store i32 %13, i32* %2, align 4
  br label %25

14:                                               ; preds = %1
  %15 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %16 = load %struct.rtc_device*, %struct.rtc_device** %4, align 8
  %17 = call i32 @platform_set_drvdata(%struct.platform_device* %15, %struct.rtc_device* %16)
  %18 = load %struct.rtc_device*, %struct.rtc_device** %4, align 8
  %19 = getelementptr inbounds %struct.rtc_device, %struct.rtc_device* %18, i32 0, i32 1
  store i32* @dm355evm_rtc_ops, i32** %19, align 8
  %20 = load i32, i32* @U32_MAX, align 4
  %21 = load %struct.rtc_device*, %struct.rtc_device** %4, align 8
  %22 = getelementptr inbounds %struct.rtc_device, %struct.rtc_device* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 8
  %23 = load %struct.rtc_device*, %struct.rtc_device** %4, align 8
  %24 = call i32 @rtc_register_device(%struct.rtc_device* %23)
  store i32 %24, i32* %2, align 4
  br label %25

25:                                               ; preds = %14, %11
  %26 = load i32, i32* %2, align 4
  ret i32 %26
}

declare dso_local %struct.rtc_device* @devm_rtc_allocate_device(i32*) #1

declare dso_local i64 @IS_ERR(%struct.rtc_device*) #1

declare dso_local i32 @PTR_ERR(%struct.rtc_device*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.rtc_device*) #1

declare dso_local i32 @rtc_register_device(%struct.rtc_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
