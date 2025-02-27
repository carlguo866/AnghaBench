; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amazon/ena/extr_ena_ethtool.c_ena_get_sset_count.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amazon/ena/extr_ena_ethtool.c_ena_get_sset_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ena_adapter = type { i32 }

@ETH_SS_STATS = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@ENA_STATS_ARRAY_TX = common dso_local global i32 0, align 4
@ENA_STATS_ARRAY_RX = common dso_local global i32 0, align 4
@ENA_STATS_ARRAY_GLOBAL = common dso_local global i32 0, align 4
@ENA_STATS_ARRAY_ENA_COM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ena_get_sset_count(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ena_adapter*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.net_device*, %struct.net_device** %4, align 8
  %8 = call %struct.ena_adapter* @netdev_priv(%struct.net_device* %7)
  store %struct.ena_adapter* %8, %struct.ena_adapter** %6, align 8
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @ETH_SS_STATS, align 4
  %11 = icmp ne i32 %9, %10
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load i32, i32* @EOPNOTSUPP, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %27

15:                                               ; preds = %2
  %16 = load %struct.ena_adapter*, %struct.ena_adapter** %6, align 8
  %17 = getelementptr inbounds %struct.ena_adapter, %struct.ena_adapter* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @ENA_STATS_ARRAY_TX, align 4
  %20 = load i32, i32* @ENA_STATS_ARRAY_RX, align 4
  %21 = add nsw i32 %19, %20
  %22 = mul nsw i32 %18, %21
  %23 = load i32, i32* @ENA_STATS_ARRAY_GLOBAL, align 4
  %24 = add nsw i32 %22, %23
  %25 = load i32, i32* @ENA_STATS_ARRAY_ENA_COM, align 4
  %26 = add nsw i32 %24, %25
  store i32 %26, i32* %3, align 4
  br label %27

27:                                               ; preds = %15, %12
  %28 = load i32, i32* %3, align 4
  ret i32 %28
}

declare dso_local %struct.ena_adapter* @netdev_priv(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
