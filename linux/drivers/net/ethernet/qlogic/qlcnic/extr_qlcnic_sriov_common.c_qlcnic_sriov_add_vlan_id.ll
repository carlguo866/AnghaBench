; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_sriov_common.c_qlcnic_sriov_add_vlan_id.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_sriov_common.c_qlcnic_sriov_add_vlan_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_sriov = type { i32 }
%struct.qlcnic_vf_info = type { i32, i64* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qlcnic_sriov_add_vlan_id(%struct.qlcnic_sriov* %0, %struct.qlcnic_vf_info* %1, i64 %2) #0 {
  %4 = alloca %struct.qlcnic_sriov*, align 8
  %5 = alloca %struct.qlcnic_vf_info*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.qlcnic_sriov* %0, %struct.qlcnic_sriov** %4, align 8
  store %struct.qlcnic_vf_info* %1, %struct.qlcnic_vf_info** %5, align 8
  store i64 %2, i64* %6, align 8
  store i32 0, i32* %7, align 4
  br label %8

8:                                                ; preds = %36, %3
  %9 = load i32, i32* %7, align 4
  %10 = load %struct.qlcnic_sriov*, %struct.qlcnic_sriov** %4, align 8
  %11 = getelementptr inbounds %struct.qlcnic_sriov, %struct.qlcnic_sriov* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp slt i32 %9, %12
  br i1 %13, label %14, label %39

14:                                               ; preds = %8
  %15 = load %struct.qlcnic_vf_info*, %struct.qlcnic_vf_info** %5, align 8
  %16 = getelementptr inbounds %struct.qlcnic_vf_info, %struct.qlcnic_vf_info* %15, i32 0, i32 1
  %17 = load i64*, i64** %16, align 8
  %18 = load i32, i32* %7, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i64, i64* %17, i64 %19
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %35, label %23

23:                                               ; preds = %14
  %24 = load i64, i64* %6, align 8
  %25 = load %struct.qlcnic_vf_info*, %struct.qlcnic_vf_info** %5, align 8
  %26 = getelementptr inbounds %struct.qlcnic_vf_info, %struct.qlcnic_vf_info* %25, i32 0, i32 1
  %27 = load i64*, i64** %26, align 8
  %28 = load i32, i32* %7, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i64, i64* %27, i64 %29
  store i64 %24, i64* %30, align 8
  %31 = load %struct.qlcnic_vf_info*, %struct.qlcnic_vf_info** %5, align 8
  %32 = getelementptr inbounds %struct.qlcnic_vf_info, %struct.qlcnic_vf_info* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %32, align 8
  br label %39

35:                                               ; preds = %14
  br label %36

36:                                               ; preds = %35
  %37 = load i32, i32* %7, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %7, align 4
  br label %8

39:                                               ; preds = %23, %8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
