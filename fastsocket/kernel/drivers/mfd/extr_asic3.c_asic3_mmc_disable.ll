; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mfd/extr_asic3.c_asic3_mmc_disable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mfd/extr_asic3.c_asic3_mmc_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.asic3 = type { i32* }

@SDHWCTRL = common dso_local global i32 0, align 4
@SDCONF = common dso_local global i32 0, align 4
@ASIC3_SDHWCTRL_SUSPEND = common dso_local global i32 0, align 4
@ASIC3_CLOCK_SD_HOST = common dso_local global i64 0, align 8
@ASIC3_CLOCK_SD_BUS = common dso_local global i64 0, align 8
@ASIC3_CLOCK_EX0 = common dso_local global i64 0, align 8
@ASIC3_CLOCK_EX1 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @asic3_mmc_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @asic3_mmc_disable(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.asic3*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %4 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %5 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call %struct.asic3* @dev_get_drvdata(i32 %7)
  store %struct.asic3* %8, %struct.asic3** %3, align 8
  %9 = load %struct.asic3*, %struct.asic3** %3, align 8
  %10 = load i32, i32* @SDHWCTRL, align 4
  %11 = load i32, i32* @SDCONF, align 4
  %12 = call i32 @ASIC3_OFFSET(i32 %10, i32 %11)
  %13 = load i32, i32* @ASIC3_SDHWCTRL_SUSPEND, align 4
  %14 = call i32 @asic3_set_register(%struct.asic3* %9, i32 %12, i32 %13, i32 1)
  %15 = load %struct.asic3*, %struct.asic3** %3, align 8
  %16 = load %struct.asic3*, %struct.asic3** %3, align 8
  %17 = getelementptr inbounds %struct.asic3, %struct.asic3* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = load i64, i64* @ASIC3_CLOCK_SD_HOST, align 8
  %20 = getelementptr inbounds i32, i32* %18, i64 %19
  %21 = call i32 @asic3_clk_disable(%struct.asic3* %15, i32* %20)
  %22 = load %struct.asic3*, %struct.asic3** %3, align 8
  %23 = load %struct.asic3*, %struct.asic3** %3, align 8
  %24 = getelementptr inbounds %struct.asic3, %struct.asic3* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = load i64, i64* @ASIC3_CLOCK_SD_BUS, align 8
  %27 = getelementptr inbounds i32, i32* %25, i64 %26
  %28 = call i32 @asic3_clk_disable(%struct.asic3* %22, i32* %27)
  %29 = load %struct.asic3*, %struct.asic3** %3, align 8
  %30 = load %struct.asic3*, %struct.asic3** %3, align 8
  %31 = getelementptr inbounds %struct.asic3, %struct.asic3* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = load i64, i64* @ASIC3_CLOCK_EX0, align 8
  %34 = getelementptr inbounds i32, i32* %32, i64 %33
  %35 = call i32 @asic3_clk_disable(%struct.asic3* %29, i32* %34)
  %36 = load %struct.asic3*, %struct.asic3** %3, align 8
  %37 = load %struct.asic3*, %struct.asic3** %3, align 8
  %38 = getelementptr inbounds %struct.asic3, %struct.asic3* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = load i64, i64* @ASIC3_CLOCK_EX1, align 8
  %41 = getelementptr inbounds i32, i32* %39, i64 %40
  %42 = call i32 @asic3_clk_disable(%struct.asic3* %36, i32* %41)
  ret i32 0
}

declare dso_local %struct.asic3* @dev_get_drvdata(i32) #1

declare dso_local i32 @asic3_set_register(%struct.asic3*, i32, i32, i32) #1

declare dso_local i32 @ASIC3_OFFSET(i32, i32) #1

declare dso_local i32 @asic3_clk_disable(%struct.asic3*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
