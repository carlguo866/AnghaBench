; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_i40e_common.c_i40e_aq_alternate_clear.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixl/extr_i40e_common.c_i40e_aq_alternate_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_hw = type { i32 }
%struct.i40e_aq_desc = type { i32 }

@i40e_aqc_opc_alternate_clear_port = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i40e_aq_alternate_clear(%struct.i40e_hw* %0) #0 {
  %2 = alloca %struct.i40e_hw*, align 8
  %3 = alloca %struct.i40e_aq_desc, align 4
  %4 = alloca i32, align 4
  store %struct.i40e_hw* %0, %struct.i40e_hw** %2, align 8
  %5 = load i32, i32* @i40e_aqc_opc_alternate_clear_port, align 4
  %6 = call i32 @i40e_fill_default_direct_cmd_desc(%struct.i40e_aq_desc* %3, i32 %5)
  %7 = load %struct.i40e_hw*, %struct.i40e_hw** %2, align 8
  %8 = call i32 @i40e_asq_send_command(%struct.i40e_hw* %7, %struct.i40e_aq_desc* %3, i32* null, i32 0, i32* null)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  ret i32 %9
}

declare dso_local i32 @i40e_fill_default_direct_cmd_desc(%struct.i40e_aq_desc*, i32) #1

declare dso_local i32 @i40e_asq_send_command(%struct.i40e_hw*, %struct.i40e_aq_desc*, i32*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
