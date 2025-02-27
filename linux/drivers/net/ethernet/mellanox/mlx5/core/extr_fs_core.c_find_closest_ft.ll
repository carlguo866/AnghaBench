; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_fs_core.c_find_closest_ft.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_fs_core.c_find_closest_ft.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_flow_table = type { i32 }
%struct.fs_prio = type { %struct.fs_node }
%struct.fs_node = type { %struct.fs_node*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mlx5_flow_table* (%struct.fs_prio*, i32)* @find_closest_ft to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mlx5_flow_table* @find_closest_ft(%struct.fs_prio* %0, i32 %1) #0 {
  %3 = alloca %struct.fs_prio*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlx5_flow_table*, align 8
  %6 = alloca %struct.fs_node*, align 8
  %7 = alloca %struct.fs_node*, align 8
  store %struct.fs_prio* %0, %struct.fs_prio** %3, align 8
  store i32 %1, i32* %4, align 4
  store %struct.mlx5_flow_table* null, %struct.mlx5_flow_table** %5, align 8
  %8 = load %struct.fs_prio*, %struct.fs_prio** %3, align 8
  %9 = getelementptr inbounds %struct.fs_prio, %struct.fs_prio* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.fs_node, %struct.fs_node* %9, i32 0, i32 0
  %11 = load %struct.fs_node*, %struct.fs_node** %10, align 8
  store %struct.fs_node* %11, %struct.fs_node** %7, align 8
  %12 = load %struct.fs_prio*, %struct.fs_prio** %3, align 8
  %13 = getelementptr inbounds %struct.fs_prio, %struct.fs_prio* %12, i32 0, i32 0
  store %struct.fs_node* %13, %struct.fs_node** %6, align 8
  br label %14

14:                                               ; preds = %22, %2
  %15 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %5, align 8
  %16 = icmp ne %struct.mlx5_flow_table* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %14
  %18 = load %struct.fs_node*, %struct.fs_node** %7, align 8
  %19 = icmp ne %struct.fs_node* %18, null
  br label %20

20:                                               ; preds = %17, %14
  %21 = phi i1 [ false, %14 ], [ %19, %17 ]
  br i1 %21, label %22, label %32

22:                                               ; preds = %20
  %23 = load %struct.fs_node*, %struct.fs_node** %7, align 8
  %24 = load %struct.fs_node*, %struct.fs_node** %6, align 8
  %25 = getelementptr inbounds %struct.fs_node, %struct.fs_node* %24, i32 0, i32 1
  %26 = load i32, i32* %4, align 4
  %27 = call %struct.mlx5_flow_table* @find_closest_ft_recursive(%struct.fs_node* %23, i32* %25, i32 %26)
  store %struct.mlx5_flow_table* %27, %struct.mlx5_flow_table** %5, align 8
  %28 = load %struct.fs_node*, %struct.fs_node** %7, align 8
  store %struct.fs_node* %28, %struct.fs_node** %6, align 8
  %29 = load %struct.fs_node*, %struct.fs_node** %6, align 8
  %30 = getelementptr inbounds %struct.fs_node, %struct.fs_node* %29, i32 0, i32 0
  %31 = load %struct.fs_node*, %struct.fs_node** %30, align 8
  store %struct.fs_node* %31, %struct.fs_node** %7, align 8
  br label %14

32:                                               ; preds = %20
  %33 = load %struct.mlx5_flow_table*, %struct.mlx5_flow_table** %5, align 8
  ret %struct.mlx5_flow_table* %33
}

declare dso_local %struct.mlx5_flow_table* @find_closest_ft_recursive(%struct.fs_node*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
