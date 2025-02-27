; ModuleID = '/home/carl/AnghaBench/linux/drivers/dma/ti/extr_omap-dma.c_omap_dma_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/dma/ti/extr_omap-dma.c_omap_dma_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.omap_dmadev = type { i32, i64, i32, i32 }

@IRQENABLE_L0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @omap_dma_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap_dma_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.omap_dmadev*, align 8
  %4 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %6 = call %struct.omap_dmadev* @platform_get_drvdata(%struct.platform_device* %5)
  store %struct.omap_dmadev* %6, %struct.omap_dmadev** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %1
  %13 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %14 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = call i32 @of_dma_controller_free(i64 %16)
  br label %18

18:                                               ; preds = %12, %1
  %19 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %20 = call i32 @platform_get_irq(%struct.platform_device* %19, i32 1)
  store i32 %20, i32* %4, align 4
  %21 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %22 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %21, i32 0, i32 0
  %23 = load i32, i32* %4, align 4
  %24 = load %struct.omap_dmadev*, %struct.omap_dmadev** %3, align 8
  %25 = call i32 @devm_free_irq(%struct.TYPE_2__* %22, i32 %23, %struct.omap_dmadev* %24)
  %26 = load %struct.omap_dmadev*, %struct.omap_dmadev** %3, align 8
  %27 = getelementptr inbounds %struct.omap_dmadev, %struct.omap_dmadev* %26, i32 0, i32 3
  %28 = call i32 @dma_async_device_unregister(i32* %27)
  %29 = load %struct.omap_dmadev*, %struct.omap_dmadev** %3, align 8
  %30 = getelementptr inbounds %struct.omap_dmadev, %struct.omap_dmadev* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %18
  %34 = load %struct.omap_dmadev*, %struct.omap_dmadev** %3, align 8
  %35 = load i32, i32* @IRQENABLE_L0, align 4
  %36 = call i32 @omap_dma_glbl_write(%struct.omap_dmadev* %34, i32 %35, i32 0)
  br label %37

37:                                               ; preds = %33, %18
  %38 = load %struct.omap_dmadev*, %struct.omap_dmadev** %3, align 8
  %39 = getelementptr inbounds %struct.omap_dmadev, %struct.omap_dmadev* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %37
  %43 = load %struct.omap_dmadev*, %struct.omap_dmadev** %3, align 8
  %44 = getelementptr inbounds %struct.omap_dmadev, %struct.omap_dmadev* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @dma_pool_destroy(i32 %45)
  br label %47

47:                                               ; preds = %42, %37
  %48 = load %struct.omap_dmadev*, %struct.omap_dmadev** %3, align 8
  %49 = call i32 @omap_dma_free(%struct.omap_dmadev* %48)
  ret i32 0
}

declare dso_local %struct.omap_dmadev* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @of_dma_controller_free(i64) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @devm_free_irq(%struct.TYPE_2__*, i32, %struct.omap_dmadev*) #1

declare dso_local i32 @dma_async_device_unregister(i32*) #1

declare dso_local i32 @omap_dma_glbl_write(%struct.omap_dmadev*, i32, i32) #1

declare dso_local i32 @dma_pool_destroy(i32) #1

declare dso_local i32 @omap_dma_free(%struct.omap_dmadev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
