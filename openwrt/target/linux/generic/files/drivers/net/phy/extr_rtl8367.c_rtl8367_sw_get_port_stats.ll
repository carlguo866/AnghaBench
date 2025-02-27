; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/generic/files/drivers/net/phy/extr_rtl8367.c_rtl8367_sw_get_port_stats.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/generic/files/drivers/net/phy/extr_rtl8367.c_rtl8367_sw_get_port_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.switch_dev = type { i32 }
%struct.switch_port_stats = type { i32 }

@RTL8367_MIB_TXB_ID = common dso_local global i32 0, align 4
@RTL8367_MIB_RXB_ID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.switch_dev*, i32, %struct.switch_port_stats*)* @rtl8367_sw_get_port_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtl8367_sw_get_port_stats(%struct.switch_dev* %0, i32 %1, %struct.switch_port_stats* %2) #0 {
  %4 = alloca %struct.switch_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.switch_port_stats*, align 8
  store %struct.switch_dev* %0, %struct.switch_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.switch_port_stats* %2, %struct.switch_port_stats** %6, align 8
  %7 = load %struct.switch_dev*, %struct.switch_dev** %4, align 8
  %8 = load i32, i32* %5, align 4
  %9 = load %struct.switch_port_stats*, %struct.switch_port_stats** %6, align 8
  %10 = load i32, i32* @RTL8367_MIB_TXB_ID, align 4
  %11 = load i32, i32* @RTL8367_MIB_RXB_ID, align 4
  %12 = call i32 @rtl8366_sw_get_port_stats(%struct.switch_dev* %7, i32 %8, %struct.switch_port_stats* %9, i32 %10, i32 %11)
  ret i32 %12
}

declare dso_local i32 @rtl8366_sw_get_port_stats(%struct.switch_dev*, i32, %struct.switch_port_stats*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
