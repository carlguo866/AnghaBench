; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_ecore_sp.c_ecore_get_credit_vlan.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_ecore_sp.c_ecore_get_credit_vlan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_vlan_mac_obj = type { %struct.ecore_credit_pool_obj* }
%struct.ecore_credit_pool_obj = type { i32 (%struct.ecore_credit_pool_obj*, i32)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ecore_vlan_mac_obj*)* @ecore_get_credit_vlan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecore_get_credit_vlan(%struct.ecore_vlan_mac_obj* %0) #0 {
  %2 = alloca %struct.ecore_vlan_mac_obj*, align 8
  %3 = alloca %struct.ecore_credit_pool_obj*, align 8
  store %struct.ecore_vlan_mac_obj* %0, %struct.ecore_vlan_mac_obj** %2, align 8
  %4 = load %struct.ecore_vlan_mac_obj*, %struct.ecore_vlan_mac_obj** %2, align 8
  %5 = getelementptr inbounds %struct.ecore_vlan_mac_obj, %struct.ecore_vlan_mac_obj* %4, i32 0, i32 0
  %6 = load %struct.ecore_credit_pool_obj*, %struct.ecore_credit_pool_obj** %5, align 8
  store %struct.ecore_credit_pool_obj* %6, %struct.ecore_credit_pool_obj** %3, align 8
  %7 = load %struct.ecore_credit_pool_obj*, %struct.ecore_credit_pool_obj** %3, align 8
  %8 = icmp ne %struct.ecore_credit_pool_obj* %7, null
  %9 = xor i1 %8, true
  %10 = zext i1 %9 to i32
  %11 = call i32 @ECORE_DBG_BREAK_IF(i32 %10)
  %12 = load %struct.ecore_credit_pool_obj*, %struct.ecore_credit_pool_obj** %3, align 8
  %13 = getelementptr inbounds %struct.ecore_credit_pool_obj, %struct.ecore_credit_pool_obj* %12, i32 0, i32 0
  %14 = load i32 (%struct.ecore_credit_pool_obj*, i32)*, i32 (%struct.ecore_credit_pool_obj*, i32)** %13, align 8
  %15 = load %struct.ecore_credit_pool_obj*, %struct.ecore_credit_pool_obj** %3, align 8
  %16 = call i32 %14(%struct.ecore_credit_pool_obj* %15, i32 1)
  ret i32 %16
}

declare dso_local i32 @ECORE_DBG_BREAK_IF(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
