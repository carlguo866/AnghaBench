; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/qcom/venus/extr_hfi_cmds.c_pkt_sys_coverage_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/qcom/venus/extr_hfi_cmds.c_pkt_sys_coverage_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfi_sys_set_property_pkt = type { i32, i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@HFI_CMD_SYS_SET_PROPERTY = common dso_local global i32 0, align 4
@HFI_PROPERTY_SYS_CONFIG_COVERAGE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pkt_sys_coverage_config(%struct.hfi_sys_set_property_pkt* %0, i32 %1) #0 {
  %3 = alloca %struct.hfi_sys_set_property_pkt*, align 8
  %4 = alloca i32, align 4
  store %struct.hfi_sys_set_property_pkt* %0, %struct.hfi_sys_set_property_pkt** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.hfi_sys_set_property_pkt*, %struct.hfi_sys_set_property_pkt** %3, align 8
  %6 = getelementptr inbounds %struct.hfi_sys_set_property_pkt, %struct.hfi_sys_set_property_pkt* %5, i32 0, i32 2
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  store i32 28, i32* %7, align 8
  %8 = load i32, i32* @HFI_CMD_SYS_SET_PROPERTY, align 4
  %9 = load %struct.hfi_sys_set_property_pkt*, %struct.hfi_sys_set_property_pkt** %3, align 8
  %10 = getelementptr inbounds %struct.hfi_sys_set_property_pkt, %struct.hfi_sys_set_property_pkt* %9, i32 0, i32 2
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 1
  store i32 %8, i32* %11, align 4
  %12 = load %struct.hfi_sys_set_property_pkt*, %struct.hfi_sys_set_property_pkt** %3, align 8
  %13 = getelementptr inbounds %struct.hfi_sys_set_property_pkt, %struct.hfi_sys_set_property_pkt* %12, i32 0, i32 0
  store i32 1, i32* %13, align 8
  %14 = load i32, i32* @HFI_PROPERTY_SYS_CONFIG_COVERAGE, align 4
  %15 = load %struct.hfi_sys_set_property_pkt*, %struct.hfi_sys_set_property_pkt** %3, align 8
  %16 = getelementptr inbounds %struct.hfi_sys_set_property_pkt, %struct.hfi_sys_set_property_pkt* %15, i32 0, i32 1
  %17 = load i32*, i32** %16, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 0
  store i32 %14, i32* %18, align 4
  %19 = load i32, i32* %4, align 4
  %20 = load %struct.hfi_sys_set_property_pkt*, %struct.hfi_sys_set_property_pkt** %3, align 8
  %21 = getelementptr inbounds %struct.hfi_sys_set_property_pkt, %struct.hfi_sys_set_property_pkt* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 1
  store i32 %19, i32* %23, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
