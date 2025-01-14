; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/dpaa2/extr_dpni.c_dpni_clear_mac_filters.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/dpaa2/extr_dpni.c_dpni_clear_mac_filters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsl_mc_io = type { i32 }
%struct.fsl_mc_command = type { i64, i32, i32 }
%struct.dpni_cmd_clear_mac_filters = type { i32 }

@DPNI_CMDID_CLR_MAC_FILTERS = common dso_local global i32 0, align 4
@UNICAST_FILTERS = common dso_local global i32 0, align 4
@MULTICAST_FILTERS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dpni_clear_mac_filters(%struct.fsl_mc_io* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.fsl_mc_io*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.fsl_mc_command, align 8
  %12 = alloca %struct.dpni_cmd_clear_mac_filters*, align 8
  store %struct.fsl_mc_io* %0, %struct.fsl_mc_io** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %13 = bitcast %struct.fsl_mc_command* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %13, i8 0, i64 16, i1 false)
  %14 = load i32, i32* @DPNI_CMDID_CLR_MAC_FILTERS, align 4
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* %8, align 4
  %17 = call i32 @mc_encode_cmd_header(i32 %14, i32 %15, i32 %16)
  %18 = getelementptr inbounds %struct.fsl_mc_command, %struct.fsl_mc_command* %11, i32 0, i32 1
  store i32 %17, i32* %18, align 8
  %19 = getelementptr inbounds %struct.fsl_mc_command, %struct.fsl_mc_command* %11, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to %struct.dpni_cmd_clear_mac_filters*
  store %struct.dpni_cmd_clear_mac_filters* %21, %struct.dpni_cmd_clear_mac_filters** %12, align 8
  %22 = load %struct.dpni_cmd_clear_mac_filters*, %struct.dpni_cmd_clear_mac_filters** %12, align 8
  %23 = getelementptr inbounds %struct.dpni_cmd_clear_mac_filters, %struct.dpni_cmd_clear_mac_filters* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @UNICAST_FILTERS, align 4
  %26 = load i32, i32* %9, align 4
  %27 = call i32 @dpni_set_field(i32 %24, i32 %25, i32 %26)
  %28 = load %struct.dpni_cmd_clear_mac_filters*, %struct.dpni_cmd_clear_mac_filters** %12, align 8
  %29 = getelementptr inbounds %struct.dpni_cmd_clear_mac_filters, %struct.dpni_cmd_clear_mac_filters* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @MULTICAST_FILTERS, align 4
  %32 = load i32, i32* %10, align 4
  %33 = call i32 @dpni_set_field(i32 %30, i32 %31, i32 %32)
  %34 = load %struct.fsl_mc_io*, %struct.fsl_mc_io** %6, align 8
  %35 = call i32 @mc_send_command(%struct.fsl_mc_io* %34, %struct.fsl_mc_command* %11)
  ret i32 %35
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @mc_encode_cmd_header(i32, i32, i32) #2

declare dso_local i32 @dpni_set_field(i32, i32, i32) #2

declare dso_local i32 @mc_send_command(%struct.fsl_mc_io*, %struct.fsl_mc_command*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
