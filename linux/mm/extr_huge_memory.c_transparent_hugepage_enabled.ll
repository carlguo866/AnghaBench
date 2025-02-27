; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_huge_memory.c_transparent_hugepage_enabled.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_huge_memory.c_transparent_hugepage_enabled.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_area_struct = type { i64 }

@HPAGE_PMD_MASK = common dso_local global i64 0, align 8
@HPAGE_PMD_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @transparent_hugepage_enabled(%struct.vm_area_struct* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vm_area_struct*, align 8
  %4 = alloca i64, align 8
  store %struct.vm_area_struct* %0, %struct.vm_area_struct** %3, align 8
  %5 = load %struct.vm_area_struct*, %struct.vm_area_struct** %3, align 8
  %6 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @HPAGE_PMD_MASK, align 8
  %9 = and i64 %7, %8
  %10 = load i64, i64* @HPAGE_PMD_SIZE, align 8
  %11 = sub i64 %9, %10
  store i64 %11, i64* %4, align 8
  %12 = load %struct.vm_area_struct*, %struct.vm_area_struct** %3, align 8
  %13 = load i64, i64* %4, align 8
  %14 = call i32 @transhuge_vma_suitable(%struct.vm_area_struct* %12, i64 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %32

17:                                               ; preds = %1
  %18 = load %struct.vm_area_struct*, %struct.vm_area_struct** %3, align 8
  %19 = call i64 @vma_is_anonymous(%struct.vm_area_struct* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %17
  %22 = load %struct.vm_area_struct*, %struct.vm_area_struct** %3, align 8
  %23 = call i32 @__transparent_hugepage_enabled(%struct.vm_area_struct* %22)
  store i32 %23, i32* %2, align 4
  br label %32

24:                                               ; preds = %17
  %25 = load %struct.vm_area_struct*, %struct.vm_area_struct** %3, align 8
  %26 = call i64 @vma_is_shmem(%struct.vm_area_struct* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %24
  %29 = load %struct.vm_area_struct*, %struct.vm_area_struct** %3, align 8
  %30 = call i32 @shmem_huge_enabled(%struct.vm_area_struct* %29)
  store i32 %30, i32* %2, align 4
  br label %32

31:                                               ; preds = %24
  store i32 0, i32* %2, align 4
  br label %32

32:                                               ; preds = %31, %28, %21, %16
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

declare dso_local i32 @transhuge_vma_suitable(%struct.vm_area_struct*, i64) #1

declare dso_local i64 @vma_is_anonymous(%struct.vm_area_struct*) #1

declare dso_local i32 @__transparent_hugepage_enabled(%struct.vm_area_struct*) #1

declare dso_local i64 @vma_is_shmem(%struct.vm_area_struct*) #1

declare dso_local i32 @shmem_huge_enabled(%struct.vm_area_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
