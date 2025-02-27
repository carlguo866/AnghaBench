; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_82598.c_ixgbe_get_invariants_82598.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_82598.c_ixgbe_get_invariants_82598.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { %struct.ixgbe_mac_info }
%struct.ixgbe_mac_info = type { i32, i32, i32, i32, i32, i32 }

@IXGBE_82598_MC_TBL_SIZE = common dso_local global i32 0, align 4
@IXGBE_82598_VFT_TBL_SIZE = common dso_local global i32 0, align 4
@IXGBE_82598_RAR_ENTRIES = common dso_local global i32 0, align 4
@IXGBE_82598_MAX_RX_QUEUES = common dso_local global i32 0, align 4
@IXGBE_82598_MAX_TX_QUEUES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ixgbe_hw*)* @ixgbe_get_invariants_82598 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixgbe_get_invariants_82598(%struct.ixgbe_hw* %0) #0 {
  %2 = alloca %struct.ixgbe_hw*, align 8
  %3 = alloca %struct.ixgbe_mac_info*, align 8
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %2, align 8
  %4 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %5 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %4, i32 0, i32 0
  store %struct.ixgbe_mac_info* %5, %struct.ixgbe_mac_info** %3, align 8
  %6 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %7 = call i32 @ixgbe_identify_phy_generic(%struct.ixgbe_hw* %6)
  %8 = load i32, i32* @IXGBE_82598_MC_TBL_SIZE, align 4
  %9 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %3, align 8
  %10 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %9, i32 0, i32 5
  store i32 %8, i32* %10, align 4
  %11 = load i32, i32* @IXGBE_82598_VFT_TBL_SIZE, align 4
  %12 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %3, align 8
  %13 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %12, i32 0, i32 4
  store i32 %11, i32* %13, align 4
  %14 = load i32, i32* @IXGBE_82598_RAR_ENTRIES, align 4
  %15 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %3, align 8
  %16 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %15, i32 0, i32 3
  store i32 %14, i32* %16, align 4
  %17 = load i32, i32* @IXGBE_82598_MAX_RX_QUEUES, align 4
  %18 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %3, align 8
  %19 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %18, i32 0, i32 2
  store i32 %17, i32* %19, align 4
  %20 = load i32, i32* @IXGBE_82598_MAX_TX_QUEUES, align 4
  %21 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %3, align 8
  %22 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %21, i32 0, i32 1
  store i32 %20, i32* %22, align 4
  %23 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %24 = call i32 @ixgbe_get_pcie_msix_count_generic(%struct.ixgbe_hw* %23)
  %25 = load %struct.ixgbe_mac_info*, %struct.ixgbe_mac_info** %3, align 8
  %26 = getelementptr inbounds %struct.ixgbe_mac_info, %struct.ixgbe_mac_info* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 4
  ret i32 0
}

declare dso_local i32 @ixgbe_identify_phy_generic(%struct.ixgbe_hw*) #1

declare dso_local i32 @ixgbe_get_pcie_msix_count_generic(%struct.ixgbe_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
