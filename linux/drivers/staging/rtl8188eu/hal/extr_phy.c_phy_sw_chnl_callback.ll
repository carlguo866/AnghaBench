; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/hal/extr_phy.c_phy_sw_chnl_callback.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/hal/extr_phy.c_phy_sw_chnl_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.hal_data_8188e* }
%struct.hal_data_8188e = type { i32* }

@RF_CHNLBW = common dso_local global i32 0, align 4
@bRFRegOffsetMask = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.adapter*, i32)* @phy_sw_chnl_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @phy_sw_chnl_callback(%struct.adapter* %0, i32 %1) #0 {
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.hal_data_8188e*, align 8
  store %struct.adapter* %0, %struct.adapter** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.adapter*, %struct.adapter** %3, align 8
  %9 = getelementptr inbounds %struct.adapter, %struct.adapter* %8, i32 0, i32 0
  %10 = load %struct.hal_data_8188e*, %struct.hal_data_8188e** %9, align 8
  store %struct.hal_data_8188e* %10, %struct.hal_data_8188e** %7, align 8
  %11 = load %struct.adapter*, %struct.adapter** %3, align 8
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @phy_set_tx_power_level(%struct.adapter* %11, i32 %12)
  %14 = load i32, i32* @RF_CHNLBW, align 4
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %4, align 4
  store i32 %15, i32* %6, align 4
  %16 = load %struct.hal_data_8188e*, %struct.hal_data_8188e** %7, align 8
  %17 = getelementptr inbounds %struct.hal_data_8188e, %struct.hal_data_8188e* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 0
  %20 = load i32, i32* %19, align 4
  %21 = and i32 %20, -1024
  %22 = load i32, i32* %6, align 4
  %23 = or i32 %21, %22
  %24 = load %struct.hal_data_8188e*, %struct.hal_data_8188e** %7, align 8
  %25 = getelementptr inbounds %struct.hal_data_8188e, %struct.hal_data_8188e* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 0
  store i32 %23, i32* %27, align 4
  %28 = load %struct.adapter*, %struct.adapter** %3, align 8
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @bRFRegOffsetMask, align 4
  %31 = load %struct.hal_data_8188e*, %struct.hal_data_8188e** %7, align 8
  %32 = getelementptr inbounds %struct.hal_data_8188e, %struct.hal_data_8188e* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @phy_set_rf_reg(%struct.adapter* %28, i32 0, i32 %29, i32 %30, i32 %35)
  ret void
}

declare dso_local i32 @phy_set_tx_power_level(%struct.adapter*, i32) #1

declare dso_local i32 @phy_set_rf_reg(%struct.adapter*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
