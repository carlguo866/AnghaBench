; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_qdisc.c_mlxsw_sp_qdisc_prio_check_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_qdisc.c_mlxsw_sp_qdisc_prio_check_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp_port = type { i32 }
%struct.mlxsw_sp_qdisc = type { i32 }
%struct.tc_prio_qopt_offload_params = type { i64 }

@IEEE_8021QAZ_MAX_TCS = common dso_local global i64 0, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxsw_sp_port*, %struct.mlxsw_sp_qdisc*, i8*)* @mlxsw_sp_qdisc_prio_check_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sp_qdisc_prio_check_params(%struct.mlxsw_sp_port* %0, %struct.mlxsw_sp_qdisc* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlxsw_sp_port*, align 8
  %6 = alloca %struct.mlxsw_sp_qdisc*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.tc_prio_qopt_offload_params*, align 8
  store %struct.mlxsw_sp_port* %0, %struct.mlxsw_sp_port** %5, align 8
  store %struct.mlxsw_sp_qdisc* %1, %struct.mlxsw_sp_qdisc** %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load i8*, i8** %7, align 8
  %10 = bitcast i8* %9 to %struct.tc_prio_qopt_offload_params*
  store %struct.tc_prio_qopt_offload_params* %10, %struct.tc_prio_qopt_offload_params** %8, align 8
  %11 = load %struct.tc_prio_qopt_offload_params*, %struct.tc_prio_qopt_offload_params** %8, align 8
  %12 = getelementptr inbounds %struct.tc_prio_qopt_offload_params, %struct.tc_prio_qopt_offload_params* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @IEEE_8021QAZ_MAX_TCS, align 8
  %15 = icmp sgt i64 %13, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load i32, i32* @EOPNOTSUPP, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %20

19:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %20

20:                                               ; preds = %19, %16
  %21 = load i32, i32* %4, align 4
  ret i32 %21
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
