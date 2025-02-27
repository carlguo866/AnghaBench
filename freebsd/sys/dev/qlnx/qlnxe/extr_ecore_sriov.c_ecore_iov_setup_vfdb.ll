; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_sriov.c_ecore_iov_setup_vfdb.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/qlnx/qlnxe/extr_ecore_sriov.c_ecore_iov_setup_vfdb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecore_hwfn = type { %struct.TYPE_10__, %struct.ecore_pf_iov*, %struct.TYPE_6__* }
%struct.TYPE_10__ = type { i32 }
%struct.ecore_pf_iov = type { %struct.ecore_vf_info*, i8*, %struct.ecore_bulletin_content*, i8*, %union.pfvf_tlvs*, i8*, %union.vfpf_tlvs* }
%struct.ecore_vf_info = type { i32, i64, i32, i32, i32, i32, i32, %struct.TYPE_9__, i32, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i32, %struct.ecore_bulletin_content*, i8* }
%struct.TYPE_8__ = type { %struct.TYPE_7__, i8*, %union.pfvf_tlvs*, i8*, %union.vfpf_tlvs* }
%struct.TYPE_7__ = type { i32, i32 }
%struct.ecore_bulletin_content = type { i32 }
%union.pfvf_tlvs = type { i32 }
%union.vfpf_tlvs = type { i32 }
%struct.TYPE_6__ = type { %struct.ecore_hw_sriov_info* }
%struct.ecore_hw_sriov_info = type { i64, i32 }

@.str = private unnamed_addr constant [58 x i8] c"ecore_iov_setup_vfdb called without allocating mem first\0A\00", align 1
@VF_STOPPED = common dso_local global i32 0, align 4
@ECORE_ETH_VF_NUM_MAC_FILTERS = common dso_local global i32 0, align 4
@ECORE_ETH_VF_NUM_VLAN_FILTERS = common dso_local global i32 0, align 4
@VF_PF_WAIT_FOR_START_REQUEST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ecore_hwfn*)* @ecore_iov_setup_vfdb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ecore_iov_setup_vfdb(%struct.ecore_hwfn* %0) #0 {
  %2 = alloca %struct.ecore_hwfn*, align 8
  %3 = alloca %struct.ecore_hw_sriov_info*, align 8
  %4 = alloca %struct.ecore_pf_iov*, align 8
  %5 = alloca %struct.ecore_bulletin_content*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %union.pfvf_tlvs*, align 8
  %10 = alloca %union.vfpf_tlvs*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.ecore_vf_info*, align 8
  %13 = alloca i32, align 4
  store %struct.ecore_hwfn* %0, %struct.ecore_hwfn** %2, align 8
  %14 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %2, align 8
  %15 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %14, i32 0, i32 2
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load %struct.ecore_hw_sriov_info*, %struct.ecore_hw_sriov_info** %17, align 8
  store %struct.ecore_hw_sriov_info* %18, %struct.ecore_hw_sriov_info** %3, align 8
  %19 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %2, align 8
  %20 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %19, i32 0, i32 1
  %21 = load %struct.ecore_pf_iov*, %struct.ecore_pf_iov** %20, align 8
  store %struct.ecore_pf_iov* %21, %struct.ecore_pf_iov** %4, align 8
  store i64 0, i64* %11, align 8
  %22 = load %struct.ecore_pf_iov*, %struct.ecore_pf_iov** %4, align 8
  %23 = getelementptr inbounds %struct.ecore_pf_iov, %struct.ecore_pf_iov* %22, i32 0, i32 0
  %24 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %23, align 8
  %25 = call i32 @OSAL_MEMSET(%struct.ecore_vf_info* %24, i32 0, i32 8)
  %26 = load %struct.ecore_pf_iov*, %struct.ecore_pf_iov** %4, align 8
  %27 = getelementptr inbounds %struct.ecore_pf_iov, %struct.ecore_pf_iov* %26, i32 0, i32 6
  %28 = load %union.vfpf_tlvs*, %union.vfpf_tlvs** %27, align 8
  store %union.vfpf_tlvs* %28, %union.vfpf_tlvs** %10, align 8
  %29 = load %struct.ecore_pf_iov*, %struct.ecore_pf_iov** %4, align 8
  %30 = getelementptr inbounds %struct.ecore_pf_iov, %struct.ecore_pf_iov* %29, i32 0, i32 5
  %31 = load i8*, i8** %30, align 8
  store i8* %31, i8** %6, align 8
  %32 = load %struct.ecore_pf_iov*, %struct.ecore_pf_iov** %4, align 8
  %33 = getelementptr inbounds %struct.ecore_pf_iov, %struct.ecore_pf_iov* %32, i32 0, i32 4
  %34 = load %union.pfvf_tlvs*, %union.pfvf_tlvs** %33, align 8
  store %union.pfvf_tlvs* %34, %union.pfvf_tlvs** %9, align 8
  %35 = load %struct.ecore_pf_iov*, %struct.ecore_pf_iov** %4, align 8
  %36 = getelementptr inbounds %struct.ecore_pf_iov, %struct.ecore_pf_iov* %35, i32 0, i32 3
  %37 = load i8*, i8** %36, align 8
  store i8* %37, i8** %7, align 8
  %38 = load %struct.ecore_pf_iov*, %struct.ecore_pf_iov** %4, align 8
  %39 = getelementptr inbounds %struct.ecore_pf_iov, %struct.ecore_pf_iov* %38, i32 0, i32 2
  %40 = load %struct.ecore_bulletin_content*, %struct.ecore_bulletin_content** %39, align 8
  store %struct.ecore_bulletin_content* %40, %struct.ecore_bulletin_content** %5, align 8
  %41 = load %struct.ecore_pf_iov*, %struct.ecore_pf_iov** %4, align 8
  %42 = getelementptr inbounds %struct.ecore_pf_iov, %struct.ecore_pf_iov* %41, i32 0, i32 1
  %43 = load i8*, i8** %42, align 8
  store i8* %43, i8** %8, align 8
  %44 = load %union.vfpf_tlvs*, %union.vfpf_tlvs** %10, align 8
  %45 = icmp ne %union.vfpf_tlvs* %44, null
  br i1 %45, label %46, label %52

