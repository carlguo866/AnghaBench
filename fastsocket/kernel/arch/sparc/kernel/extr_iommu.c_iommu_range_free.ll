; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_iommu.c_iommu_range_free.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_iommu.c_iommu_range_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iommu = type { i64, %struct.iommu_arena }
%struct.iommu_arena = type { i32 }

@IO_PAGE_SHIFT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iommu_range_free(%struct.iommu* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.iommu*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.iommu_arena*, align 8
  %8 = alloca i64, align 8
  store %struct.iommu* %0, %struct.iommu** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load %struct.iommu*, %struct.iommu** %4, align 8
  %10 = getelementptr inbounds %struct.iommu, %struct.iommu* %9, i32 0, i32 1
  store %struct.iommu_arena* %10, %struct.iommu_arena** %7, align 8
  %11 = load i64, i64* %5, align 8
  %12 = load %struct.iommu*, %struct.iommu** %4, align 8
  %13 = getelementptr inbounds %struct.iommu, %struct.iommu* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = sub i64 %11, %14
  %16 = load i64, i64* @IO_PAGE_SHIFT, align 8
  %17 = lshr i64 %15, %16
  store i64 %17, i64* %8, align 8
  %18 = load %struct.iommu_arena*, %struct.iommu_arena** %7, align 8
  %19 = getelementptr inbounds %struct.iommu_arena, %struct.iommu_arena* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i64, i64* %8, align 8
  %22 = load i64, i64* %6, align 8
  %23 = call i32 @iommu_area_free(i32 %20, i64 %21, i64 %22)
  ret void
}

declare dso_local i32 @iommu_area_free(i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
