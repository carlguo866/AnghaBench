; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_cpsw_ethtool.c_cpsw_set_wol.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_cpsw_ethtool.c_cpsw_set_wol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_wolinfo = type { i32 }
%struct.cpsw_priv = type { %struct.cpsw_common* }
%struct.cpsw_common = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@EOPNOTSUPP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cpsw_set_wol(%struct.net_device* %0, %struct.ethtool_wolinfo* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_wolinfo*, align 8
  %6 = alloca %struct.cpsw_priv*, align 8
  %7 = alloca %struct.cpsw_common*, align 8
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_wolinfo* %1, %struct.ethtool_wolinfo** %5, align 8
  %9 = load %struct.net_device*, %struct.net_device** %4, align 8
  %10 = call %struct.cpsw_priv* @netdev_priv(%struct.net_device* %9)
  store %struct.cpsw_priv* %10, %struct.cpsw_priv** %6, align 8
  %11 = load %struct.cpsw_priv*, %struct.cpsw_priv** %6, align 8
  %12 = getelementptr inbounds %struct.cpsw_priv, %struct.cpsw_priv* %11, i32 0, i32 0
  %13 = load %struct.cpsw_common*, %struct.cpsw_common** %12, align 8
  store %struct.cpsw_common* %13, %struct.cpsw_common** %7, align 8
  %14 = load %struct.cpsw_common*, %struct.cpsw_common** %7, align 8
  %15 = load %struct.cpsw_priv*, %struct.cpsw_priv** %6, align 8
  %16 = call i32 @cpsw_slave_index(%struct.cpsw_common* %14, %struct.cpsw_priv* %15)
  store i32 %16, i32* %8, align 4
  %17 = load %struct.cpsw_common*, %struct.cpsw_common** %7, align 8
  %18 = getelementptr inbounds %struct.cpsw_common, %struct.cpsw_common* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = load i32, i32* %8, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %37

26:                                               ; preds = %2
  %27 = load %struct.cpsw_common*, %struct.cpsw_common** %7, align 8
  %28 = getelementptr inbounds %struct.cpsw_common, %struct.cpsw_common* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = load i32, i32* %8, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %5, align 8
  %36 = call i32 @phy_ethtool_set_wol(i64 %34, %struct.ethtool_wolinfo* %35)
  store i32 %36, i32* %3, align 4
  br label %40

37:                                               ; preds = %2
  %38 = load i32, i32* @EOPNOTSUPP, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %3, align 4
  br label %40

40:                                               ; preds = %37, %26
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local %struct.cpsw_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @cpsw_slave_index(%struct.cpsw_common*, %struct.cpsw_priv*) #1

declare dso_local i32 @phy_ethtool_set_wol(i64, %struct.ethtool_wolinfo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
