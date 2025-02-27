; ModuleID = '/home/carl/AnghaBench/linux/arch/ia64/mm/extr_hugetlbpage.c_huge_pte_offset.c'
source_filename = "/home/carl/AnghaBench/linux/arch/ia64/mm/extr_hugetlbpage.c_huge_pte_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mm_struct = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @huge_pte_offset(%struct.mm_struct* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.mm_struct*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  store %struct.mm_struct* %0, %struct.mm_struct** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %12 = load i64, i64* %5, align 8
  %13 = call i64 @htlbpage_to_page(i64 %12)
  store i64 %13, i64* %7, align 8
  store i32* null, i32** %11, align 8
  %14 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %15 = load i64, i64* %7, align 8
  %16 = call i32* @pgd_offset(%struct.mm_struct* %14, i64 %15)
  store i32* %16, i32** %8, align 8
  %17 = load i32*, i32** %8, align 8
  %18 = load i32, i32* %17, align 4
  %19 = call i64 @pgd_present(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %43

21:                                               ; preds = %3
  %22 = load i32*, i32** %8, align 8
  %23 = load i64, i64* %7, align 8
  %24 = call i32* @pud_offset(i32* %22, i64 %23)
  store i32* %24, i32** %9, align 8
  %25 = load i32*, i32** %9, align 8
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @pud_present(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %42

29:                                               ; preds = %21
  %30 = load i32*, i32** %9, align 8
  %31 = load i64, i64* %7, align 8
  %32 = call i32* @pmd_offset(i32* %30, i64 %31)
  store i32* %32, i32** %10, align 8
  %33 = load i32*, i32** %10, align 8
  %34 = load i32, i32* %33, align 4
  %35 = call i64 @pmd_present(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %29
  %38 = load i32*, i32** %10, align 8
  %39 = load i64, i64* %7, align 8
  %40 = call i32* @pte_offset_map(i32* %38, i64 %39)
  store i32* %40, i32** %11, align 8
  br label %41

41:                                               ; preds = %37, %29
  br label %42

42:                                               ; preds = %41, %21
  br label %43

43:                                               ; preds = %42, %3
  %44 = load i32*, i32** %11, align 8
  ret i32* %44
}

declare dso_local i64 @htlbpage_to_page(i64) #1

declare dso_local i32* @pgd_offset(%struct.mm_struct*, i64) #1

declare dso_local i64 @pgd_present(i32) #1

declare dso_local i32* @pud_offset(i32*, i64) #1

declare dso_local i64 @pud_present(i32) #1

declare dso_local i32* @pmd_offset(i32*, i64) #1

declare dso_local i64 @pmd_present(i32) #1

declare dso_local i32* @pte_offset_map(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
