; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_phy_device.c_phy_prepare_link.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_phy_device.c_phy_prepare_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy_device = type { void (%struct.net_device*)* }
%struct.net_device = type opaque
%struct.net_device.0 = type opaque

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.phy_device*, void (%struct.net_device.0*)*)* @phy_prepare_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @phy_prepare_link(%struct.phy_device* %0, void (%struct.net_device.0*)* %1) #0 {
  %3 = alloca %struct.phy_device*, align 8
  %4 = alloca void (%struct.net_device.0*)*, align 8
  store %struct.phy_device* %0, %struct.phy_device** %3, align 8
  store void (%struct.net_device.0*)* %1, void (%struct.net_device.0*)** %4, align 8
  %5 = load void (%struct.net_device.0*)*, void (%struct.net_device.0*)** %4, align 8
  %6 = bitcast void (%struct.net_device.0*)* %5 to void (%struct.net_device*)*
  %7 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %8 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %7, i32 0, i32 0
  store void (%struct.net_device*)* %6, void (%struct.net_device*)** %8, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
