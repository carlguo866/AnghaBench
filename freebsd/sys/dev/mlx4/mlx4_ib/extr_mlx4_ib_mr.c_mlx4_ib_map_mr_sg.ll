; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_ib/extr_mlx4_ib_mr.c_mlx4_ib_map_mr_sg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_ib/extr_mlx4_ib_mr.c_mlx4_ib_map_mr_sg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_mr = type { i32 }
%struct.scatterlist = type { i32 }
%struct.mlx4_ib_mr = type { i32, i32, i64 }

@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@mlx4_set_page = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mlx4_ib_map_mr_sg(%struct.ib_mr* %0, %struct.scatterlist* %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.ib_mr*, align 8
  %6 = alloca %struct.scatterlist*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.mlx4_ib_mr*, align 8
  %10 = alloca i32, align 4
  store %struct.ib_mr* %0, %struct.ib_mr** %5, align 8
  store %struct.scatterlist* %1, %struct.scatterlist** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %11 = load %struct.ib_mr*, %struct.ib_mr** %5, align 8
  %12 = call %struct.mlx4_ib_mr* @to_mmr(%struct.ib_mr* %11)
  store %struct.mlx4_ib_mr* %12, %struct.mlx4_ib_mr** %9, align 8
  %13 = load %struct.mlx4_ib_mr*, %struct.mlx4_ib_mr** %9, align 8
  %14 = getelementptr inbounds %struct.mlx4_ib_mr, %struct.mlx4_ib_mr* %13, i32 0, i32 2
  store i64 0, i64* %14, align 8
  %15 = load %struct.ib_mr*, %struct.ib_mr** %5, align 8
  %16 = getelementptr inbounds %struct.ib_mr, %struct.ib_mr* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.mlx4_ib_mr*, %struct.mlx4_ib_mr** %9, align 8
  %19 = getelementptr inbounds %struct.mlx4_ib_mr, %struct.mlx4_ib_mr* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.mlx4_ib_mr*, %struct.mlx4_ib_mr** %9, align 8
  %22 = getelementptr inbounds %struct.mlx4_ib_mr, %struct.mlx4_ib_mr* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @DMA_TO_DEVICE, align 4
  %25 = call i32 @ib_dma_sync_single_for_cpu(i32 %17, i32 %20, i32 %23, i32 %24)
  %26 = load %struct.ib_mr*, %struct.ib_mr** %5, align 8
  %27 = load %struct.scatterlist*, %struct.scatterlist** %6, align 8
  %28 = load i32, i32* %7, align 4
  %29 = load i32*, i32** %8, align 8
  %30 = load i32, i32* @mlx4_set_page, align 4
  %31 = call i32 @ib_sg_to_pages(%struct.ib_mr* %26, %struct.scatterlist* %27, i32 %28, i32* %29, i32 %30)
  store i32 %31, i32* %10, align 4
  %32 = load %struct.ib_mr*, %struct.ib_mr** %5, align 8
  %33 = getelementptr inbounds %struct.ib_mr, %struct.ib_mr* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.mlx4_ib_mr*, %struct.mlx4_ib_mr** %9, align 8
  %36 = getelementptr inbounds %struct.mlx4_ib_mr, %struct.mlx4_ib_mr* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.mlx4_ib_mr*, %struct.mlx4_ib_mr** %9, align 8
  %39 = getelementptr inbounds %struct.mlx4_ib_mr, %struct.mlx4_ib_mr* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @DMA_TO_DEVICE, align 4
  %42 = call i32 @ib_dma_sync_single_for_device(i32 %34, i32 %37, i32 %40, i32 %41)
  %43 = load i32, i32* %10, align 4
  ret i32 %43
}

declare dso_local %struct.mlx4_ib_mr* @to_mmr(%struct.ib_mr*) #1

declare dso_local i32 @ib_dma_sync_single_for_cpu(i32, i32, i32, i32) #1

declare dso_local i32 @ib_sg_to_pages(%struct.ib_mr*, %struct.scatterlist*, i32, i32*, i32) #1

declare dso_local i32 @ib_dma_sync_single_for_device(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
