; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_router.c_mlxsw_sp_neigh_ipv6_ignore.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_router.c_mlxsw_sp_neigh_ipv6_ignore.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxsw_sp_neigh_entry = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.neighbour* }
%struct.neighbour = type { i32 }
%struct.in6_addr = type { i32 }

@IPV6_ADDR_LINKLOCAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlxsw_sp_neigh_ipv6_ignore(%struct.mlxsw_sp_neigh_entry* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mlxsw_sp_neigh_entry*, align 8
  %4 = alloca %struct.neighbour*, align 8
  store %struct.mlxsw_sp_neigh_entry* %0, %struct.mlxsw_sp_neigh_entry** %3, align 8
  %5 = load %struct.mlxsw_sp_neigh_entry*, %struct.mlxsw_sp_neigh_entry** %3, align 8
  %6 = getelementptr inbounds %struct.mlxsw_sp_neigh_entry, %struct.mlxsw_sp_neigh_entry* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load %struct.neighbour*, %struct.neighbour** %7, align 8
  store %struct.neighbour* %8, %struct.neighbour** %4, align 8
  %9 = load %struct.neighbour*, %struct.neighbour** %4, align 8
  %10 = getelementptr inbounds %struct.neighbour, %struct.neighbour* %9, i32 0, i32 0
  %11 = bitcast i32* %10 to %struct.in6_addr*
  %12 = call i32 @ipv6_addr_type(%struct.in6_addr* %11)
  %13 = load i32, i32* @IPV6_ADDR_LINKLOCAL, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %18

17:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %18

18:                                               ; preds = %17, %16
  %19 = load i32, i32* %2, align 4
  ret i32 %19
}

declare dso_local i32 @ipv6_addr_type(%struct.in6_addr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
