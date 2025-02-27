; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/nat64/extr_nat64stl_control.c_nat64stl_detach_config.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/nat64/extr_nat64stl_control.c_nat64stl_detach_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_fw_chain = type { i32 }
%struct.nat64stl_cfg = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ip_fw_chain*, %struct.nat64stl_cfg*)* @nat64stl_detach_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nat64stl_detach_config(%struct.ip_fw_chain* %0, %struct.nat64stl_cfg* %1) #0 {
  %3 = alloca %struct.ip_fw_chain*, align 8
  %4 = alloca %struct.nat64stl_cfg*, align 8
  store %struct.ip_fw_chain* %0, %struct.ip_fw_chain** %3, align 8
  store %struct.nat64stl_cfg* %1, %struct.nat64stl_cfg** %4, align 8
  %5 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %3, align 8
  %6 = call i32 @IPFW_UH_WLOCK_ASSERT(%struct.ip_fw_chain* %5)
  %7 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %3, align 8
  %8 = call i32 @CHAIN_TO_SRV(%struct.ip_fw_chain* %7)
  %9 = load %struct.nat64stl_cfg*, %struct.nat64stl_cfg** %4, align 8
  %10 = getelementptr inbounds %struct.nat64stl_cfg, %struct.nat64stl_cfg* %9, i32 0, i32 2
  %11 = call i32 @ipfw_objhash_del(i32 %8, %struct.TYPE_2__* %10)
  %12 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %3, align 8
  %13 = call i32 @CHAIN_TO_SRV(%struct.ip_fw_chain* %12)
  %14 = load %struct.nat64stl_cfg*, %struct.nat64stl_cfg** %4, align 8
  %15 = getelementptr inbounds %struct.nat64stl_cfg, %struct.nat64stl_cfg* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @ipfw_objhash_free_idx(i32 %13, i32 %17)
  %19 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %3, align 8
  %20 = load %struct.nat64stl_cfg*, %struct.nat64stl_cfg** %4, align 8
  %21 = getelementptr inbounds %struct.nat64stl_cfg, %struct.nat64stl_cfg* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @ipfw_unref_table(%struct.ip_fw_chain* %19, i32 %22)
  %24 = load %struct.ip_fw_chain*, %struct.ip_fw_chain** %3, align 8
  %25 = load %struct.nat64stl_cfg*, %struct.nat64stl_cfg** %4, align 8
  %26 = getelementptr inbounds %struct.nat64stl_cfg, %struct.nat64stl_cfg* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @ipfw_unref_table(%struct.ip_fw_chain* %24, i32 %27)
  ret void
}

declare dso_local i32 @IPFW_UH_WLOCK_ASSERT(%struct.ip_fw_chain*) #1

declare dso_local i32 @ipfw_objhash_del(i32, %struct.TYPE_2__*) #1

declare dso_local i32 @CHAIN_TO_SRV(%struct.ip_fw_chain*) #1

declare dso_local i32 @ipfw_objhash_free_idx(i32, i32) #1

declare dso_local i32 @ipfw_unref_table(%struct.ip_fw_chain*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
