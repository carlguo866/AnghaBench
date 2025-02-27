; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/stm32/extr_stm32-dcmi.c_dcmi_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/stm32/extr_stm32-dcmi.c_dcmi_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.stm32_dcmi = type { i32, i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @dcmi_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dcmi_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.stm32_dcmi*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %4 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %5 = call %struct.stm32_dcmi* @platform_get_drvdata(%struct.platform_device* %4)
  store %struct.stm32_dcmi* %5, %struct.stm32_dcmi** %3, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %7 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %6, i32 0, i32 0
  %8 = call i32 @pm_runtime_disable(i32* %7)
  %9 = load %struct.stm32_dcmi*, %struct.stm32_dcmi** %3, align 8
  %10 = getelementptr inbounds %struct.stm32_dcmi, %struct.stm32_dcmi* %9, i32 0, i32 4
  %11 = call i32 @v4l2_async_notifier_unregister(i32* %10)
  %12 = load %struct.stm32_dcmi*, %struct.stm32_dcmi** %3, align 8
  %13 = getelementptr inbounds %struct.stm32_dcmi, %struct.stm32_dcmi* %12, i32 0, i32 4
  %14 = call i32 @v4l2_async_notifier_cleanup(i32* %13)
  %15 = load %struct.stm32_dcmi*, %struct.stm32_dcmi** %3, align 8
  %16 = getelementptr inbounds %struct.stm32_dcmi, %struct.stm32_dcmi* %15, i32 0, i32 3
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = call i32 @media_entity_cleanup(i32* %18)
  %20 = load %struct.stm32_dcmi*, %struct.stm32_dcmi** %3, align 8
  %21 = getelementptr inbounds %struct.stm32_dcmi, %struct.stm32_dcmi* %20, i32 0, i32 2
  %22 = call i32 @v4l2_device_unregister(i32* %21)
  %23 = load %struct.stm32_dcmi*, %struct.stm32_dcmi** %3, align 8
  %24 = getelementptr inbounds %struct.stm32_dcmi, %struct.stm32_dcmi* %23, i32 0, i32 1
  %25 = call i32 @media_device_cleanup(i32* %24)
  %26 = load %struct.stm32_dcmi*, %struct.stm32_dcmi** %3, align 8
  %27 = getelementptr inbounds %struct.stm32_dcmi, %struct.stm32_dcmi* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @dma_release_channel(i32 %28)
  ret i32 0
}

declare dso_local %struct.stm32_dcmi* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @pm_runtime_disable(i32*) #1

declare dso_local i32 @v4l2_async_notifier_unregister(i32*) #1

declare dso_local i32 @v4l2_async_notifier_cleanup(i32*) #1

declare dso_local i32 @media_entity_cleanup(i32*) #1

declare dso_local i32 @v4l2_device_unregister(i32*) #1

declare dso_local i32 @media_device_cleanup(i32*) #1

declare dso_local i32 @dma_release_channel(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
