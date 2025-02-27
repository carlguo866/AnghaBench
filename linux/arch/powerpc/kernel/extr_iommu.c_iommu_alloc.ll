; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_iommu.c_iommu_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_iommu.c_iommu_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.iommu_table = type { i64, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32 (%struct.iommu_table*, i64, i32, i64, i32, i64)*, i32 (%struct.iommu_table*)* }

@DMA_MAPPING_ERROR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.iommu_table*, i8*, i32, i32, i64, i32, i64)* @iommu_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @iommu_alloc(%struct.device* %0, %struct.iommu_table* %1, i8* %2, i32 %3, i32 %4, i64 %5, i32 %6, i64 %7) #0 {
  %9 = alloca i64, align 8
  %10 = alloca %struct.device*, align 8
  %11 = alloca %struct.iommu_table*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
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
  store i64 %7, i64* %17, align 8
  %21 = load i64, i64* @DMA_MAPPING_ERROR, align 8
  store i64 %21, i64* %19, align 8
  %22 = load %struct.device*, %struct.device** %10, align 8
  %23 = load %struct.iommu_table*, %struct.iommu_table** %11, align 8
  %24 = load i32, i32* %13, align 4
  %25 = load i64, i64* %15, align 8
  %26 = load i32, i32* %16, align 4
  %27 = call i64 @iommu_range_alloc(%struct.device* %22, %struct.iommu_table* %23, i32 %24, i32* null, i64 %25, i32 %26)
  store i64 %27, i64* %18, align 8
  %28 = load i64, i64* %18, align 8
  %29 = load i64, i64* @DMA_MAPPING_ERROR, align 8
  %30 = icmp eq i64 %28, %29
  %31 = zext i1 %30 to i32
  %32 = call i64 @unlikely(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %8
  %35 = load i64, i64* @DMA_MAPPING_ERROR, align 8
  store i64 %35, i64* %9, align 8
  br label %90

36:                                               ; preds = %8
  %37 = load %struct.iommu_table*, %struct.iommu_table** %11, align 8
  %38 = getelementptr inbounds %struct.iommu_table, %struct.iommu_table* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* %18, align 8
  %41 = add i64 %40, %39
  store i64 %41, i64* %18, align 8
  %42 = load i64, i64* %18, align 8
  %43 = load %struct.iommu_table*, %struct.iommu_table** %11, align 8
  %44 = getelementptr inbounds %struct.iommu_table, %struct.iommu_table* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = shl i64 %42, %45
  store i64 %46, i64* %19, align 8
  %47 = load %struct.iommu_table*, %struct.iommu_table** %11, align 8
  %48 = getelementptr inbounds %struct.iommu_table, %struct.iommu_table* %47, i32 0, i32 1
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32 (%struct.iommu_table*, i64, i32, i64, i32, i64)*, i32 (%struct.iommu_table*, i64, i32, i64, i32, i64)** %50, align 8
  %52 = load %struct.iommu_table*, %struct.iommu_table** %11, align 8
  %53 = load i64, i64* %18, align 8
  %54 = load i32, i32* %13, align 4
  %55 = load i8*, i8** %12, align 8
  %56 = ptrtoint i8* %55 to i64
  %57 = load %struct.iommu_table*, %struct.iommu_table** %11, align 8
  %58 = call i64 @IOMMU_PAGE_MASK(%struct.iommu_table* %57)
  %59 = and i64 %56, %58
  %60 = load i32, i32* %14, align 4
  %61 = load i64, i64* %17, align 8
  %62 = call i32 %51(%struct.iommu_table* %52, i64 %53, i32 %54, i64 %59, i32 %60, i64 %61)
  store i32 %62, i32* %20, align 4
  %63 = load i32, i32* %20, align 4
  %64 = call i64 @unlikely(i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %36
  %67 = load %struct.iommu_table*, %struct.iommu_table** %11, align 8
  %68 = load i64, i64* %19, align 8
  %69 = load i32, i32* %13, align 4
  %70 = call i32 @__iommu_free(%struct.iommu_table* %67, i64 %68, i32 %69)
  %71 = load i64, i64* @DMA_MAPPING_ERROR, align 8
  store i64 %71, i64* %9, align 8
  br label %90

72:                                               ; preds = %36
  %73 = load %struct.iommu_table*, %struct.iommu_table** %11, align 8
  %74 = getelementptr inbounds %struct.iommu_table, %struct.iommu_table* %73, i32 0, i32 1
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 1
  %77 = load i32 (%struct.iommu_table*)*, i32 (%struct.iommu_table*)** %76, align 8
  %78 = icmp ne i32 (%struct.iommu_table*)* %77, null
  br i1 %78, label %79, label %87

79:                                               ; preds = %72
  %80 = load %struct.iommu_table*, %struct.iommu_table** %11, align 8
  %81 = getelementptr inbounds %struct.iommu_table, %struct.iommu_table* %80, i32 0, i32 1
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 1
  %84 = load i32 (%struct.iommu_table*)*, i32 (%struct.iommu_table*)** %83, align 8
  %85 = load %struct.iommu_table*, %struct.iommu_table** %11, align 8
  %86 = call i32 %84(%struct.iommu_table* %85)
  br label %87

87:                                               ; preds = %79, %72
  %88 = call i32 (...) @mb()
  %89 = load i64, i64* %19, align 8
  store i64 %89, i64* %9, align 8
  br label %90

90:                                               ; preds = %87, %66, %34
  %91 = load i64, i64* %9, align 8
  ret i64 %91
}

declare dso_local i64 @iommu_range_alloc(%struct.device*, %struct.iommu_table*, i32, i32*, i64, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @IOMMU_PAGE_MASK(%struct.iommu_table*) #1

declare dso_local i32 @__iommu_free(%struct.iommu_table*, i64, i32) #1

declare dso_local i32 @mb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
