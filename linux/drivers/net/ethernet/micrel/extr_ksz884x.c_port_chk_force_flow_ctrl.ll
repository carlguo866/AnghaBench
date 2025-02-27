; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/micrel/extr_ksz884x.c_port_chk_force_flow_ctrl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/micrel/extr_ksz884x.c_port_chk_force_flow_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ksz_hw = type { i32 }

@KS8842_PORT_CTRL_2_OFFSET = common dso_local global i32 0, align 4
@PORT_FORCE_FLOW_CTRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ksz_hw*, i32)* @port_chk_force_flow_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @port_chk_force_flow_ctrl(%struct.ksz_hw* %0, i32 %1) #0 {
  %3 = alloca %struct.ksz_hw*, align 8
  %4 = alloca i32, align 4
  store %struct.ksz_hw* %0, %struct.ksz_hw** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.ksz_hw*, %struct.ksz_hw** %3, align 8
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @KS8842_PORT_CTRL_2_OFFSET, align 4
  %8 = load i32, i32* @PORT_FORCE_FLOW_CTRL, align 4
  %9 = call i32 @port_chk(%struct.ksz_hw* %5, i32 %6, i32 %7, i32 %8)
  ret i32 %9
}

declare dso_local i32 @port_chk(%struct.ksz_hw*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
