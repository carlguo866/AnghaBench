; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/enetc/extr_enetc_pf.c_enetc_vlan_rx_add_vid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/enetc/extr_enetc_pf.c_enetc_vlan_rx_add_vid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.enetc_ndev_priv = type { i32 }
%struct.enetc_pf = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32, i32)* @enetc_vlan_rx_add_vid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @enetc_vlan_rx_add_vid(%struct.net_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.enetc_ndev_priv*, align 8
  %8 = alloca %struct.enetc_pf*, align 8
  %9 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.net_device*, %struct.net_device** %4, align 8
  %11 = call %struct.enetc_ndev_priv* @netdev_priv(%struct.net_device* %10)
  store %struct.enetc_ndev_priv* %11, %struct.enetc_ndev_priv** %7, align 8
  %12 = load %struct.enetc_ndev_priv*, %struct.enetc_ndev_priv** %7, align 8
  %13 = getelementptr inbounds %struct.enetc_ndev_priv, %struct.enetc_ndev_priv* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.enetc_pf* @enetc_si_priv(i32 %14)
  store %struct.enetc_pf* %15, %struct.enetc_pf** %8, align 8
  %16 = load %struct.enetc_pf*, %struct.enetc_pf** %8, align 8
  %17 = call i64 @enetc_si_vlan_promisc_is_on(%struct.enetc_pf* %16, i32 0)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %3
  %20 = load %struct.enetc_pf*, %struct.enetc_pf** %8, align 8
  %21 = call i32 @enetc_disable_si_vlan_promisc(%struct.enetc_pf* %20, i32 0)
  br label %22

22:                                               ; preds = %19, %3
  %23 = load i32, i32* %6, align 4
  %24 = load %struct.enetc_pf*, %struct.enetc_pf** %8, align 8
  %25 = getelementptr inbounds %struct.enetc_pf, %struct.enetc_pf* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @__set_bit(i32 %23, i32 %26)
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @enetc_vid_hash_idx(i32 %28)
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* %9, align 4
  %31 = load %struct.enetc_pf*, %struct.enetc_pf** %8, align 8
  %32 = getelementptr inbounds %struct.enetc_pf, %struct.enetc_pf* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @__test_and_set_bit(i32 %30, i32 %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %22
  %37 = load %struct.enetc_pf*, %struct.enetc_pf** %8, align 8
  %38 = call i32 @enetc_sync_vlan_ht_filter(%struct.enetc_pf* %37, i32 0)
  br label %39

39:                                               ; preds = %36, %22
  ret i32 0
}

declare dso_local %struct.enetc_ndev_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.enetc_pf* @enetc_si_priv(i32) #1

declare dso_local i64 @enetc_si_vlan_promisc_is_on(%struct.enetc_pf*, i32) #1

declare dso_local i32 @enetc_disable_si_vlan_promisc(%struct.enetc_pf*, i32) #1

declare dso_local i32 @__set_bit(i32, i32) #1

declare dso_local i32 @enetc_vid_hash_idx(i32) #1

declare dso_local i32 @__test_and_set_bit(i32, i32) #1

declare dso_local i32 @enetc_sync_vlan_ht_filter(%struct.enetc_pf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
