; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dbg_fw_funcs.c_ecore_dbg_get_chip_id.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_dbg_fw_funcs.c_ecore_dbg_get_chip_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { %struct.dbg_tools_data }
%struct.dbg_tools_data = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ecore_dbg_get_chip_id(%struct.ecore_hwfn* %0) #0 {
  %2 = alloca %struct.ecore_hwfn*, align 8
  %3 = alloca %struct.dbg_tools_data*, align 8
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %2, align 8
  %4 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %2, align 8
  %5 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %4, i32 0, i32 0
  store %struct.dbg_tools_data* %5, %struct.dbg_tools_data** %3, align 8
  %6 = load %struct.dbg_tools_data*, %struct.dbg_tools_data** %3, align 8
  %7 = getelementptr inbounds %struct.dbg_tools_data, %struct.dbg_tools_data* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  ret i32 %8
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
