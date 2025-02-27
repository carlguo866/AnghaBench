; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_rep.c_mlx5e_rep_neigh_cleanup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_rep.c_mlx5e_rep_neigh_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_rep_priv = type { %struct.mlx5e_neigh_update_table, i32 }
%struct.mlx5e_neigh_update_table = type { i32, i32, i32, i32 }
%struct.mlx5e_priv = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx5e_rep_priv*)* @mlx5e_rep_neigh_cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlx5e_rep_neigh_cleanup(%struct.mlx5e_rep_priv* %0) #0 {
  %2 = alloca %struct.mlx5e_rep_priv*, align 8
  %3 = alloca %struct.mlx5e_neigh_update_table*, align 8
  %4 = alloca %struct.mlx5e_priv*, align 8
  store %struct.mlx5e_rep_priv* %0, %struct.mlx5e_rep_priv** %2, align 8
  %5 = load %struct.mlx5e_rep_priv*, %struct.mlx5e_rep_priv** %2, align 8
  %6 = getelementptr inbounds %struct.mlx5e_rep_priv, %struct.mlx5e_rep_priv* %5, i32 0, i32 0
  store %struct.mlx5e_neigh_update_table* %6, %struct.mlx5e_neigh_update_table** %3, align 8
  %7 = load %struct.mlx5e_rep_priv*, %struct.mlx5e_rep_priv** %2, align 8
  %8 = getelementptr inbounds %struct.mlx5e_rep_priv, %struct.mlx5e_rep_priv* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.mlx5e_priv* @netdev_priv(i32 %9)
  store %struct.mlx5e_priv* %10, %struct.mlx5e_priv** %4, align 8
  %11 = load %struct.mlx5e_neigh_update_table*, %struct.mlx5e_neigh_update_table** %3, align 8
  %12 = getelementptr inbounds %struct.mlx5e_neigh_update_table, %struct.mlx5e_neigh_update_table* %11, i32 0, i32 3
  %13 = call i32 @unregister_netevent_notifier(i32* %12)
  %14 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %4, align 8
  %15 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @flush_workqueue(i32 %16)
  %18 = load %struct.mlx5e_rep_priv*, %struct.mlx5e_rep_priv** %2, align 8
  %19 = getelementptr inbounds %struct.mlx5e_rep_priv, %struct.mlx5e_rep_priv* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.mlx5e_neigh_update_table, %struct.mlx5e_neigh_update_table* %19, i32 0, i32 2
  %21 = call i32 @cancel_delayed_work_sync(i32* %20)
  %22 = load %struct.mlx5e_neigh_update_table*, %struct.mlx5e_neigh_update_table** %3, align 8
  %23 = getelementptr inbounds %struct.mlx5e_neigh_update_table, %struct.mlx5e_neigh_update_table* %22, i32 0, i32 1
  %24 = call i32 @mutex_destroy(i32* %23)
  %25 = load %struct.mlx5e_neigh_update_table*, %struct.mlx5e_neigh_update_table** %3, align 8
  %26 = getelementptr inbounds %struct.mlx5e_neigh_update_table, %struct.mlx5e_neigh_update_table* %25, i32 0, i32 0
  %27 = call i32 @rhashtable_destroy(i32* %26)
  ret void
}

declare dso_local %struct.mlx5e_priv* @netdev_priv(i32) #1

declare dso_local i32 @unregister_netevent_notifier(i32*) #1

declare dso_local i32 @flush_workqueue(i32) #1

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @mutex_destroy(i32*) #1

declare dso_local i32 @rhashtable_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
