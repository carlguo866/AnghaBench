; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/microchip/extr_ksz9477.c_ksz9477_port_vlan_filtering.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/microchip/extr_ksz9477.c_ksz9477_port_vlan_filtering.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsa_switch = type { %struct.ksz_device* }
%struct.ksz_device = type { i32 }

@REG_PORT_LUE_CTRL = common dso_local global i32 0, align 4
@PORT_VLAN_LOOKUP_VID_0 = common dso_local global i32 0, align 4
@REG_SW_LUE_CTRL_0 = common dso_local global i32 0, align 4
@SW_VLAN_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dsa_switch*, i32, i32)* @ksz9477_port_vlan_filtering to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ksz9477_port_vlan_filtering(%struct.dsa_switch* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.dsa_switch*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ksz_device*, align 8
  store %struct.dsa_switch* %0, %struct.dsa_switch** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.dsa_switch*, %struct.dsa_switch** %4, align 8
  %9 = getelementptr inbounds %struct.dsa_switch, %struct.dsa_switch* %8, i32 0, i32 0
  %10 = load %struct.ksz_device*, %struct.ksz_device** %9, align 8
  store %struct.ksz_device* %10, %struct.ksz_device** %7, align 8
  %11 = load i32, i32* %6, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %23

13:                                               ; preds = %3
  %14 = load %struct.ksz_device*, %struct.ksz_device** %7, align 8
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @REG_PORT_LUE_CTRL, align 4
  %17 = load i32, i32* @PORT_VLAN_LOOKUP_VID_0, align 4
  %18 = call i32 @ksz_port_cfg(%struct.ksz_device* %14, i32 %15, i32 %16, i32 %17, i32 1)
  %19 = load %struct.ksz_device*, %struct.ksz_device** %7, align 8
  %20 = load i32, i32* @REG_SW_LUE_CTRL_0, align 4
  %21 = load i32, i32* @SW_VLAN_ENABLE, align 4
  %22 = call i32 @ksz_cfg(%struct.ksz_device* %19, i32 %20, i32 %21, i32 1)
  br label %33

23:                                               ; preds = %3
  %24 = load %struct.ksz_device*, %struct.ksz_device** %7, align 8
  %25 = load i32, i32* @REG_SW_LUE_CTRL_0, align 4
  %26 = load i32, i32* @SW_VLAN_ENABLE, align 4
  %27 = call i32 @ksz_cfg(%struct.ksz_device* %24, i32 %25, i32 %26, i32 0)
  %28 = load %struct.ksz_device*, %struct.ksz_device** %7, align 8
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @REG_PORT_LUE_CTRL, align 4
  %31 = load i32, i32* @PORT_VLAN_LOOKUP_VID_0, align 4
  %32 = call i32 @ksz_port_cfg(%struct.ksz_device* %28, i32 %29, i32 %30, i32 %31, i32 0)
  br label %33

33:                                               ; preds = %23, %13
  ret i32 0
}

declare dso_local i32 @ksz_port_cfg(%struct.ksz_device*, i32, i32, i32, i32) #1

declare dso_local i32 @ksz_cfg(%struct.ksz_device*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
