; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum.h_mlxsw_sp_port_lagged_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum.h_mlxsw_sp_port_lagged_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp_port = type { i64 }
%struct.mlxsw_sp = type { %struct.mlxsw_sp_port**, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mlxsw_sp_port* (%struct.mlxsw_sp*, i32, i64)* @mlxsw_sp_port_lagged_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mlxsw_sp_port* @mlxsw_sp_port_lagged_get(%struct.mlxsw_sp* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.mlxsw_sp*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.mlxsw_sp_port*, align 8
  %8 = alloca i64, align 8
  store %struct.mlxsw_sp* %0, %struct.mlxsw_sp** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %9 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %4, align 8
  %10 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* %5, align 4
  %13 = load i64, i64* %6, align 8
  %14 = call i64 @mlxsw_core_lag_mapping_get(i32 %11, i32 %12, i64 %13)
  store i64 %14, i64* %8, align 8
  %15 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %4, align 8
  %16 = getelementptr inbounds %struct.mlxsw_sp, %struct.mlxsw_sp* %15, i32 0, i32 0
  %17 = load %struct.mlxsw_sp_port**, %struct.mlxsw_sp_port*** %16, align 8
  %18 = load i64, i64* %8, align 8
  %19 = getelementptr inbounds %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %17, i64 %18
  %20 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %19, align 8
  store %struct.mlxsw_sp_port* %20, %struct.mlxsw_sp_port** %7, align 8
  %21 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %7, align 8
  %22 = icmp ne %struct.mlxsw_sp_port* %21, null
  br i1 %22, label %23, label %30

23:                                               ; preds = %3
  %24 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %7, align 8
  %25 = getelementptr inbounds %struct.mlxsw_sp_port, %struct.mlxsw_sp_port* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %23
  %29 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %7, align 8
  br label %31

30:                                               ; preds = %23, %3
  br label %31

31:                                               ; preds = %30, %28
  %32 = phi %struct.mlxsw_sp_port* [ %29, %28 ], [ null, %30 ]
  ret %struct.mlxsw_sp_port* %32
}

declare dso_local i64 @mlxsw_core_lag_mapping_get(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
