; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/synopsys/extr_dwc-xlgmac-hw.c_xlgmac_config_rx_coalesce.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/synopsys/extr_dwc-xlgmac-hw.c_xlgmac_config_rx_coalesce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xlgmac_pdata = type { i32, i32, %struct.xlgmac_channel* }
%struct.xlgmac_channel = type { i32 }

@DMA_CH_RIWT = common dso_local global i32 0, align 4
@DMA_CH_RIWT_RWT_POS = common dso_local global i32 0, align 4
@DMA_CH_RIWT_RWT_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xlgmac_pdata*)* @xlgmac_config_rx_coalesce to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xlgmac_config_rx_coalesce(%struct.xlgmac_pdata* %0) #0 {
  %2 = alloca %struct.xlgmac_pdata*, align 8
  %3 = alloca %struct.xlgmac_channel*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.xlgmac_pdata* %0, %struct.xlgmac_pdata** %2, align 8
  %6 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %2, align 8
  %7 = getelementptr inbounds %struct.xlgmac_pdata, %struct.xlgmac_pdata* %6, i32 0, i32 2
  %8 = load %struct.xlgmac_channel*, %struct.xlgmac_channel** %7, align 8
  store %struct.xlgmac_channel* %8, %struct.xlgmac_channel** %3, align 8
  store i32 0, i32* %4, align 4
  br label %9

9:                                                ; preds = %38, %1
  %10 = load i32, i32* %4, align 4
  %11 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %2, align 8
  %12 = getelementptr inbounds %struct.xlgmac_pdata, %struct.xlgmac_pdata* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp ult i32 %10, %13
  br i1 %14, label %15, label %43

15:                                               ; preds = %9
  %16 = load %struct.xlgmac_channel*, %struct.xlgmac_channel** %3, align 8
  %17 = getelementptr inbounds %struct.xlgmac_channel, %struct.xlgmac_channel* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %15
  br label %43

21:                                               ; preds = %15
  %22 = load %struct.xlgmac_channel*, %struct.xlgmac_channel** %3, align 8
  %23 = load i32, i32* @DMA_CH_RIWT, align 4
  %24 = call i32 @XLGMAC_DMA_REG(%struct.xlgmac_channel* %22, i32 %23)
  %25 = call i32 @readl(i32 %24)
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %5, align 4
  %27 = load i32, i32* @DMA_CH_RIWT_RWT_POS, align 4
  %28 = load i32, i32* @DMA_CH_RIWT_RWT_LEN, align 4
  %29 = load %struct.xlgmac_pdata*, %struct.xlgmac_pdata** %2, align 8
  %30 = getelementptr inbounds %struct.xlgmac_pdata, %struct.xlgmac_pdata* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @XLGMAC_SET_REG_BITS(i32 %26, i32 %27, i32 %28, i32 %31)
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* %5, align 4
  %34 = load %struct.xlgmac_channel*, %struct.xlgmac_channel** %3, align 8
  %35 = load i32, i32* @DMA_CH_RIWT, align 4
  %36 = call i32 @XLGMAC_DMA_REG(%struct.xlgmac_channel* %34, i32 %35)
  %37 = call i32 @writel(i32 %33, i32 %36)
  br label %38

38:                                               ; preds = %21
  %39 = load i32, i32* %4, align 4
  %40 = add i32 %39, 1
  store i32 %40, i32* %4, align 4
  %41 = load %struct.xlgmac_channel*, %struct.xlgmac_channel** %3, align 8
  %42 = getelementptr inbounds %struct.xlgmac_channel, %struct.xlgmac_channel* %41, i32 1
  store %struct.xlgmac_channel* %42, %struct.xlgmac_channel** %3, align 8
  br label %9

43:                                               ; preds = %20, %9
  ret i32 0
}

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @XLGMAC_DMA_REG(%struct.xlgmac_channel*, i32) #1

declare dso_local i32 @XLGMAC_SET_REG_BITS(i32, i32, i32, i32) #1

declare dso_local i32 @writel(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
