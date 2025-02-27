; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/mm/extr_pgtable.c_ptep_set_access_flags.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/mm/extr_pgtable.c_ptep_set_access_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_area_struct = type { i32 }

@mmu_virtual_psize = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ptep_set_access_flags(%struct.vm_area_struct* %0, i64 %1, i32* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.vm_area_struct*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.vm_area_struct* %0, %struct.vm_area_struct** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %12 = load i32, i32* %9, align 4
  %13 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %14 = load i32, i32* %10, align 4
  %15 = call i32 @set_access_flags_filter(i32 %12, %struct.vm_area_struct* %13, i32 %14)
  store i32 %15, i32* %9, align 4
  %16 = load i32*, i32** %8, align 8
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %9, align 4
  %19 = call i32 @pte_same(i32 %17, i32 %18)
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  store i32 %22, i32* %11, align 4
  %23 = load i32, i32* %11, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %37

25:                                               ; preds = %5
  %26 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %27 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i64, i64* %7, align 8
  %30 = call i32 @assert_pte_locked(i32 %28, i64 %29)
  %31 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %32 = load i32*, i32** %8, align 8
  %33 = load i32, i32* %9, align 4
  %34 = load i64, i64* %7, align 8
  %35 = load i32, i32* @mmu_virtual_psize, align 4
  %36 = call i32 @__ptep_set_access_flags(%struct.vm_area_struct* %31, i32* %32, i32 %33, i64 %34, i32 %35)
  br label %37

37:                                               ; preds = %25, %5
  %38 = load i32, i32* %11, align 4
  ret i32 %38
}

declare dso_local i32 @set_access_flags_filter(i32, %struct.vm_area_struct*, i32) #1

declare dso_local i32 @pte_same(i32, i32) #1

declare dso_local i32 @assert_pte_locked(i32, i64) #1

declare dso_local i32 @__ptep_set_access_flags(%struct.vm_area_struct*, i32*, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
