; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_fid.c_mlxsw_sp_fid_port_vid_unmap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_fid.c_mlxsw_sp_fid_port_vid_unmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp_fid = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.mlxsw_sp_fid*, %struct.mlxsw_sp_port*, i32)* }
%struct.mlxsw_sp_port = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mlxsw_sp_fid_port_vid_unmap(%struct.mlxsw_sp_fid* %0, %struct.mlxsw_sp_port* %1, i32 %2) #0 {
  %4 = alloca %struct.mlxsw_sp_fid*, align 8
  %5 = alloca %struct.mlxsw_sp_port*, align 8
  %6 = alloca i32, align 4
  store %struct.mlxsw_sp_fid* %0, %struct.mlxsw_sp_fid** %4, align 8
  store %struct.mlxsw_sp_port* %1, %struct.mlxsw_sp_port** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.mlxsw_sp_fid*, %struct.mlxsw_sp_fid** %4, align 8
  %8 = getelementptr inbounds %struct.mlxsw_sp_fid, %struct.mlxsw_sp_fid* %7, i32 0, i32 0
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32 (%struct.mlxsw_sp_fid*, %struct.mlxsw_sp_port*, i32)*, i32 (%struct.mlxsw_sp_fid*, %struct.mlxsw_sp_port*, i32)** %12, align 8
  %14 = load %struct.mlxsw_sp_fid*, %struct.mlxsw_sp_fid** %4, align 8
  %15 = load %struct.mlxsw_sp_port*, %struct.mlxsw_sp_port** %5, align 8
  %16 = load i32, i32* %6, align 4
  %17 = call i32 %13(%struct.mlxsw_sp_fid* %14, %struct.mlxsw_sp_port* %15, i32 %16)
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
