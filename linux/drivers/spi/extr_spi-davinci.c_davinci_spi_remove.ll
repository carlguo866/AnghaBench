; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-davinci.c_davinci_spi_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-davinci.c_davinci_spi_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.davinci_spi = type { i64, i64, i32, i32 }
%struct.spi_master = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @davinci_spi_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @davinci_spi_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.davinci_spi*, align 8
  %4 = alloca %struct.spi_master*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %6 = call %struct.spi_master* @platform_get_drvdata(%struct.platform_device* %5)
  store %struct.spi_master* %6, %struct.spi_master** %4, align 8
  %7 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %8 = call %struct.davinci_spi* @spi_master_get_devdata(%struct.spi_master* %7)
  store %struct.davinci_spi* %8, %struct.davinci_spi** %3, align 8
  %9 = load %struct.davinci_spi*, %struct.davinci_spi** %3, align 8
  %10 = getelementptr inbounds %struct.davinci_spi, %struct.davinci_spi* %9, i32 0, i32 3
  %11 = call i32 @spi_bitbang_stop(i32* %10)
  %12 = load %struct.davinci_spi*, %struct.davinci_spi** %3, align 8
  %13 = getelementptr inbounds %struct.davinci_spi, %struct.davinci_spi* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @clk_disable_unprepare(i32 %14)
  %16 = load %struct.spi_master*, %struct.spi_master** %4, align 8
  %17 = call i32 @spi_master_put(%struct.spi_master* %16)
  %18 = load %struct.davinci_spi*, %struct.davinci_spi** %3, align 8
  %19 = getelementptr inbounds %struct.davinci_spi, %struct.davinci_spi* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %31

22:                                               ; preds = %1
  %23 = load %struct.davinci_spi*, %struct.davinci_spi** %3, align 8
  %24 = getelementptr inbounds %struct.davinci_spi, %struct.davinci_spi* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = call i32 @dma_release_channel(i64 %25)
  %27 = load %struct.davinci_spi*, %struct.davinci_spi** %3, align 8
  %28 = getelementptr inbounds %struct.davinci_spi, %struct.davinci_spi* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = call i32 @dma_release_channel(i64 %29)
  br label %31

31:                                               ; preds = %22, %1
  ret i32 0
}

declare dso_local %struct.spi_master* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local %struct.davinci_spi* @spi_master_get_devdata(%struct.spi_master*) #1

declare dso_local i32 @spi_bitbang_stop(i32*) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

declare dso_local i32 @spi_master_put(%struct.spi_master*) #1

declare dso_local i32 @dma_release_channel(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
