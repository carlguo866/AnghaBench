; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_sriov.c_ecore_vf_calculate_legacy.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_sriov.c_ecore_vf_calculate_legacy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_vf_info = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i32 }

@ETH_HSI_VER_NO_PKT_LEN_TUNN = common dso_local global i64 0, align 8
@ECORE_QCID_LEGACY_VF_RX_PROD = common dso_local global i32 0, align 4
@VFPF_ACQUIRE_CAP_QUEUE_QIDS = common dso_local global i32 0, align 4
@ECORE_QCID_LEGACY_VF_CID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ecore_vf_info*)* @ecore_vf_calculate_legacy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecore_vf_calculate_legacy(%struct.ecore_vf_info* %0) #0 {
  %2 = alloca %struct.ecore_vf_info*, align 8
  %3 = alloca i32, align 4
  store %struct.ecore_vf_info* %0, %struct.ecore_vf_info** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %2, align 8
  %5 = getelementptr inbounds %struct.ecore_vf_info, %struct.ecore_vf_info* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @ETH_HSI_VER_NO_PKT_LEN_TUNN, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %15

11:                                               ; preds = %1
  %12 = load i32, i32* @ECORE_QCID_LEGACY_VF_RX_PROD, align 4
  %13 = load i32, i32* %3, align 4
  %14 = or i32 %13, %12
  store i32 %14, i32* %3, align 4
  br label %15

15:                                               ; preds = %11, %1
  %16 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %2, align 8
  %17 = getelementptr inbounds %struct.ecore_vf_info, %struct.ecore_vf_info* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @VFPF_ACQUIRE_CAP_QUEUE_QIDS, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %15
  %25 = load i32, i32* @ECORE_QCID_LEGACY_VF_CID, align 4
  %26 = load i32, i32* %3, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %3, align 4
  br label %28

28:                                               ; preds = %24, %15
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
