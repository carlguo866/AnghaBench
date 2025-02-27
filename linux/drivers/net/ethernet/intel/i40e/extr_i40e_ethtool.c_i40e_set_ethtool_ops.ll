; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_ethtool.c_i40e_set_ethtool_ops.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_ethtool.c_i40e_set_ethtool_ops.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32* }
%struct.i40e_netdev_priv = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.i40e_pf* }
%struct.i40e_pf = type { i32 }

@__I40E_RECOVERY_MODE = common dso_local global i32 0, align 4
@i40e_ethtool_ops = common dso_local global i32 0, align 4
@i40e_ethtool_recovery_mode_ops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @i40e_set_ethtool_ops(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.i40e_netdev_priv*, align 8
  %4 = alloca %struct.i40e_pf*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %5 = load %struct.net_device*, %struct.net_device** %2, align 8
  %6 = call %struct.i40e_netdev_priv* @netdev_priv(%struct.net_device* %5)
  store %struct.i40e_netdev_priv* %6, %struct.i40e_netdev_priv** %3, align 8
  %7 = load %struct.i40e_netdev_priv*, %struct.i40e_netdev_priv** %3, align 8
  %8 = getelementptr inbounds %struct.i40e_netdev_priv, %struct.i40e_netdev_priv* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load %struct.i40e_pf*, %struct.i40e_pf** %10, align 8
  store %struct.i40e_pf* %11, %struct.i40e_pf** %4, align 8
  %12 = load i32, i32* @__I40E_RECOVERY_MODE, align 4
  %13 = load %struct.i40e_pf*, %struct.i40e_pf** %4, align 8
  %14 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @test_bit(i32 %12, i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %1
  %19 = load %struct.net_device*, %struct.net_device** %2, align 8
  %20 = getelementptr inbounds %struct.net_device, %struct.net_device* %19, i32 0, i32 0
  store i32* @i40e_ethtool_ops, i32** %20, align 8
  br label %24

21:                                               ; preds = %1
  %22 = load %struct.net_device*, %struct.net_device** %2, align 8
  %23 = getelementptr inbounds %struct.net_device, %struct.net_device* %22, i32 0, i32 0
  store i32* @i40e_ethtool_recovery_mode_ops, i32** %23, align 8
  br label %24

24:                                               ; preds = %21, %18
  ret void
}

declare dso_local %struct.i40e_netdev_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @test_bit(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
