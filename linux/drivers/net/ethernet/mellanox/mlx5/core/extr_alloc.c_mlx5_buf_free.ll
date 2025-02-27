; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_alloc.c_mlx5_buf_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlx5/core/extr_alloc.c_mlx5_buf_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx5_core_dev = type { i32 }
%struct.mlx5_frag_buf = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mlx5_buf_free(%struct.mlx5_core_dev* %0, %struct.mlx5_frag_buf* %1) #0 {
  %3 = alloca %struct.mlx5_core_dev*, align 8
  %4 = alloca %struct.mlx5_frag_buf*, align 8
  store %struct.mlx5_core_dev* %0, %struct.mlx5_core_dev** %3, align 8
  store %struct.mlx5_frag_buf* %1, %struct.mlx5_frag_buf** %4, align 8
  %5 = load %struct.mlx5_core_dev*, %struct.mlx5_core_dev** %3, align 8
  %6 = getelementptr inbounds %struct.mlx5_core_dev, %struct.mlx5_core_dev* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.mlx5_frag_buf*, %struct.mlx5_frag_buf** %4, align 8
  %9 = getelementptr inbounds %struct.mlx5_frag_buf, %struct.mlx5_frag_buf* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = load %struct.mlx5_frag_buf*, %struct.mlx5_frag_buf** %4, align 8
  %12 = getelementptr inbounds %struct.mlx5_frag_buf, %struct.mlx5_frag_buf* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.mlx5_frag_buf*, %struct.mlx5_frag_buf** %4, align 8
  %17 = getelementptr inbounds %struct.mlx5_frag_buf, %struct.mlx5_frag_buf* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @dma_free_coherent(i32 %7, i32 %10, i32 %15, i32 %20)
  %22 = load %struct.mlx5_frag_buf*, %struct.mlx5_frag_buf** %4, align 8
  %23 = getelementptr inbounds %struct.mlx5_frag_buf, %struct.mlx5_frag_buf* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = call i32 @kfree(%struct.TYPE_2__* %24)
  ret void
}

declare dso_local i32 @dma_free_coherent(i32, i32, i32, i32) #1

declare dso_local i32 @kfree(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
