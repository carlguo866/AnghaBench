; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-fsl-qspi.c_fsl_qspi_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-fsl-qspi.c_fsl_qspi_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.fsl_qspi = type { i32, i64 }

@QUADSPI_MCR_MDIS_MASK = common dso_local global i32 0, align 4
@QUADSPI_MCR = common dso_local global i64 0, align 8
@QUADSPI_RSER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @fsl_qspi_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsl_qspi_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.fsl_qspi*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %4 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %5 = call %struct.fsl_qspi* @platform_get_drvdata(%struct.platform_device* %4)
  store %struct.fsl_qspi* %5, %struct.fsl_qspi** %3, align 8
  %6 = load %struct.fsl_qspi*, %struct.fsl_qspi** %3, align 8
  %7 = load i32, i32* @QUADSPI_MCR_MDIS_MASK, align 4
  %8 = load %struct.fsl_qspi*, %struct.fsl_qspi** %3, align 8
  %9 = getelementptr inbounds %struct.fsl_qspi, %struct.fsl_qspi* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @QUADSPI_MCR, align 8
  %12 = add nsw i64 %10, %11
  %13 = call i32 @qspi_writel(%struct.fsl_qspi* %6, i32 %7, i64 %12)
  %14 = load %struct.fsl_qspi*, %struct.fsl_qspi** %3, align 8
  %15 = load %struct.fsl_qspi*, %struct.fsl_qspi** %3, align 8
  %16 = getelementptr inbounds %struct.fsl_qspi, %struct.fsl_qspi* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @QUADSPI_RSER, align 8
  %19 = add nsw i64 %17, %18
  %20 = call i32 @qspi_writel(%struct.fsl_qspi* %14, i32 0, i64 %19)
  %21 = load %struct.fsl_qspi*, %struct.fsl_qspi** %3, align 8
  %22 = call i32 @fsl_qspi_clk_disable_unprep(%struct.fsl_qspi* %21)
  %23 = load %struct.fsl_qspi*, %struct.fsl_qspi** %3, align 8
  %24 = getelementptr inbounds %struct.fsl_qspi, %struct.fsl_qspi* %23, i32 0, i32 0
  %25 = call i32 @mutex_destroy(i32* %24)
  ret i32 0
}

declare dso_local %struct.fsl_qspi* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @qspi_writel(%struct.fsl_qspi*, i32, i64) #1

declare dso_local i32 @fsl_qspi_clk_disable_unprep(%struct.fsl_qspi*) #1

declare dso_local i32 @mutex_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
