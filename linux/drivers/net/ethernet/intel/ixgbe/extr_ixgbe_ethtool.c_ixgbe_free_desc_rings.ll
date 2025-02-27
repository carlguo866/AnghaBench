; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_ethtool.c_ixgbe_free_desc_rings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_ethtool.c_ixgbe_free_desc_rings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_adapter = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ixgbe_adapter*)* @ixgbe_free_desc_rings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ixgbe_free_desc_rings(%struct.ixgbe_adapter* %0) #0 {
  %2 = alloca %struct.ixgbe_adapter*, align 8
  store %struct.ixgbe_adapter* %0, %struct.ixgbe_adapter** %2, align 8
  %3 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %4 = call i32 @ixgbe_disable_rx(%struct.ixgbe_adapter* %3)
  %5 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %6 = call i32 @ixgbe_disable_tx(%struct.ixgbe_adapter* %5)
  %7 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %8 = call i32 @ixgbe_reset(%struct.ixgbe_adapter* %7)
  %9 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %10 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %9, i32 0, i32 1
  %11 = call i32 @ixgbe_free_tx_resources(i32* %10)
  %12 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %2, align 8
  %13 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %12, i32 0, i32 0
  %14 = call i32 @ixgbe_free_rx_resources(i32* %13)
  ret void
}

declare dso_local i32 @ixgbe_disable_rx(%struct.ixgbe_adapter*) #1

declare dso_local i32 @ixgbe_disable_tx(%struct.ixgbe_adapter*) #1

declare dso_local i32 @ixgbe_reset(%struct.ixgbe_adapter*) #1

declare dso_local i32 @ixgbe_free_tx_resources(i32*) #1

declare dso_local i32 @ixgbe_free_rx_resources(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
