; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/kernel/extr_iommu.c_iommu_alloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/kernel/extr_iommu.c_iommu_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (%struct.iommu_table*, i64, i32, i64, i32, %struct.dma_attrs*)*, i32 (%struct.iommu_table*)* }
%struct.iommu_table = type { i64 }
%struct.dma_attrs = type { i32 }
%struct.device = type { i32 }

@DMA_ERROR_CODE = common dso_local global i64 0, align 8
@IOMMU_PAGE_SHIFT = common dso_local global i64 0, align 8
@ppc_md = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@IOMMU_PAGE_MASK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.iommu_table*, i8*, i32, i32, i64, i32, %struct.dma_attrs*)* @iommu_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @iommu_alloc(%struct.device* %0, %struct.iommu_table* %1, i8* %2, i32 %3, i32 %4, i64 %5, i32 %6, %struct.dma_attrs* %7) #0 {
  %9 = alloca i64, align 8
  %10 = alloca %struct.device*, align 8
  %11 = alloca %struct.iommu_table*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.dma_attrs*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %10, align 8
  store %struct.iommu_table* %1, %struct.iommu_table** %11, align 8
  store i8* %2, i8** %12, align 8
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i64 %5, i64* %15, align 8
  store i32 %6, i32* %16, align 4
  store %struct.dma_attrs* %7, %struct.dma_attrs** %17, align 8
  %21 = load i64, i64* @DMA_ERROR_CODE, align 8
  store i64 %21, i64* %19, align 8
  %22 = load %struct.device*, %struct.device** %10, align 8
  %23 = load %struct.iommu_table*, %struct.iommu_table** %11, align 8
  %24 = load i32, i32* %13, align 4
  %25 = load i64, i64* %15, align 8
  %26 = load i32, i32* %16, align 4
  %27 = call i64 @iommu_range_alloc(%struct.device* %22, %struct.iommu_table* %23, i32 %24, i32* null, i64 %25, i32 %26)
  store i64 %27, i64* %18, align 8
  %28 = load i64, i64* %18, align 8
  %29 = load i64, i64* @DMA_ERROR_CODE, align 8
  %30 = icmp eq i64 %28, %29
  %31 = zext i1 %30 to i32
  %32 = call i64 @unlikely(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %8
  %35 = load i64, i64* @DMA_ERROR_CODE, align 8
  store i64 %35, i64* %9, align 8
  br label %75

36:                                               ; preds = %8
  %37 = load %struct.iommu_table*, %struct.iommu_table** %11, align 8
  %38 = getelementptr inbounds %struct.iommu_table, %struct.iommu_table* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* %18, align 8
  %41 = add i64 %40, %39
  store i64 %41, i64* %18, align 8
  %42 = load i64, i64* %18, align 8
  %43 = load i64, i64* @IOMMU_PAGE_SHIFT, align 8
  %44 = shl i64 %42, %43
  store i64 %44, i64* %19, align 8
  %45 = load i32 (%struct.iommu_table*, i64, i32, i64, i32, %struct.dma_attrs*)*, i32 (%struct.iommu_table*, i64, i32, i64, i32, %struct.dma_attrs*)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ppc_md, i32 0, i32 0), align 8
  %46 = load %struct.iommu_table*, %struct.iommu_table** %11, align 8
  %47 = load i64, i64* %18, align 8
  %48 = load i32, i32* %13, align 4
  %49 = load i8*, i8** %12, align 8
  %50 = ptrtoint i8* %49 to i64
  %51 = load i64, i64* @IOMMU_PAGE_MASK, align 8
  %52 = and i64 %50, %51
  %53 = load i32, i32* %14, align 4
  %54 = load %struct.dma_attrs*, %struct.dma_attrs** %17, align 8
  %55 = call i32 %45(%struct.iommu_table* %46, i64 %47, i32 %48, i64 %52, i32 %53, %struct.dma_attrs* %54)
  store i32 %55, i32* %20, align 4
  %56 = load i32, i32* %20, align 4
  %57 = call i64 @unlikely(i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %36
  %60 = load %struct.iommu_table*, %struct.iommu_table** %11, align 8
  %61 = load i64, i64* %19, align 8
  %62 = load i32, i32* %13, align 4
  %63 = call i32 @__iommu_free(%struct.iommu_table* %60, i64 %61, i32 %62)
  %64 = load i64, i64* @DMA_ERROR_CODE, align 8
  store i64 %64, i64* %9, align 8
  br label %75

65:                                               ; preds = %36
  %66 = load i32 (%struct.iommu_table*)*, i32 (%struct.iommu_table*)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ppc_md, i32 0, i32 1), align 8
  %67 = icmp ne i32 (%struct.iommu_table*)* %66, null
  br i1 %67, label %68, label %72

68:                                               ; preds = %65
  %69 = load i32 (%struct.iommu_table*)*, i32 (%struct.iommu_table*)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @ppc_md, i32 0, i32 1), align 8
  %70 = load %struct.iommu_table*, %struct.iommu_table** %11, align 8
  %71 = call i32 %69(%struct.iommu_table* %70)
  br label %72

72:                                               ; preds = %68, %65
  %73 = call i32 (...) @mb()
  %74 = load i64, i64* %19, align 8
  store i64 %74, i64* %9, align 8
  br label %75

75:                                               ; preds = %72, %59, %34
  %76 = load i64, i64* %9, align 8
  ret i64 %76
}

declare dso_local i64 @iommu_range_alloc(%struct.device*, %struct.iommu_table*, i32, i32*, i64, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @__iommu_free(%struct.iommu_table*, i64, i32) #1

declare dso_local i32 @mb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
