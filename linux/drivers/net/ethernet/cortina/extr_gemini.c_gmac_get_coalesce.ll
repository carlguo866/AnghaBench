; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cortina/extr_gemini.c_gmac_get_coalesce.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cortina/extr_gemini.c_gmac_get_coalesce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_coalesce = type { i32, i32, i32 }
%struct.gemini_ethernet_port = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_coalesce*)* @gmac_get_coalesce to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gmac_get_coalesce(%struct.net_device* %0, %struct.ethtool_coalesce* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ethtool_coalesce*, align 8
  %5 = alloca %struct.gemini_ethernet_port*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.ethtool_coalesce* %1, %struct.ethtool_coalesce** %4, align 8
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = call %struct.gemini_ethernet_port* @netdev_priv(%struct.net_device* %6)
  store %struct.gemini_ethernet_port* %7, %struct.gemini_ethernet_port** %5, align 8
  %8 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %4, align 8
  %9 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %8, i32 0, i32 0
  store i32 1, i32* %9, align 4
  %10 = load %struct.gemini_ethernet_port*, %struct.gemini_ethernet_port** %5, align 8
  %11 = getelementptr inbounds %struct.gemini_ethernet_port, %struct.gemini_ethernet_port* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %4, align 8
  %14 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %13, i32 0, i32 2
  store i32 %12, i32* %14, align 4
  %15 = load %struct.gemini_ethernet_port*, %struct.gemini_ethernet_port** %5, align 8
  %16 = getelementptr inbounds %struct.gemini_ethernet_port, %struct.gemini_ethernet_port* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = sdiv i32 %17, 1000
  %19 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %4, align 8
  %20 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %19, i32 0, i32 1
  store i32 %18, i32* %20, align 4
  ret i32 0
}

declare dso_local %struct.gemini_ethernet_port* @netdev_priv(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
