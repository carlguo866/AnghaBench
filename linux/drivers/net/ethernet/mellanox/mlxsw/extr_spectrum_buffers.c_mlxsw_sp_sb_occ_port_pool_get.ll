; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_buffers.c_mlxsw_sp_sb_occ_port_pool_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_buffers.c_mlxsw_sp_sb_occ_port_pool_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_core_port = type { i32 }
%struct.mlxsw_sp_port = type { i32, %struct.mlxsw_sp* }
%struct.mlxsw_sp = type { i32 }
%struct.mlxsw_sp_sb_pm = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlxsw_sp_sb_occ_port_pool_get(%struct.mlxsw_core_port* %0, i32 %1, i32 %2, i32* %3, i32* %4) #0 {
  %6 = alloca %struct.mlxsw_core_port*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.mlxsw_sp_port*, align 8
  %12 = alloca %struct.mlxsw_sp*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.mlxsw_sp_sb_pm*, align 8
  store %struct.mlxsw_core_port* %0, %struct.mlxsw_core_port** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %15 = load %struct.mlxsw_core_port*, %struct.mlxsw_core_port** %6, align 8
  %16 = call %struct.mlxsw_sp_port* @mlxsw_core_port_driver_priv(%struct.mlxsw_core_port* %15)
  store %struct.mlxsw_sp_port* %16, %struct.mlxsw_sp_port** %11, align 8
  %17 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %11, align 8
  %18 = getelementptr inbounds %struct.mlxsw_sp_port, %struct.mlxsw_sp_port* %17, i32 0, i32 1
  %19 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %18, align 8
  store %struct.mlxsw_sp* %19, %struct.mlxsw_sp** %12, align 8
  %20 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %11, align 8
  %21 = getelementptr inbounds %struct.mlxsw_sp_port, %struct.mlxsw_sp_port* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %13, align 4
  %23 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %12, align 8
  %24 = load i32, i32* %13, align 4
  %25 = load i32, i32* %8, align 4
  %26 = call %struct.mlxsw_sp_sb_pm* @mlxsw_sp_sb_pm_get(%struct.mlxsw_sp* %23, i32 %24, i32 %25)
  store %struct.mlxsw_sp_sb_pm* %26, %struct.mlxsw_sp_sb_pm** %14, align 8
  %27 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %12, align 8
  %28 = load %struct.mlxsw_sp_sb_pm*, %struct.mlxsw_sp_sb_pm** %14, align 8
  %29 = getelementptr inbounds %struct.mlxsw_sp_sb_pm, %struct.mlxsw_sp_sb_pm* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @mlxsw_sp_cells_bytes(%struct.mlxsw_sp* %27, i32 %31)
  %33 = load i32*, i32** %9, align 8
  store i32 %32, i32* %33, align 4
  %34 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %12, align 8
  %35 = load %struct.mlxsw_sp_sb_pm*, %struct.mlxsw_sp_sb_pm** %14, align 8
  %36 = getelementptr inbounds %struct.mlxsw_sp_sb_pm, %struct.mlxsw_sp_sb_pm* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @mlxsw_sp_cells_bytes(%struct.mlxsw_sp* %34, i32 %38)
  %40 = load i32*, i32** %10, align 8
  store i32 %39, i32* %40, align 4
  ret i32 0
}

declare dso_local %struct.mlxsw_sp_port* @mlxsw_core_port_driver_priv(%struct.mlxsw_core_port*) #1

declare dso_local %struct.mlxsw_sp_sb_pm* @mlxsw_sp_sb_pm_get(%struct.mlxsw_sp*, i32, i32) #1

declare dso_local i32 @mlxsw_sp_cells_bytes(%struct.mlxsw_sp*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
