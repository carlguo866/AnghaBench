; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_mr.c___mlxsw_sp_mr_route_del.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_mr.c___mlxsw_sp_mr_route_del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp_mr_table = type { i32 }
%struct.mlxsw_sp_mr_route = type { i32, i32 }

@mlxsw_sp_mr_route_ht_params = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlxsw_sp_mr_table*, %struct.mlxsw_sp_mr_route*)* @__mlxsw_sp_mr_route_del to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__mlxsw_sp_mr_route_del(%struct.mlxsw_sp_mr_table* %0, %struct.mlxsw_sp_mr_route* %1) #0 {
  %3 = alloca %struct.mlxsw_sp_mr_table*, align 8
  %4 = alloca %struct.mlxsw_sp_mr_route*, align 8
  store %struct.mlxsw_sp_mr_table* %0, %struct.mlxsw_sp_mr_table** %3, align 8
  store %struct.mlxsw_sp_mr_route* %1, %struct.mlxsw_sp_mr_route** %4, align 8
  %5 = load %struct.mlxsw_sp_mr_route*, %struct.mlxsw_sp_mr_route** %4, align 8
  %6 = call i32 @mlxsw_sp_mr_mfc_offload_set(%struct.mlxsw_sp_mr_route* %5, i32 0)
  %7 = load %struct.mlxsw_sp_mr_table*, %struct.mlxsw_sp_mr_table** %3, align 8
  %8 = load %struct.mlxsw_sp_mr_route*, %struct.mlxsw_sp_mr_route** %4, align 8
  %9 = call i32 @mlxsw_sp_mr_route_erase(%struct.mlxsw_sp_mr_table* %7, %struct.mlxsw_sp_mr_route* %8)
  %10 = load %struct.mlxsw_sp_mr_table*, %struct.mlxsw_sp_mr_table** %3, align 8
  %11 = getelementptr inbounds %struct.mlxsw_sp_mr_table, %struct.mlxsw_sp_mr_table* %10, i32 0, i32 0
  %12 = load %struct.mlxsw_sp_mr_route*, %struct.mlxsw_sp_mr_route** %4, align 8
  %13 = getelementptr inbounds %struct.mlxsw_sp_mr_route, %struct.mlxsw_sp_mr_route* %12, i32 0, i32 1
  %14 = load i32, i32* @mlxsw_sp_mr_route_ht_params, align 4
  %15 = call i32 @rhashtable_remove_fast(i32* %11, i32* %13, i32 %14)
  %16 = load %struct.mlxsw_sp_mr_route*, %struct.mlxsw_sp_mr_route** %4, align 8
  %17 = getelementptr inbounds %struct.mlxsw_sp_mr_route, %struct.mlxsw_sp_mr_route* %16, i32 0, i32 0
  %18 = call i32 @list_del(i32* %17)
  %19 = load %struct.mlxsw_sp_mr_table*, %struct.mlxsw_sp_mr_table** %3, align 8
  %20 = load %struct.mlxsw_sp_mr_route*, %struct.mlxsw_sp_mr_route** %4, align 8
  %21 = call i32 @mlxsw_sp_mr_route_destroy(%struct.mlxsw_sp_mr_table* %19, %struct.mlxsw_sp_mr_route* %20)
  ret void
}

declare dso_local i32 @mlxsw_sp_mr_mfc_offload_set(%struct.mlxsw_sp_mr_route*, i32) #1

declare dso_local i32 @mlxsw_sp_mr_route_erase(%struct.mlxsw_sp_mr_table*, %struct.mlxsw_sp_mr_route*) #1

declare dso_local i32 @rhashtable_remove_fast(i32*, i32*, i32) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @mlxsw_sp_mr_route_destroy(%struct.mlxsw_sp_mr_table*, %struct.mlxsw_sp_mr_route*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
