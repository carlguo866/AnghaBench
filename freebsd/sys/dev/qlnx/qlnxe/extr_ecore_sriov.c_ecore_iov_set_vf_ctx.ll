; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_sriov.c_ecore_iov_set_vf_ctx.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_sriov.c_ecore_iov_set_vf_ctx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_vf_info = type { %struct.TYPE_4__, i8* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.ecore_hwfn = type { i32 }

@ECORE_SUCCESS = common dso_local global i32 0, align 4
@OSAL_NULL = common dso_local global %struct.ecore_vf_info* null, align 8
@ECORE_UNKNOWN_ERROR = common dso_local global i32 0, align 4
@VF_PF_WAIT_FOR_START_REQUEST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ecore_iov_set_vf_ctx(%struct.ecore_hwfn* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.ecore_hwfn*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ecore_vf_info*, align 8
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %9 = load i32, i32* @ECORE_SUCCESS, align 4
  store i32 %9, i32* %7, align 4
  %10 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %4, align 8
  %11 = load i32, i32* %5, align 4
  %12 = call %struct.ecore_vf_info* @ecore_iov_get_vf_info(%struct.ecore_hwfn* %10, i32 %11, i32 1)
  store %struct.ecore_vf_info* %12, %struct.ecore_vf_info** %8, align 8
  %13 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %8, align 8
  %14 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** @OSAL_NULL, align 8
  %15 = icmp ne %struct.ecore_vf_info* %13, %14
  br i1 %15, label %16, label %20

16:                                               ; preds = %3
  %17 = load i8*, i8** %6, align 8
  %18 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %8, align 8
  %19 = getelementptr inbounds %struct.ecore_vf_info, %struct.ecore_vf_info* %18, i32 0, i32 1
  store i8* %17, i8** %19, align 8
  br label %22

20:                                               ; preds = %3
  %21 = load i32, i32* @ECORE_UNKNOWN_ERROR, align 4
  store i32 %21, i32* %7, align 4
  br label %22

22:                                               ; preds = %20, %16
  %23 = load i32, i32* %7, align 4
  ret i32 %23
}

declare dso_local %struct.ecore_vf_info* @ecore_iov_get_vf_info(%struct.ecore_hwfn*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
