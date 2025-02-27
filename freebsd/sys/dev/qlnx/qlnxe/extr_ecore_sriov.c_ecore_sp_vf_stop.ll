; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_sriov.c_ecore_sp_vf_stop.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_sriov.c_ecore_sp_vf_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { i32 }
%struct.vf_stop_ramrod_data = type { i32 }
%struct.ecore_spq_entry = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.vf_stop_ramrod_data }
%struct.ecore_sp_init_data = type { i32, i32, i32 }

@OSAL_NULL = common dso_local global i8* null, align 8
@ECORE_NOTIMPL = common dso_local global i32 0, align 4
@ECORE_SPQ_MODE_EBLOCK = common dso_local global i32 0, align 4
@COMMON_RAMROD_VF_STOP = common dso_local global i32 0, align 4
@PROTOCOLID_COMMON = common dso_local global i32 0, align 4
@ECORE_SUCCESS = common dso_local global i32 0, align 4
@PXP_CONCRETE_FID_VFID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ecore_hwfn*, i32, i32)* @ecore_sp_vf_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecore_sp_vf_stop(%struct.ecore_hwfn* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ecore_hwfn*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.vf_stop_ramrod_data*, align 8
  %9 = alloca %struct.ecore_spq_entry*, align 8
  %10 = alloca %struct.ecore_sp_init_data, align 4
  %11 = alloca i32, align 4
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load i8*, i8** @OSAL_NULL, align 8
  %13 = bitcast i8* %12 to %struct.vf_stop_ramrod_data*
  store %struct.vf_stop_ramrod_data* %13, %struct.vf_stop_ramrod_data** %8, align 8
  %14 = load i8*, i8** @OSAL_NULL, align 8
  %15 = bitcast i8* %14 to %struct.ecore_spq_entry*
  store %struct.ecore_spq_entry* %15, %struct.ecore_spq_entry** %9, align 8
  %16 = load i32, i32* @ECORE_NOTIMPL, align 4
  store i32 %16, i32* %11, align 4
  %17 = call i32 @OSAL_MEMSET(%struct.ecore_sp_init_data* %10, i32 0, i32 12)
  %18 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %19 = call i32 @ecore_spq_get_cid(%struct.ecore_hwfn* %18)
  %20 = getelementptr inbounds %struct.ecore_sp_init_data, %struct.ecore_sp_init_data* %10, i32 0, i32 2
  store i32 %19, i32* %20, align 4
  %21 = load i32, i32* %7, align 4
  %22 = getelementptr inbounds %struct.ecore_sp_init_data, %struct.ecore_sp_init_data* %10, i32 0, i32 1
  store i32 %21, i32* %22, align 4
  %23 = load i32, i32* @ECORE_SPQ_MODE_EBLOCK, align 4
  %24 = getelementptr inbounds %struct.ecore_sp_init_data, %struct.ecore_sp_init_data* %10, i32 0, i32 0
  store i32 %23, i32* %24, align 4
  %25 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %26 = load i32, i32* @COMMON_RAMROD_VF_STOP, align 4
  %27 = load i32, i32* @PROTOCOLID_COMMON, align 4
  %28 = call i32 @ecore_sp_init_request(%struct.ecore_hwfn* %25, %struct.ecore_spq_entry** %9, i32 %26, i32 %27, %struct.ecore_sp_init_data* %10)
  store i32 %28, i32* %11, align 4
  %29 = load i32, i32* %11, align 4
  %30 = load i32, i32* @ECORE_SUCCESS, align 4
  %31 = icmp ne i32 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %3
  %33 = load i32, i32* %11, align 4
  store i32 %33, i32* %4, align 4
  br label %47

34:                                               ; preds = %3
  %35 = load %struct.ecore_spq_entry*, %struct.ecore_spq_entry** %9, align 8
  %36 = getelementptr inbounds %struct.ecore_spq_entry, %struct.ecore_spq_entry* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  store %struct.vf_stop_ramrod_data* %37, %struct.vf_stop_ramrod_data** %8, align 8
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* @PXP_CONCRETE_FID_VFID, align 4
  %40 = call i32 @GET_FIELD(i32 %38, i32 %39)
  %41 = load %struct.vf_stop_ramrod_data*, %struct.vf_stop_ramrod_data** %8, align 8
  %42 = getelementptr inbounds %struct.vf_stop_ramrod_data, %struct.vf_stop_ramrod_data* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 4
  %43 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %5, align 8
  %44 = load %struct.ecore_spq_entry*, %struct.ecore_spq_entry** %9, align 8
  %45 = load i8*, i8** @OSAL_NULL, align 8
  %46 = call i32 @ecore_spq_post(%struct.ecore_hwfn* %43, %struct.ecore_spq_entry* %44, i8* %45)
  store i32 %46, i32* %4, align 4
  br label %47

47:                                               ; preds = %34, %32
  %48 = load i32, i32* %4, align 4
  ret i32 %48
}

declare dso_local i32 @OSAL_MEMSET(%struct.ecore_sp_init_data*, i32, i32) #1

declare dso_local i32 @ecore_spq_get_cid(%struct.ecore_hwfn*) #1

declare dso_local i32 @ecore_sp_init_request(%struct.ecore_hwfn*, %struct.ecore_spq_entry**, i32, i32, %struct.ecore_sp_init_data*) #1

declare dso_local i32 @GET_FIELD(i32, i32) #1

declare dso_local i32 @ecore_spq_post(%struct.ecore_hwfn*, %struct.ecore_spq_entry*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
