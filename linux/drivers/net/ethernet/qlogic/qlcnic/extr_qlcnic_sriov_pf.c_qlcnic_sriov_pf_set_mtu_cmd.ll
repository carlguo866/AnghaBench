; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_sriov_pf.c_qlcnic_sriov_pf_set_mtu_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_sriov_pf.c_qlcnic_sriov_pf_set_mtu_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_bc_trans = type { %struct.qlcnic_vf_info* }
%struct.qlcnic_vf_info = type { %struct.qlcnic_adapter* }
%struct.qlcnic_adapter = type { i32 }
%struct.qlcnic_cmd_args = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qlcnic_bc_trans*, %struct.qlcnic_cmd_args*)* @qlcnic_sriov_pf_set_mtu_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qlcnic_sriov_pf_set_mtu_cmd(%struct.qlcnic_bc_trans* %0, %struct.qlcnic_cmd_args* %1) #0 {
  %3 = alloca %struct.qlcnic_bc_trans*, align 8
  %4 = alloca %struct.qlcnic_cmd_args*, align 8
  %5 = alloca %struct.qlcnic_vf_info*, align 8
  %6 = alloca %struct.qlcnic_adapter*, align 8
  %7 = alloca i32, align 4
  store %struct.qlcnic_bc_trans* %0, %struct.qlcnic_bc_trans** %3, align 8
  store %struct.qlcnic_cmd_args* %1, %struct.qlcnic_cmd_args** %4, align 8
  %8 = load %struct.qlcnic_bc_trans*, %struct.qlcnic_bc_trans** %3, align 8
  %9 = getelementptr inbounds %struct.qlcnic_bc_trans, %struct.qlcnic_bc_trans* %8, i32 0, i32 0
  %10 = load %struct.qlcnic_vf_info*, %struct.qlcnic_vf_info** %9, align 8
  store %struct.qlcnic_vf_info* %10, %struct.qlcnic_vf_info** %5, align 8
  %11 = load %struct.qlcnic_vf_info*, %struct.qlcnic_vf_info** %5, align 8
  %12 = getelementptr inbounds %struct.qlcnic_vf_info, %struct.qlcnic_vf_info* %11, i32 0, i32 0
  %13 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %12, align 8
  store %struct.qlcnic_adapter* %13, %struct.qlcnic_adapter** %6, align 8
  %14 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %15 = load %struct.qlcnic_vf_info*, %struct.qlcnic_vf_info** %5, align 8
  %16 = load %struct.qlcnic_cmd_args*, %struct.qlcnic_cmd_args** %4, align 8
  %17 = call i32 @qlcnic_sriov_validate_mtu(%struct.qlcnic_adapter* %14, %struct.qlcnic_vf_info* %15, %struct.qlcnic_cmd_args* %16)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %28

20:                                               ; preds = %2
  %21 = load %struct.qlcnic_cmd_args*, %struct.qlcnic_cmd_args** %4, align 8
  %22 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 0
  %26 = load i32, i32* %25, align 4
  %27 = or i32 %26, 201326592
  store i32 %27, i32* %25, align 4
  br label %32

28:                                               ; preds = %2
  %29 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %6, align 8
  %30 = load %struct.qlcnic_cmd_args*, %struct.qlcnic_cmd_args** %4, align 8
  %31 = call i32 @qlcnic_issue_cmd(%struct.qlcnic_adapter* %29, %struct.qlcnic_cmd_args* %30)
  store i32 %31, i32* %7, align 4
  br label %32

32:                                               ; preds = %28, %20
  %33 = load i32, i32* %7, align 4
  ret i32 %33
}

declare dso_local i32 @qlcnic_sriov_validate_mtu(%struct.qlcnic_adapter*, %struct.qlcnic_vf_info*, %struct.qlcnic_cmd_args*) #1

declare dso_local i32 @qlcnic_issue_cmd(%struct.qlcnic_adapter*, %struct.qlcnic_cmd_args*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
