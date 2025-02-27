; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ibm_newemac/extr_core.c_emac_ethtool_get_ringparam.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ibm_newemac/extr_core.c_emac_ethtool_get_ringparam.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_ringparam = type { i32, i32, i32, i32 }

@NUM_RX_BUFF = common dso_local global i32 0, align 4
@NUM_TX_BUFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.ethtool_ringparam*)* @emac_ethtool_get_ringparam to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emac_ethtool_get_ringparam(%struct.net_device* %0, %struct.ethtool_ringparam* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ethtool_ringparam*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.ethtool_ringparam* %1, %struct.ethtool_ringparam** %4, align 8
  %5 = load i32, i32* @NUM_RX_BUFF, align 4
  %6 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %4, align 8
  %7 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %6, i32 0, i32 2
  store i32 %5, i32* %7, align 4
  %8 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %4, align 8
  %9 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %8, i32 0, i32 3
  store i32 %5, i32* %9, align 4
  %10 = load i32, i32* @NUM_TX_BUFF, align 4
  %11 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %4, align 8
  %12 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %11, i32 0, i32 0
  store i32 %10, i32* %12, align 4
  %13 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %4, align 8
  %14 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %13, i32 0, i32 1
  store i32 %10, i32* %14, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
