; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb/extr_cxgb2.c_get_regs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb/extr_cxgb2.c_get_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.adapter* }
%struct.adapter = type { i32 }
%struct.ethtool_regs = type { i32 }

@T2_REGMAP_SIZE = common dso_local global i32 0, align 4
@A_SG_RESPACCUTIMER = common dso_local global i32 0, align 4
@A_MC3_CFG = common dso_local global i32 0, align 4
@A_MC4_INT_CAUSE = common dso_local global i32 0, align 4
@A_TPI_ADDR = common dso_local global i32 0, align 4
@A_TPI_PAR = common dso_local global i32 0, align 4
@A_TP_IN_CONFIG = common dso_local global i32 0, align 4
@A_TP_TX_DROP_COUNT = common dso_local global i32 0, align 4
@A_RAT_ROUTE_CONTROL = common dso_local global i32 0, align 4
@A_RAT_INTR_CAUSE = common dso_local global i32 0, align 4
@A_CSPI_RX_AE_WM = common dso_local global i32 0, align 4
@A_CSPI_INTR_ENABLE = common dso_local global i32 0, align 4
@A_ESPI_SCH_TOKEN0 = common dso_local global i32 0, align 4
@A_ESPI_GOSTAT = common dso_local global i32 0, align 4
@A_ULP_ULIMIT = common dso_local global i32 0, align 4
@A_ULP_PIO_CTRL = common dso_local global i32 0, align 4
@A_PL_ENABLE = common dso_local global i32 0, align 4
@A_PL_CAUSE = common dso_local global i32 0, align 4
@A_MC5_CONFIG = common dso_local global i32 0, align 4
@A_MC5_MASK_WRITE_CMD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.ethtool_regs*, i8*)* @get_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_regs(%struct.net_device* %0, %struct.ethtool_regs* %1, i8* %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_regs*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.adapter*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_regs* %1, %struct.ethtool_regs** %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = load %struct.net_device*, %struct.net_device** %4, align 8
  %9 = getelementptr inbounds %struct.net_device, %struct.net_device* %8, i32 0, i32 0
  %10 = load %struct.adapter*, %struct.adapter** %9, align 8
  store %struct.adapter* %10, %struct.adapter** %7, align 8
  %11 = load %struct.ethtool_regs*, %struct.ethtool_regs** %5, align 8
  %12 = getelementptr inbounds %struct.ethtool_regs, %struct.ethtool_regs* %11, i32 0, i32 0
  store i32 2, i32* %12, align 4
  %13 = load i8*, i8** %6, align 8
  %14 = load i32, i32* @T2_REGMAP_SIZE, align 4
  %15 = call i32 @memset(i8* %13, i32 0, i32 %14)
  %16 = load %struct.adapter*, %struct.adapter** %7, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = load i32, i32* @A_SG_RESPACCUTIMER, align 4
  %19 = call i32 @reg_block_dump(%struct.adapter* %16, i8* %17, i32 0, i32 %18)
  %20 = load %struct.adapter*, %struct.adapter** %7, align 8
  %21 = load i8*, i8** %6, align 8
  %22 = load i32, i32* @A_MC3_CFG, align 4
  %23 = load i32, i32* @A_MC4_INT_CAUSE, align 4
  %24 = call i32 @reg_block_dump(%struct.adapter* %20, i8* %21, i32 %22, i32 %23)
  %25 = load %struct.adapter*, %struct.adapter** %7, align 8
  %26 = load i8*, i8** %6, align 8
  %27 = load i32, i32* @A_TPI_ADDR, align 4
  %28 = load i32, i32* @A_TPI_PAR, align 4
  %29 = call i32 @reg_block_dump(%struct.adapter* %25, i8* %26, i32 %27, i32 %28)
  %30 = load %struct.adapter*, %struct.adapter** %7, align 8
  %31 = load i8*, i8** %6, align 8
  %32 = load i32, i32* @A_TP_IN_CONFIG, align 4
  %33 = load i32, i32* @A_TP_TX_DROP_COUNT, align 4
  %34 = call i32 @reg_block_dump(%struct.adapter* %30, i8* %31, i32 %32, i32 %33)
  %35 = load %struct.adapter*, %struct.adapter** %7, align 8
  %36 = load i8*, i8** %6, align 8
  %37 = load i32, i32* @A_RAT_ROUTE_CONTROL, align 4
  %38 = load i32, i32* @A_RAT_INTR_CAUSE, align 4
  %39 = call i32 @reg_block_dump(%struct.adapter* %35, i8* %36, i32 %37, i32 %38)
  %40 = load %struct.adapter*, %struct.adapter** %7, align 8
  %41 = load i8*, i8** %6, align 8
  %42 = load i32, i32* @A_CSPI_RX_AE_WM, align 4
  %43 = load i32, i32* @A_CSPI_INTR_ENABLE, align 4
  %44 = call i32 @reg_block_dump(%struct.adapter* %40, i8* %41, i32 %42, i32 %43)
  %45 = load %struct.adapter*, %struct.adapter** %7, align 8
  %46 = load i8*, i8** %6, align 8
  %47 = load i32, i32* @A_ESPI_SCH_TOKEN0, align 4
  %48 = load i32, i32* @A_ESPI_GOSTAT, align 4
  %49 = call i32 @reg_block_dump(%struct.adapter* %45, i8* %46, i32 %47, i32 %48)
  %50 = load %struct.adapter*, %struct.adapter** %7, align 8
  %51 = load i8*, i8** %6, align 8
  %52 = load i32, i32* @A_ULP_ULIMIT, align 4
  %53 = load i32, i32* @A_ULP_PIO_CTRL, align 4
  %54 = call i32 @reg_block_dump(%struct.adapter* %50, i8* %51, i32 %52, i32 %53)
  %55 = load %struct.adapter*, %struct.adapter** %7, align 8
  %56 = load i8*, i8** %6, align 8
  %57 = load i32, i32* @A_PL_ENABLE, align 4
  %58 = load i32, i32* @A_PL_CAUSE, align 4
  %59 = call i32 @reg_block_dump(%struct.adapter* %55, i8* %56, i32 %57, i32 %58)
  %60 = load %struct.adapter*, %struct.adapter** %7, align 8
  %61 = load i8*, i8** %6, align 8
  %62 = load i32, i32* @A_MC5_CONFIG, align 4
  %63 = load i32, i32* @A_MC5_MASK_WRITE_CMD, align 4
  %64 = call i32 @reg_block_dump(%struct.adapter* %60, i8* %61, i32 %62, i32 %63)
  ret void
}

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @reg_block_dump(%struct.adapter*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
