; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_i40e_common.c_i40e_aq_config_switch_comp_ets_bw_limit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_i40e_common.c_i40e_aq_config_switch_comp_ets_bw_limit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_hw = type { i32 }
%struct.i40e_aqc_configure_switching_comp_ets_bw_limit_data = type { i32 }
%struct.i40e_asq_cmd_details = type { i32 }

@i40e_aqc_opc_configure_switching_comp_ets_bw_limit = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i40e_aq_config_switch_comp_ets_bw_limit(%struct.i40e_hw* %0, i32 %1, %struct.i40e_aqc_configure_switching_comp_ets_bw_limit_data* %2, %struct.i40e_asq_cmd_details* %3) #0 {
  %5 = alloca %struct.i40e_hw*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.i40e_aqc_configure_switching_comp_ets_bw_limit_data*, align 8
  %8 = alloca %struct.i40e_asq_cmd_details*, align 8
  store %struct.i40e_hw* %0, %struct.i40e_hw** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.i40e_aqc_configure_switching_comp_ets_bw_limit_data* %2, %struct.i40e_aqc_configure_switching_comp_ets_bw_limit_data** %7, align 8
  store %struct.i40e_asq_cmd_details* %3, %struct.i40e_asq_cmd_details** %8, align 8
  %9 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %10 = load i32, i32* %6, align 4
  %11 = load %struct.i40e_aqc_configure_switching_comp_ets_bw_limit_data*, %struct.i40e_aqc_configure_switching_comp_ets_bw_limit_data** %7, align 8
  %12 = bitcast %struct.i40e_aqc_configure_switching_comp_ets_bw_limit_data* %11 to i8*
  %13 = load i32, i32* @i40e_aqc_opc_configure_switching_comp_ets_bw_limit, align 4
  %14 = load %struct.i40e_asq_cmd_details*, %struct.i40e_asq_cmd_details** %8, align 8
  %15 = call i32 @i40e_aq_tx_sched_cmd(%struct.i40e_hw* %9, i32 %10, i8* %12, i32 4, i32 %13, %struct.i40e_asq_cmd_details* %14)
  ret i32 %15
}

declare dso_local i32 @i40e_aq_tx_sched_cmd(%struct.i40e_hw*, i32, i8*, i32, i32, %struct.i40e_asq_cmd_details*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
