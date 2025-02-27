; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-phy-v2.c_xgbe_phy_an_outcome.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-phy-v2.c_xgbe_phy_an_outcome.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xgbe_prv_data = type { i32 }

@XGBE_MODE_UNKNOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xgbe_prv_data*)* @xgbe_phy_an_outcome to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xgbe_phy_an_outcome(%struct.xgbe_prv_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xgbe_prv_data*, align 8
  store %struct.xgbe_prv_data* %0, %struct.xgbe_prv_data** %3, align 8
  %4 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %5 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %19 [
    i32 129, label %7
    i32 128, label %10
    i32 131, label %13
    i32 130, label %16
  ]

7:                                                ; preds = %1
  %8 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %9 = call i32 @xgbe_phy_an73_outcome(%struct.xgbe_prv_data* %8)
  store i32 %9, i32* %2, align 4
  br label %21

10:                                               ; preds = %1
  %11 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %12 = call i32 @xgbe_phy_an73_redrv_outcome(%struct.xgbe_prv_data* %11)
  store i32 %12, i32* %2, align 4
  br label %21

13:                                               ; preds = %1
  %14 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %15 = call i32 @xgbe_phy_an37_outcome(%struct.xgbe_prv_data* %14)
  store i32 %15, i32* %2, align 4
  br label %21

16:                                               ; preds = %1
  %17 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %3, align 8
  %18 = call i32 @xgbe_phy_an37_sgmii_outcome(%struct.xgbe_prv_data* %17)
  store i32 %18, i32* %2, align 4
  br label %21

19:                                               ; preds = %1
  %20 = load i32, i32* @XGBE_MODE_UNKNOWN, align 4
  store i32 %20, i32* %2, align 4
  br label %21

21:                                               ; preds = %19, %16, %13, %10, %7
  %22 = load i32, i32* %2, align 4
  ret i32 %22
}

declare dso_local i32 @xgbe_phy_an73_outcome(%struct.xgbe_prv_data*) #1

declare dso_local i32 @xgbe_phy_an73_redrv_outcome(%struct.xgbe_prv_data*) #1

declare dso_local i32 @xgbe_phy_an37_outcome(%struct.xgbe_prv_data*) #1

declare dso_local i32 @xgbe_phy_an37_sgmii_outcome(%struct.xgbe_prv_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
