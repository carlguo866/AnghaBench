; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_iommu.c_ppc_iommu_unmap_sg.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_iommu.c_ppc_iommu_unmap_sg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iommu_table = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.iommu_table*)* }
%struct.scatterlist = type { i32, i32 }

@DMA_NONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ppc_iommu_unmap_sg(%struct.iommu_table* %0, %struct.scatterlist* %1, i32 %2, i32 %3, i64 %4) #0 {
  %6 = alloca %struct.iommu_table*, align 8
  %7 = alloca %struct.scatterlist*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.scatterlist*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.iommu_table* %0, %struct.iommu_table** %6, align 8
  store %struct.scatterlist* %1, %struct.scatterlist** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i64 %4, i64* %10, align 8
  %14 = load i32, i32* %9, align 4
  %15 = load i32, i32* @DMA_NONE, align 4
  %16 = icmp eq i32 %14, %15
  %17 = zext i1 %16 to i32
  %18 = call i32 @BUG_ON(i32 %17)
  %19 = load %struct.iommu_table*, %struct.iommu_table** %6, align 8
  %20 = icmp ne %struct.iommu_table* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %5
  br label %66

22:                                               ; preds = %5
  %23 = load %struct.scatterlist*, %struct.scatterlist** %7, align 8
  store %struct.scatterlist* %23, %struct.scatterlist** %11, align 8
  br label %24

24:                                               ; preds = %37, %22
  %25 = load i32, i32* %8, align 4
  %26 = add nsw i32 %25, -1
  store i32 %26, i32* %8, align 4
  %27 = icmp ne i32 %25, 0
  br i1 %27, label %28, label %51

28:                                               ; preds = %24
  %29 = load %struct.scatterlist*, %struct.scatterlist** %11, align 8
  %30 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %13, align 4
  %32 = load %struct.scatterlist*, %struct.scatterlist** %11, align 8
  %33 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %28
  br label %51

37:                                               ; preds = %28
  %38 = load i32, i32* %13, align 4
  %39 = load %struct.scatterlist*, %struct.scatterlist** %11, align 8
  %40 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.iommu_table*, %struct.iommu_table** %6, align 8
  %43 = call i32 @IOMMU_PAGE_SIZE(%struct.iommu_table* %42)
  %44 = call i32 @iommu_num_pages(i32 %38, i32 %41, i32 %43)
  store i32 %44, i32* %12, align 4
  %45 = load %struct.iommu_table*, %struct.iommu_table** %6, align 8
  %46 = load i32, i32* %13, align 4
  %47 = load i32, i32* %12, align 4
  %48 = call i32 @__iommu_free(%struct.iommu_table* %45, i32 %46, i32 %47)
  %49 = load %struct.scatterlist*, %struct.scatterlist** %11, align 8
  %50 = call %struct.scatterlist* @sg_next(%struct.scatterlist* %49)
  store %struct.scatterlist* %50, %struct.scatterlist** %11, align 8
  br label %24

51:                                               ; preds = %36, %24
  %52 = load %struct.iommu_table*, %struct.iommu_table** %6, align 8
  %53 = getelementptr inbounds %struct.iommu_table, %struct.iommu_table* %52, i32 0, i32 0
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i32 (%struct.iommu_table*)*, i32 (%struct.iommu_table*)** %55, align 8
  %57 = icmp ne i32 (%struct.iommu_table*)* %56, null
  br i1 %57, label %58, label %66

58:                                               ; preds = %51
  %59 = load %struct.iommu_table*, %struct.iommu_table** %6, align 8
  %60 = getelementptr inbounds %struct.iommu_table, %struct.iommu_table* %59, i32 0, i32 0
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i32 (%struct.iommu_table*)*, i32 (%struct.iommu_table*)** %62, align 8
  %64 = load %struct.iommu_table*, %struct.iommu_table** %6, align 8
  %65 = call i32 %63(%struct.iommu_table* %64)
  br label %66

66:                                               ; preds = %21, %58, %51
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @iommu_num_pages(i32, i32, i32) #1

declare dso_local i32 @IOMMU_PAGE_SIZE(%struct.iommu_table*) #1

declare dso_local i32 @__iommu_free(%struct.iommu_table*, i32, i32) #1

declare dso_local %struct.scatterlist* @sg_next(%struct.scatterlist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
