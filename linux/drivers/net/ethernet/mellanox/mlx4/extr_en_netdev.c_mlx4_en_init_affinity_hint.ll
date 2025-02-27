; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_en_netdev.c_mlx4_en_init_affinity_hint.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx4/extr_en_netdev.c_mlx4_en_init_affinity_hint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_en_priv = type { %struct.TYPE_4__*, %struct.mlx4_en_rx_ring** }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.mlx4_en_rx_ring = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx4_en_priv*, i32)* @mlx4_en_init_affinity_hint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx4_en_init_affinity_hint(%struct.mlx4_en_priv* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mlx4_en_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mlx4_en_rx_ring*, align 8
  %7 = alloca i32, align 4
  store %struct.mlx4_en_priv* %0, %struct.mlx4_en_priv** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %9 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %8, i32 0, i32 1
  %10 = load %struct.mlx4_en_rx_ring**, %struct.mlx4_en_rx_ring*** %9, align 8
  %11 = load i32, i32* %5, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %10, i64 %12
  %14 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %13, align 8
  store %struct.mlx4_en_rx_ring* %14, %struct.mlx4_en_rx_ring** %6, align 8
  %15 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %4, align 8
  %16 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %15, i32 0, i32 0
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %7, align 4
  %22 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %6, align 8
  %23 = getelementptr inbounds %struct.mlx4_en_rx_ring, %struct.mlx4_en_rx_ring* %22, i32 0, i32 0
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = call i32 @zalloc_cpumask_var(i32* %23, i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %2
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %38

30:                                               ; preds = %2
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @cpumask_local_spread(i32 %31, i32 %32)
  %34 = load %struct.mlx4_en_rx_ring*, %struct.mlx4_en_rx_ring** %6, align 8
  %35 = getelementptr inbounds %struct.mlx4_en_rx_ring, %struct.mlx4_en_rx_ring* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @cpumask_set_cpu(i32 %33, i32 %36)
  store i32 0, i32* %3, align 4
  br label %38

38:                                               ; preds = %30, %27
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local i32 @zalloc_cpumask_var(i32*, i32) #1

declare dso_local i32 @cpumask_set_cpu(i32, i32) #1

declare dso_local i32 @cpumask_local_spread(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
