; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_ethtool.c_hns_get_rxnfc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/hns/extr_hns_ethtool.c_hns_get_rxnfc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_rxnfc = type { i32, i32 }
%struct.hns_nic_priv = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_rxnfc*, i32*)* @hns_get_rxnfc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hns_get_rxnfc(%struct.net_device* %0, %struct.ethtool_rxnfc* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.ethtool_rxnfc*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.hns_nic_priv*, align 8
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.ethtool_rxnfc* %1, %struct.ethtool_rxnfc** %6, align 8
  store i32* %2, i32** %7, align 8
  %9 = load %struct.net_device*, %struct.net_device** %5, align 8
  %10 = call %struct.hns_nic_priv* @netdev_priv(%struct.net_device* %9)
  store %struct.hns_nic_priv* %10, %struct.hns_nic_priv** %8, align 8
  %11 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %6, align 8
  %12 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  switch i32 %13, label %22 [
    i32 128, label %14
  ]

14:                                               ; preds = %3
  %15 = load %struct.hns_nic_priv*, %struct.hns_nic_priv** %8, align 8
  %16 = getelementptr inbounds %struct.hns_nic_priv, %struct.hns_nic_priv* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %6, align 8
  %21 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 4
  br label %25

22:                                               ; preds = %3
  %23 = load i32, i32* @EOPNOTSUPP, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %26

25:                                               ; preds = %14
  store i32 0, i32* %4, align 4
  br label %26

26:                                               ; preds = %25, %22
  %27 = load i32, i32* %4, align 4
  ret i32 %27
}

declare dso_local %struct.hns_nic_priv* @netdev_priv(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
