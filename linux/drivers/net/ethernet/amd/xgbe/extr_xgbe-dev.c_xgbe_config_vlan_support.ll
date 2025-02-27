; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-dev.c_xgbe_config_vlan_support.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-dev.c_xgbe_config_vlan_support.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xgbe_prv_data = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@MAC_VLANIR = common dso_local global i32 0, align 4
@CSVL = common dso_local global i32 0, align 4
@VLTI = common dso_local global i32 0, align 4
@NETIF_F_HW_VLAN_CTAG_FILTER = common dso_local global i32 0, align 4
@NETIF_F_HW_VLAN_CTAG_RX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xgbe_prv_data*)* @xgbe_config_vlan_support to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xgbe_config_vlan_support(%struct.xgbe_prv_data* %0) #0 {
  %2 = alloca %struct.xgbe_prv_data*, align 8
  store %struct.xgbe_prv_data* %0, %struct.xgbe_prv_data** %2, align 8
  %3 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %4 = load i32, i32* @MAC_VLANIR, align 4
  %5 = load i32, i32* @CSVL, align 4
  %6 = call i32 @XGMAC_IOWRITE_BITS(%struct.xgbe_prv_data* %3, i32 %4, i32 %5, i32 0)
  %7 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %8 = load i32, i32* @MAC_VLANIR, align 4
  %9 = load i32, i32* @VLTI, align 4
  %10 = call i32 @XGMAC_IOWRITE_BITS(%struct.xgbe_prv_data* %7, i32 %8, i32 %9, i32 1)
  %11 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %12 = call i32 @xgbe_update_vlan_hash_table(%struct.xgbe_prv_data* %11)
  %13 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %14 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @NETIF_F_HW_VLAN_CTAG_FILTER, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %1
  %22 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %23 = call i32 @xgbe_enable_rx_vlan_filtering(%struct.xgbe_prv_data* %22)
  br label %27

24:                                               ; preds = %1
  %25 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %26 = call i32 @xgbe_disable_rx_vlan_filtering(%struct.xgbe_prv_data* %25)
  br label %27

27:                                               ; preds = %24, %21
  %28 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %29 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @NETIF_F_HW_VLAN_CTAG_RX, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %27
  %37 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %38 = call i32 @xgbe_enable_rx_vlan_stripping(%struct.xgbe_prv_data* %37)
  br label %42

39:                                               ; preds = %27
  %40 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %41 = call i32 @xgbe_disable_rx_vlan_stripping(%struct.xgbe_prv_data* %40)
  br label %42

42:                                               ; preds = %39, %36
  ret void
}

declare dso_local i32 @XGMAC_IOWRITE_BITS(%struct.xgbe_prv_data*, i32, i32, i32) #1

declare dso_local i32 @xgbe_update_vlan_hash_table(%struct.xgbe_prv_data*) #1

declare dso_local i32 @xgbe_enable_rx_vlan_filtering(%struct.xgbe_prv_data*) #1

declare dso_local i32 @xgbe_disable_rx_vlan_filtering(%struct.xgbe_prv_data*) #1

declare dso_local i32 @xgbe_enable_rx_vlan_stripping(%struct.xgbe_prv_data*) #1

declare dso_local i32 @xgbe_disable_rx_vlan_stripping(%struct.xgbe_prv_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
