; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/mm/extr_pat.c_untrack_pfn_vma.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/mm/extr_pat.c_untrack_pfn_vma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_area_struct = type { i64, i64, i64 }

@PAGE_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @untrack_pfn_vma(%struct.vm_area_struct* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.vm_area_struct*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.vm_area_struct* %0, %struct.vm_area_struct** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %10 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %13 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = sub i64 %11, %14
  store i64 %15, i64* %8, align 8
  %16 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %17 = call i64 @is_linear_pfn_mapping(%struct.vm_area_struct* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %29

19:                                               ; preds = %3
  %20 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %21 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = trunc i64 %22 to i32
  %24 = load i32, i32* @PAGE_SHIFT, align 4
  %25 = shl i32 %23, %24
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  %27 = load i64, i64* %8, align 8
  %28 = call i32 @free_pfn_range(i32 %26, i64 %27)
  br label %29

29:                                               ; preds = %19, %3
  ret void
}

declare dso_local i64 @is_linear_pfn_mapping(%struct.vm_area_struct*) #1

declare dso_local i32 @free_pfn_range(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
