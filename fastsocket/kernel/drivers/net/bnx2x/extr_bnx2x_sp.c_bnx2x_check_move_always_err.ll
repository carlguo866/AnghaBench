; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_sp.c_bnx2x_check_move_always_err.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_sp.c_bnx2x_check_move_always_err.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32 }
%struct.bnx2x_vlan_mac_obj = type { i32 }
%union.bnx2x_classification_ramrod_data = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnx2x*, %struct.bnx2x_vlan_mac_obj*, %struct.bnx2x_vlan_mac_obj*, %union.bnx2x_classification_ramrod_data*)* @bnx2x_check_move_always_err to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2x_check_move_always_err(%struct.bnx2x* %0, %struct.bnx2x_vlan_mac_obj* %1, %struct.bnx2x_vlan_mac_obj* %2, %union.bnx2x_classification_ramrod_data* %3) #0 {
  %5 = alloca %struct.bnx2x*, align 8
  %6 = alloca %struct.bnx2x_vlan_mac_obj*, align 8
  %7 = alloca %struct.bnx2x_vlan_mac_obj*, align 8
  %8 = alloca %union.bnx2x_classification_ramrod_data*, align 8
  store %struct.bnx2x* %0, %struct.bnx2x** %5, align 8
  store %struct.bnx2x_vlan_mac_obj* %1, %struct.bnx2x_vlan_mac_obj** %6, align 8
  store %struct.bnx2x_vlan_mac_obj* %2, %struct.bnx2x_vlan_mac_obj** %7, align 8
  store %union.bnx2x_classification_ramrod_data* %3, %union.bnx2x_classification_ramrod_data** %8, align 8
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
