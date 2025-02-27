; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000/extr_e1000_ethtool.c_e1000_get_eeprom_len.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000/extr_e1000_ethtool.c_e1000_get_eeprom_len.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.e1000_adapter = type { %struct.e1000_hw }
%struct.e1000_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @e1000_get_eeprom_len to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @e1000_get_eeprom_len(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.e1000_adapter*, align 8
  %4 = alloca %struct.e1000_hw*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %5 = load %struct.net_device*, %struct.net_device** %2, align 8
  %6 = call %struct.e1000_adapter* @netdev_priv(%struct.net_device* %5)
  store %struct.e1000_adapter* %6, %struct.e1000_adapter** %3, align 8
  %7 = load %struct.e1000_adapter*, %struct.e1000_adapter** %3, align 8
  %8 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %7, i32 0, i32 0
  store %struct.e1000_hw* %8, %struct.e1000_hw** %4, align 8
  %9 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %10 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = mul nsw i32 %12, 2
  ret i32 %13
}

declare dso_local %struct.e1000_adapter* @netdev_priv(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
