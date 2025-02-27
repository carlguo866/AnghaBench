; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/spi/extr_omap2_mcspi.c_omap2_mcspi_dma_tx_callback.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/spi/extr_omap2_mcspi.c_omap2_mcspi_dma_tx_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_device = type { i64, i32 }
%struct.omap2_mcspi = type { %struct.omap2_mcspi_dma* }
%struct.omap2_mcspi_dma = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i8*)* @omap2_mcspi_dma_tx_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @omap2_mcspi_dma_tx_callback(i32 %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.spi_device*, align 8
  %8 = alloca %struct.omap2_mcspi*, align 8
  %9 = alloca %struct.omap2_mcspi_dma*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = bitcast i8* %10 to %struct.spi_device*
  store %struct.spi_device* %11, %struct.spi_device** %7, align 8
  %12 = load %struct.spi_device*, %struct.spi_device** %7, align 8
  %13 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = call %struct.omap2_mcspi* @spi_master_get_devdata(i32 %14)
  store %struct.omap2_mcspi* %15, %struct.omap2_mcspi** %8, align 8
  %16 = load %struct.omap2_mcspi*, %struct.omap2_mcspi** %8, align 8
  %17 = getelementptr inbounds %struct.omap2_mcspi, %struct.omap2_mcspi* %16, i32 0, i32 0
  %18 = load %struct.omap2_mcspi_dma*, %struct.omap2_mcspi_dma** %17, align 8
  %19 = load %struct.spi_device*, %struct.spi_device** %7, align 8
  %20 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = getelementptr inbounds %struct.omap2_mcspi_dma, %struct.omap2_mcspi_dma* %18, i64 %21
  store %struct.omap2_mcspi_dma* %22, %struct.omap2_mcspi_dma** %9, align 8
  %23 = load %struct.omap2_mcspi_dma*, %struct.omap2_mcspi_dma** %9, align 8
  %24 = getelementptr inbounds %struct.omap2_mcspi_dma, %struct.omap2_mcspi_dma* %23, i32 0, i32 0
  %25 = call i32 @complete(i32* %24)
  %26 = load %struct.spi_device*, %struct.spi_device** %7, align 8
  %27 = call i32 @omap2_mcspi_set_dma_req(%struct.spi_device* %26, i32 0, i32 0)
  ret void
}

declare dso_local %struct.omap2_mcspi* @spi_master_get_devdata(i32) #1

declare dso_local i32 @complete(i32*) #1

declare dso_local i32 @omap2_mcspi_set_dma_req(%struct.spi_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
