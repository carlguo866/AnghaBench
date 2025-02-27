; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_dma-iommu.c_dma_iommu_unmap_sg.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_dma-iommu.c_dma_iommu_unmap_sg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.scatterlist = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*, %struct.scatterlist*, i32, i32, i64)* @dma_iommu_unmap_sg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dma_iommu_unmap_sg(%struct.device* %0, %struct.scatterlist* %1, i32 %2, i32 %3, i64 %4) #0 {
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.scatterlist*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.scatterlist* %1, %struct.scatterlist** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i64 %4, i64* %10, align 8
  %11 = load %struct.device*, %struct.device** %6, align 8
  %12 = load i64, i64* %10, align 8
  %13 = call i32 @dma_iommu_map_bypass(%struct.device* %11, i64 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %23, label %15

15:                                               ; preds = %5
  %16 = load %struct.device*, %struct.device** %6, align 8
  %17 = call i32 @get_iommu_table_base(%struct.device* %16)
  %18 = load %struct.scatterlist*, %struct.scatterlist** %7, align 8
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* %9, align 4
  %21 = load i64, i64* %10, align 8
  %22 = call i32 @ppc_iommu_unmap_sg(i32 %17, %struct.scatterlist* %18, i32 %19, i32 %20, i64 %21)
  br label %30

23:                                               ; preds = %5
  %24 = load %struct.device*, %struct.device** %6, align 8
  %25 = load %struct.scatterlist*, %struct.scatterlist** %7, align 8
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* %9, align 4
  %28 = load i64, i64* %10, align 8
  %29 = call i32 @dma_direct_unmap_sg(%struct.device* %24, %struct.scatterlist* %25, i32 %26, i32 %27, i64 %28)
  br label %30

30:                                               ; preds = %23, %15
  ret void
}

declare dso_local i32 @dma_iommu_map_bypass(%struct.device*, i64) #1

declare dso_local i32 @ppc_iommu_unmap_sg(i32, %struct.scatterlist*, i32, i32, i64) #1

declare dso_local i32 @get_iommu_table_base(%struct.device*) #1

declare dso_local i32 @dma_direct_unmap_sg(%struct.device*, %struct.scatterlist*, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
