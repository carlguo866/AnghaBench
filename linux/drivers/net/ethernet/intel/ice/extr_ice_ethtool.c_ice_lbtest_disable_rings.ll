; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_ethtool.c_ice_lbtest_disable_rings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_ethtool.c_ice_lbtest_disable_rings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ice_vsi = type { i32, i32 }

@ICE_NO_RESET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Failed to stop Tx rings, VSI %d error %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"Failed to stop Rx rings, VSI %d error %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ice_vsi*)* @ice_lbtest_disable_rings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ice_lbtest_disable_rings(%struct.ice_vsi* %0) #0 {
  %2 = alloca %struct.ice_vsi*, align 8
  %3 = alloca i32, align 4
  store %struct.ice_vsi* %0, %struct.ice_vsi** %2, align 8
  %4 = load %struct.ice_vsi*, %struct.ice_vsi** %2, align 8
  %5 = load i32, i32* @ICE_NO_RESET, align 4
  %6 = call i32 @ice_vsi_stop_lan_tx_rings(%struct.ice_vsi* %4, i32 %5, i32 0)
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %18

9:                                                ; preds = %1
  %10 = load %struct.ice_vsi*, %struct.ice_vsi** %2, align 8
  %11 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.ice_vsi*, %struct.ice_vsi** %2, align 8
  %14 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* %3, align 4
  %17 = call i32 @netdev_err(i32 %12, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %15, i32 %16)
  br label %18

18:                                               ; preds = %9, %1
  %19 = load %struct.ice_vsi*, %struct.ice_vsi** %2, align 8
  %20 = call i32 @ice_vsi_stop_rx_rings(%struct.ice_vsi* %19)
  store i32 %20, i32* %3, align 4
  %21 = load i32, i32* %3, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %32

23:                                               ; preds = %18
  %24 = load %struct.ice_vsi*, %struct.ice_vsi** %2, align 8
  %25 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.ice_vsi*, %struct.ice_vsi** %2, align 8
  %28 = getelementptr inbounds %struct.ice_vsi, %struct.ice_vsi* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %3, align 4
  %31 = call i32 @netdev_err(i32 %26, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %29, i32 %30)
  br label %32

32:                                               ; preds = %23, %18
  %33 = load %struct.ice_vsi*, %struct.ice_vsi** %2, align 8
  %34 = call i32 @ice_vsi_free_tx_rings(%struct.ice_vsi* %33)
  %35 = load %struct.ice_vsi*, %struct.ice_vsi** %2, align 8
  %36 = call i32 @ice_vsi_free_rx_rings(%struct.ice_vsi* %35)
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local i32 @ice_vsi_stop_lan_tx_rings(%struct.ice_vsi*, i32, i32) #1

declare dso_local i32 @netdev_err(i32, i8*, i32, i32) #1

declare dso_local i32 @ice_vsi_stop_rx_rings(%struct.ice_vsi*) #1

declare dso_local i32 @ice_vsi_free_tx_rings(%struct.ice_vsi*) #1

declare dso_local i32 @ice_vsi_free_rx_rings(%struct.ice_vsi*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
