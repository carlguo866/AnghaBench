; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/vmxnet3/extr_vmxnet3_ethtool.c_vmxnet3_get_wol.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/vmxnet3/extr_vmxnet3_ethtool.c_vmxnet3_get_wol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_wolinfo = type { i32, i32 }
%struct.vmxnet3_adapter = type { i32 }

@WAKE_UCAST = common dso_local global i32 0, align 4
@WAKE_ARP = common dso_local global i32 0, align 4
@WAKE_MAGIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.ethtool_wolinfo*)* @vmxnet3_get_wol to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vmxnet3_get_wol(%struct.net_device* %0, %struct.ethtool_wolinfo* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ethtool_wolinfo*, align 8
  %5 = alloca %struct.vmxnet3_adapter*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.ethtool_wolinfo* %1, %struct.ethtool_wolinfo** %4, align 8
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = call %struct.vmxnet3_adapter* @netdev_priv(%struct.net_device* %6)
  store %struct.vmxnet3_adapter* %7, %struct.vmxnet3_adapter** %5, align 8
  %8 = load i32, i32* @WAKE_UCAST, align 4
  %9 = load i32, i32* @WAKE_ARP, align 4
  %10 = or i32 %8, %9
  %11 = load i32, i32* @WAKE_MAGIC, align 4
  %12 = or i32 %10, %11
  %13 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %4, align 8
  %14 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 4
  %15 = load %struct.vmxnet3_adapter*, %struct.vmxnet3_adapter** %5, align 8
  %16 = getelementptr inbounds %struct.vmxnet3_adapter, %struct.vmxnet3_adapter* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.ethtool_wolinfo*, %struct.ethtool_wolinfo** %4, align 8
  %19 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %18, i32 0, i32 1
  store i32 %17, i32* %19, align 4
  ret void
}

declare dso_local %struct.vmxnet3_adapter* @netdev_priv(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
