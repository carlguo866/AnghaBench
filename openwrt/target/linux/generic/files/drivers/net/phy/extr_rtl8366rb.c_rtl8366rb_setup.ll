; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/generic/files/drivers/net/phy/extr_rtl8366rb.c_rtl8366rb_setup.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/generic/files/drivers/net/phy/extr_rtl8366rb.c_rtl8366rb_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtl8366_smi = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.device_node* }
%struct.device_node = type { i32 }

@RTL8366RB_SGCR = common dso_local global i32 0, align 4
@RTL8366RB_SGCR_MAX_LENGTH_MASK = common dso_local global i32 0, align 4
@RTL8366RB_SGCR_MAX_LENGTH_1536 = common dso_local global i32 0, align 4
@RTL8366RB_SSCR0 = common dso_local global i32 0, align 4
@RTL8366RB_SSCR1 = common dso_local global i32 0, align 4
@RTL8366RB_VLAN_INGRESS_CTRL2_REG = common dso_local global i32 0, align 4
@RTL8366RB_PORT_ALL = common dso_local global i32 0, align 4
@RTL8366RB_SSCR2 = common dso_local global i32 0, align 4
@RTL8366RB_SSCR2_DROP_UNKNOWN_DA = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtl8366_smi*)* @rtl8366rb_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtl8366rb_setup(%struct.rtl8366_smi* %0) #0 {
  %2 = alloca %struct.rtl8366_smi*, align 8
  %3 = alloca i32, align 4
  store %struct.rtl8366_smi* %0, %struct.rtl8366_smi** %2, align 8
  %4 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %2, align 8
  %5 = load i32, i32* @RTL8366RB_SGCR, align 4
  %6 = load i32, i32* @RTL8366RB_SGCR_MAX_LENGTH_MASK, align 4
  %7 = load i32, i32* @RTL8366RB_SGCR_MAX_LENGTH_1536, align 4
  %8 = call i32 @REG_RMW(%struct.rtl8366_smi* %4, i32 %5, i32 %6, i32 %7)
  %9 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %2, align 8
  %10 = load i32, i32* @RTL8366RB_SSCR0, align 4
  %11 = call i32 @REG_WR(%struct.rtl8366_smi* %9, i32 %10, i32 0)
  %12 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %2, align 8
  %13 = load i32, i32* @RTL8366RB_SSCR1, align 4
  %14 = call i32 @REG_WR(%struct.rtl8366_smi* %12, i32 %13, i32 0)
  %15 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %2, align 8
  %16 = load i32, i32* @RTL8366RB_VLAN_INGRESS_CTRL2_REG, align 4
  %17 = load i32, i32* @RTL8366RB_PORT_ALL, align 4
  %18 = call i32 @REG_WR(%struct.rtl8366_smi* %15, i32 %16, i32 %17)
  %19 = load %struct.rtl8366_smi*, %struct.rtl8366_smi** %2, align 8
  %20 = load i32, i32* @RTL8366RB_SSCR2, align 4
  %21 = load i32, i32* @RTL8366RB_SSCR2_DROP_UNKNOWN_DA, align 4
  %22 = call i32 @REG_RMW(%struct.rtl8366_smi* %19, i32 %20, i32 %21, i32 0)
  ret i32 0
}

declare dso_local i32 @REG_RMW(%struct.rtl8366_smi*, i32, i32, i32) #1

declare dso_local i32 @REG_WR(%struct.rtl8366_smi*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
