; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_roce.c_ecore_roce_dpm_dcbx.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_roce.c_ecore_roce_dpm_dcbx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { i32 }
%struct.ecore_ptt = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ecore_roce_dpm_dcbx(%struct.ecore_hwfn* %0, %struct.ecore_ptt* %1) #0 {
  %3 = alloca %struct.ecore_hwfn*, align 8
  %4 = alloca %struct.ecore_ptt*, align 8
  %5 = alloca i32, align 4
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %3, align 8
  store %struct.ecore_ptt* %1, %struct.ecore_ptt** %4, align 8
  %6 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %7 = call i64 @ecore_rdma_allocated_qps(%struct.ecore_hwfn* %6)
  %8 = icmp ne i64 %7, 0
  %9 = zext i1 %8 to i64
  %10 = select i1 %8, i32 1, i32 0
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %13 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 4
  %14 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %3, align 8
  %15 = load %struct.ecore_ptt*, %struct.ecore_ptt** %4, align 8
  %16 = call i32 @ecore_rdma_dpm_conf(%struct.ecore_hwfn* %14, %struct.ecore_ptt* %15)
  ret void
}

declare dso_local i64 @ecore_rdma_allocated_qps(%struct.ecore_hwfn*) #1

declare dso_local i32 @ecore_rdma_dpm_conf(%struct.ecore_hwfn*, %struct.ecore_ptt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
