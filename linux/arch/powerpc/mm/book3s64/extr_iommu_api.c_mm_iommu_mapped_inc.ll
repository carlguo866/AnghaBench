; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/mm/book3s64/extr_iommu_api.c_mm_iommu_mapped_inc.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/mm/book3s64/extr_iommu_api.c_mm_iommu_mapped_inc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mm_iommu_table_group_mem_t = type { i32 }

@ENXIO = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @mm_iommu_mapped_inc(%struct.mm_iommu_table_group_mem_t* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.mm_iommu_table_group_mem_t*, align 8
  store %struct.mm_iommu_table_group_mem_t* %0, %struct.mm_iommu_table_group_mem_t** %3, align 8
  %4 = load %struct.mm_iommu_table_group_mem_t*, %struct.mm_iommu_table_group_mem_t** %3, align 8
  %5 = getelementptr inbounds %struct.mm_iommu_table_group_mem_t, %struct.mm_iommu_table_group_mem_t* %4, i32 0, i32 0
  %6 = call i64 @atomic64_inc_not_zero(i32* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store i64 0, i64* %2, align 8
  br label %12

9:                                                ; preds = %1
  %10 = load i64, i64* @ENXIO, align 8
  %11 = sub nsw i64 0, %10
  store i64 %11, i64* %2, align 8
  br label %12

12:                                               ; preds = %9, %8
  %13 = load i64, i64* %2, align 8
  ret i64 %13
}

declare dso_local i64 @atomic64_inc_not_zero(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
