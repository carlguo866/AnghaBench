; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-phy-v2.c_xgbe_phy_valid_speed_basex_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-phy-v2.c_xgbe_phy_valid_speed_basex_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xgbe_phy_data = type { i32 }

@XGBE_PORT_MODE_1000BASE_X = common dso_local global i32 0, align 4
@XGBE_PORT_MODE_10GBASE_R = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xgbe_phy_data*, i32)* @xgbe_phy_valid_speed_basex_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xgbe_phy_valid_speed_basex_mode(%struct.xgbe_phy_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.xgbe_phy_data*, align 8
  %5 = alloca i32, align 4
  store %struct.xgbe_phy_data* %0, %struct.xgbe_phy_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %21 [
    i32 129, label %7
    i32 128, label %14
  ]

7:                                                ; preds = %2
  %8 = load %struct.xgbe_phy_data*, %struct.xgbe_phy_data** %4, align 8
  %9 = getelementptr inbounds %struct.xgbe_phy_data, %struct.xgbe_phy_data* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @XGBE_PORT_MODE_1000BASE_X, align 4
  %12 = icmp eq i32 %10, %11
  %13 = zext i1 %12 to i32
  store i32 %13, i32* %3, align 4
  br label %22

14:                                               ; preds = %2
  %15 = load %struct.xgbe_phy_data*, %struct.xgbe_phy_data** %4, align 8
  %16 = getelementptr inbounds %struct.xgbe_phy_data, %struct.xgbe_phy_data* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @XGBE_PORT_MODE_10GBASE_R, align 4
  %19 = icmp eq i32 %17, %18
  %20 = zext i1 %19 to i32
  store i32 %20, i32* %3, align 4
  br label %22

21:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %22

22:                                               ; preds = %21, %14, %7
  %23 = load i32, i32* %3, align 4
  ret i32 %23
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