46:                                               ; preds = %1
  %47 = load %union.pfvf_tlvs*, %union.pfvf_tlvs** %9, align 8
  %48 = icmp ne %union.pfvf_tlvs* %47, null
  br i1 %48, label %49, label %52

49:                                               ; preds = %46
  %50 = load %struct.ecore_bulletin_content*, %struct.ecore_bulletin_content** %5, align 8
  %51 = icmp ne %struct.ecore_bulletin_content* %50, null
  br i1 %51, label %55, label %52

52:                                               ; preds = %49, %46, %1
  %53 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %2, align 8
  %54 = call i32 @DP_ERR(%struct.ecore_hwfn* %53, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0))
  br label %156

55:                                               ; preds = %49
  store i64 0, i64* %11, align 8
  br label %56

56:                                               ; preds = %153, %55
  %57 = load i64, i64* %11, align 8
  %58 = load %struct.ecore_hw_sriov_info*, %struct.ecore_hw_sriov_info** %3, align 8
  %59 = getelementptr inbounds %struct.ecore_hw_sriov_info, %struct.ecore_hw_sriov_info* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = icmp ult i64 %57, %60
  br i1 %61, label %62, label %156

62:                                               ; preds = %56
  %63 = load %struct.ecore_pf_iov*, %struct.ecore_pf_iov** %4, align 8
  %64 = getelementptr inbounds %struct.ecore_pf_iov, %struct.ecore_pf_iov* %63, i32 0, i32 0
  %65 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %64, align 8
  %66 = load i64, i64* %11, align 8
  %67 = getelementptr inbounds %struct.ecore_vf_info, %struct.ecore_vf_info* %65, i64 %66
  store %struct.ecore_vf_info* %67, %struct.ecore_vf_info** %12, align 8
  %68 = load %union.vfpf_tlvs*, %union.vfpf_tlvs** %10, align 8
  %69 = load i64, i64* %11, align 8
  %70 = getelementptr inbounds %union.vfpf_tlvs, %union.vfpf_tlvs* %68, i64 %69
  %71 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %12, align 8
  %72 = getelementptr inbounds %struct.ecore_vf_info, %struct.ecore_vf_info* %71, i32 0, i32 9
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 4
  store %union.vfpf_tlvs* %70, %union.vfpf_tlvs** %73, align 8
  %74 = load i8*, i8** %6, align 8
  %75 = load i64, i64* %11, align 8
  %76 = mul i64 %75, 4
  %77 = getelementptr i8, i8* %74, i64 %76
  %78 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %12, align 8
  %79 = getelementptr inbounds %struct.ecore_vf_info, %struct.ecore_vf_info* %78, i32 0, i32 9
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 3
  store i8* %77, i8** %80, align 8
  %81 = load %union.pfvf_tlvs*, %union.pfvf_tlvs** %9, align 8
  %82 = load i64, i64* %11, align 8
  %83 = getelementptr inbounds %union.pfvf_tlvs, %union.pfvf_tlvs* %81, i64 %82
  %84 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %12, align 8
  %85 = getelementptr inbounds %struct.ecore_vf_info, %struct.ecore_vf_info* %84, i32 0, i32 9
  %86 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %85, i32 0, i32 2
  store %union.pfvf_tlvs* %83, %union.pfvf_tlvs** %86, align 8
  %87 = load i8*, i8** %7, align 8
  %88 = load i64, i64* %11, align 8
  %89 = mul i64 %88, 4
  %90 = getelementptr i8, i8* %87, i64 %89
  %91 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %12, align 8
  %92 = getelementptr inbounds %struct.ecore_vf_info, %struct.ecore_vf_info* %91, i32 0, i32 9
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 1
  store i8* %90, i8** %93, align 8
  %94 = load i32, i32* @VF_STOPPED, align 4
  %95 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %12, align 8
  %96 = getelementptr inbounds %struct.ecore_vf_info, %struct.ecore_vf_info* %95, i32 0, i32 8
  store i32 %94, i32* %96, align 8
  %97 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %12, align 8
  %98 = getelementptr inbounds %struct.ecore_vf_info, %struct.ecore_vf_info* %97, i32 0, i32 0
  store i32 0, i32* %98, align 8
  %99 = load i64, i64* %11, align 8
  %100 = mul i64 %99, 4
  %101 = load i8*, i8** %8, align 8
  %102 = getelementptr i8, i8* %101, i64 %100
  %103 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %12, align 8
  %104 = getelementptr inbounds %struct.ecore_vf_info, %struct.ecore_vf_info* %103, i32 0, i32 7
  %105 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %104, i32 0, i32 2
  store i8* %102, i8** %105, align 8
  %106 = load %struct.ecore_bulletin_content*, %struct.ecore_bulletin_content** %5, align 8
  %107 = load i64, i64* %11, align 8
  %108 = getelementptr inbounds %struct.ecore_bulletin_content, %struct.ecore_bulletin_content* %106, i64 %107
  %109 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %12, align 8
  %110 = getelementptr inbounds %struct.ecore_vf_info, %struct.ecore_vf_info* %109, i32 0, i32 7
  %111 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %110, i32 0, i32 1
  store %struct.ecore_bulletin_content* %108, %struct.ecore_bulletin_content** %111, align 8
  %112 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %12, align 8
  %113 = getelementptr inbounds %struct.ecore_vf_info, %struct.ecore_vf_info* %112, i32 0, i32 7
  %114 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %113, i32 0, i32 0
  store i32 4, i32* %114, align 8
  %115 = load i64, i64* %11, align 8
  %116 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %12, align 8
  %117 = getelementptr inbounds %struct.ecore_vf_info, %struct.ecore_vf_info* %116, i32 0, i32 1
  store i64 %115, i64* %117, align 8
  %118 = load i64, i64* %11, align 8
  %119 = load %struct.ecore_hw_sriov_info*, %struct.ecore_hw_sriov_info** %3, align 8
  %120 = getelementptr inbounds %struct.ecore_hw_sriov_info, %struct.ecore_hw_sriov_info* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 8
  %122 = sext i32 %121 to i64
  %123 = add i64 %118, %122
  %124 = trunc i64 %123 to i32
  %125 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %12, align 8
  %126 = getelementptr inbounds %struct.ecore_vf_info, %struct.ecore_vf_info* %125, i32 0, i32 2
  store i32 %124, i32* %126, align 8
  %127 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %2, align 8
  %128 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %12, align 8
  %129 = getelementptr inbounds %struct.ecore_vf_info, %struct.ecore_vf_info* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 8
  %131 = call i32 @ecore_vfid_to_concrete(%struct.ecore_hwfn* %127, i32 %130)
  store i32 %131, i32* %13, align 4
  %132 = load i32, i32* %13, align 4
  %133 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %12, align 8
  %134 = getelementptr inbounds %struct.ecore_vf_info, %struct.ecore_vf_info* %133, i32 0, i32 6
  store i32 %132, i32* %134, align 8
  %135 = load %struct.ecore_hwfn*, %struct.ecore_hwfn** %2, align 8
  %136 = getelementptr inbounds %struct.ecore_hwfn, %struct.ecore_hwfn* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = and i32 %138, 255
  %140 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %12, align 8
  %141 = getelementptr inbounds %struct.ecore_vf_info, %struct.ecore_vf_info* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 8
  %143 = shl i32 %142, 8
  %144 = or i32 %139, %143
  %145 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %12, align 8
  %146 = getelementptr inbounds %struct.ecore_vf_info, %struct.ecore_vf_info* %145, i32 0, i32 3
  store i32 %144, i32* %146, align 4
  %147 = load i32, i32* @ECORE_ETH_VF_NUM_MAC_FILTERS, align 4
  %148 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %12, align 8
  %149 = getelementptr inbounds %struct.ecore_vf_info, %struct.ecore_vf_info* %148, i32 0, i32 5
  store i32 %147, i32* %149, align 4
  %150 = load i32, i32* @ECORE_ETH_VF_NUM_VLAN_FILTERS, align 4
  %151 = load %struct.ecore_vf_info*, %struct.ecore_vf_info** %12, align 8
  %152 = getelementptr inbounds %struct.ecore_vf_info, %struct.ecore_vf_info* %151, i32 0, i32 4
  store i32 %150, i32* %152, align 8
  br label %153

153:                                              ; preds = %62
  %154 = load i64, i64* %11, align 8
  %155 = add i64 %154, 1
  store i64 %155, i64* %11, align 8
  br label %56

156:                                              ; preds = %52, %56
  ret void
}

declare dso_local i32 @OSAL_MEMSET(%struct.ecore_vf_info*, i32, i32) #1

declare dso_local i32 @DP_ERR(%struct.ecore_hwfn*, i8*) #1

declare dso_local i32 @ecore_vfid_to_concrete(%struct.ecore_hwfn*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
