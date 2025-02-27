; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/dpaa2/extr_dpaa2-ethtool.c_dpaa2_eth_set_rxnfc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/dpaa2/extr_dpaa2-ethtool.c_dpaa2_eth_set_rxnfc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_rxnfc = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@DPAA2_RXH_SUPPORTED = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_rxnfc*)* @dpaa2_eth_set_rxnfc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dpaa2_eth_set_rxnfc(%struct.net_device* %0, %struct.ethtool_rxnfc* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_rxnfc*, align 8
  %6 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_rxnfc* %1, %struct.ethtool_rxnfc** %5, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %8 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  switch i32 %9, label %45 [
    i32 128, label %10
    i32 129, label %29
    i32 130, label %38
  ]

10:                                               ; preds = %2
  %11 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %12 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @DPAA2_RXH_SUPPORTED, align 4
  %15 = and i32 %13, %14
  %16 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %17 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %15, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %10
  %21 = load i32, i32* @EOPNOTSUPP, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %50

23:                                               ; preds = %10
  %24 = load %struct.net_device*, %struct.net_device** %4, align 8
  %25 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %26 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @dpaa2_eth_set_hash(%struct.net_device* %24, i32 %27)
  store i32 %28, i32* %6, align 4
  br label %48

29:                                               ; preds = %2
  %30 = load %struct.net_device*, %struct.net_device** %4, align 8
  %31 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %32 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %31, i32 0, i32 2
  %33 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %34 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @update_cls_rule(%struct.net_device* %30, %struct.TYPE_2__* %32, i32 %36)
  store i32 %37, i32* %6, align 4
  br label %48

38:                                               ; preds = %2
  %39 = load %struct.net_device*, %struct.net_device** %4, align 8
  %40 = load %struct.ethtool_rxnfc*, %struct.ethtool_rxnfc** %5, align 8
  %41 = getelementptr inbounds %struct.ethtool_rxnfc, %struct.ethtool_rxnfc* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @update_cls_rule(%struct.net_device* %39, %struct.TYPE_2__* null, i32 %43)
  store i32 %44, i32* %6, align 4
  br label %48

45:                                               ; preds = %2
  %46 = load i32, i32* @EOPNOTSUPP, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %6, align 4
  br label %48

48:                                               ; preds = %45, %38, %29, %23
  %49 = load i32, i32* %6, align 4
  store i32 %49, i32* %3, align 4
  br label %50

50:                                               ; preds = %48, %20
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local i32 @dpaa2_eth_set_hash(%struct.net_device*, i32) #1

declare dso_local i32 @update_cls_rule(%struct.net_device*, %struct.TYPE_2__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
