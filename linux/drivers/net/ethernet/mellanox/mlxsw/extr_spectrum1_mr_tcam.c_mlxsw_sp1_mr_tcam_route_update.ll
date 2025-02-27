; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum1_mr_tcam.c_mlxsw_sp1_mr_tcam_route_update.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum1_mr_tcam.c_mlxsw_sp1_mr_tcam_route_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp = type { i32 }
%struct.mlxsw_sp_mr_route_key = type { i32 }
%struct.mlxsw_afa_block = type { i32 }
%struct.mlxsw_sp1_mr_tcam_route = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxsw_sp*, i8*, %struct.mlxsw_sp_mr_route_key*, %struct.mlxsw_afa_block*)* @mlxsw_sp1_mr_tcam_route_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sp1_mr_tcam_route_update(%struct.mlxsw_sp* %0, i8* %1, %struct.mlxsw_sp_mr_route_key* %2, %struct.mlxsw_afa_block* %3) #0 {
  %5 = alloca %struct.mlxsw_sp*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.mlxsw_sp_mr_route_key*, align 8
  %8 = alloca %struct.mlxsw_afa_block*, align 8
  %9 = alloca %struct.mlxsw_sp1_mr_tcam_route*, align 8
  store %struct.mlxsw_sp* %0, %struct.mlxsw_sp** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.mlxsw_sp_mr_route_key* %2, %struct.mlxsw_sp_mr_route_key** %7, align 8
  store %struct.mlxsw_afa_block* %3, %struct.mlxsw_afa_block** %8, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = bitcast i8* %10 to %struct.mlxsw_sp1_mr_tcam_route*
  store %struct.mlxsw_sp1_mr_tcam_route* %11, %struct.mlxsw_sp1_mr_tcam_route** %9, align 8
  %12 = load %struct.mlxsw_sp*, %struct.mlxsw_sp** %5, align 8
  %13 = load %struct.mlxsw_sp1_mr_tcam_route*, %struct.mlxsw_sp1_mr_tcam_route** %9, align 8
  %14 = getelementptr inbounds %struct.mlxsw_sp1_mr_tcam_route, %struct.mlxsw_sp1_mr_tcam_route* %13, i32 0, i32 0
  %15 = load %struct.mlxsw_sp_mr_route_key*, %struct.mlxsw_sp_mr_route_key** %7, align 8
  %16 = load %struct.mlxsw_afa_block*, %struct.mlxsw_afa_block** %8, align 8
  %17 = call i32 @mlxsw_sp1_mr_tcam_route_replace(%struct.mlxsw_sp* %12, i32* %14, %struct.mlxsw_sp_mr_route_key* %15, %struct.mlxsw_afa_block* %16)
  ret i32 %17
}

declare dso_local i32 @mlxsw_sp1_mr_tcam_route_replace(%struct.mlxsw_sp*, i32*, %struct.mlxsw_sp_mr_route_key*, %struct.mlxsw_afa_block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
