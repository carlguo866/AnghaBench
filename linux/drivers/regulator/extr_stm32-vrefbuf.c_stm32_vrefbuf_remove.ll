; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_stm32-vrefbuf.c_stm32_vrefbuf_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_stm32-vrefbuf.c_stm32_vrefbuf_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.regulator_dev = type { i32 }
%struct.stm32_vrefbuf = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @stm32_vrefbuf_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stm32_vrefbuf_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.regulator_dev*, align 8
  %4 = alloca %struct.stm32_vrefbuf*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %6 = call %struct.regulator_dev* @platform_get_drvdata(%struct.platform_device* %5)
  store %struct.regulator_dev* %6, %struct.regulator_dev** %3, align 8
  %7 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %8 = call %struct.stm32_vrefbuf* @rdev_get_drvdata(%struct.regulator_dev* %7)
  store %struct.stm32_vrefbuf* %8, %struct.stm32_vrefbuf** %4, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %10 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %9, i32 0, i32 0
  %11 = call i32 @pm_runtime_get_sync(i32* %10)
  %12 = load %struct.regulator_dev*, %struct.regulator_dev** %3, align 8
  %13 = call i32 @regulator_unregister(%struct.regulator_dev* %12)
  %14 = load %struct.stm32_vrefbuf*, %struct.stm32_vrefbuf** %4, align 8
  %15 = getelementptr inbounds %struct.stm32_vrefbuf, %struct.stm32_vrefbuf* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @clk_disable_unprepare(i32 %16)
  %18 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %19 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %18, i32 0, i32 0
  %20 = call i32 @pm_runtime_disable(i32* %19)
  %21 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %22 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %21, i32 0, i32 0
  %23 = call i32 @pm_runtime_set_suspended(i32* %22)
  %24 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %25 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %24, i32 0, i32 0
  %26 = call i32 @pm_runtime_put_noidle(i32* %25)
  ret i32 0
}

declare dso_local %struct.regulator_dev* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local %struct.stm32_vrefbuf* @rdev_get_drvdata(%struct.regulator_dev*) #1

declare dso_local i32 @pm_runtime_get_sync(i32*) #1

declare dso_local i32 @regulator_unregister(%struct.regulator_dev*) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

declare dso_local i32 @pm_runtime_disable(i32*) #1

declare dso_local i32 @pm_runtime_set_suspended(i32*) #1

declare dso_local i32 @pm_runtime_put_noidle(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
