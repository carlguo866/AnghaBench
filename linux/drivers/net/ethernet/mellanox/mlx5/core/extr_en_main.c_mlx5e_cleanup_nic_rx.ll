; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_main.c_mlx5e_cleanup_nic_rx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_en_main.c_mlx5e_cleanup_nic_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5e_priv = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlx5e_priv*)* @mlx5e_cleanup_nic_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlx5e_cleanup_nic_rx(%struct.mlx5e_priv* %0) #0 {
  %2 = alloca %struct.mlx5e_priv*, align 8
  store %struct.mlx5e_priv* %0, %struct.mlx5e_priv** %2, align 8
  %3 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %2, align 8
  %4 = call i32 @mlx5e_tc_nic_cleanup(%struct.mlx5e_priv* %3)
  %5 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %2, align 8
  %6 = call i32 @mlx5e_destroy_flow_steering(%struct.mlx5e_priv* %5)
  %7 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %2, align 8
  %8 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %2, align 8
  %9 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @mlx5e_destroy_direct_tirs(%struct.mlx5e_priv* %7, i32 %10)
  %12 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %2, align 8
  %13 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %2, align 8
  %14 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @mlx5e_destroy_direct_rqts(%struct.mlx5e_priv* %12, i32 %15)
  %17 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %2, align 8
  %18 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %2, align 8
  %19 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @mlx5e_destroy_direct_tirs(%struct.mlx5e_priv* %17, i32 %20)
  %22 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %2, align 8
  %23 = call i32 @mlx5e_destroy_indirect_tirs(%struct.mlx5e_priv* %22, i32 1)
  %24 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %2, align 8
  %25 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %2, align 8
  %26 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @mlx5e_destroy_direct_rqts(%struct.mlx5e_priv* %24, i32 %27)
  %29 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %2, align 8
  %30 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %2, align 8
  %31 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %30, i32 0, i32 1
  %32 = call i32 @mlx5e_destroy_rqt(%struct.mlx5e_priv* %29, i32* %31)
  %33 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %2, align 8
  %34 = getelementptr inbounds %struct.mlx5e_priv, %struct.mlx5e_priv* %33, i32 0, i32 0
  %35 = call i32 @mlx5e_close_drop_rq(i32* %34)
  %36 = load %struct.mlx5e_priv*, %struct.mlx5e_priv** %2, align 8
  %37 = call i32 @mlx5e_destroy_q_counters(%struct.mlx5e_priv* %36)
  ret void
}

declare dso_local i32 @mlx5e_tc_nic_cleanup(%struct.mlx5e_priv*) #1

declare dso_local i32 @mlx5e_destroy_flow_steering(%struct.mlx5e_priv*) #1

declare dso_local i32 @mlx5e_destroy_direct_tirs(%struct.mlx5e_priv*, i32) #1

declare dso_local i32 @mlx5e_destroy_direct_rqts(%struct.mlx5e_priv*, i32) #1

declare dso_local i32 @mlx5e_destroy_indirect_tirs(%struct.mlx5e_priv*, i32) #1

declare dso_local i32 @mlx5e_destroy_rqt(%struct.mlx5e_priv*, i32*) #1

declare dso_local i32 @mlx5e_close_drop_rq(i32*) #1

declare dso_local i32 @mlx5e_destroy_q_counters(%struct.mlx5e_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
