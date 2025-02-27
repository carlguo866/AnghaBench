; ModuleID = '/home/carl/AnghaBench/linux/arch/arm64/kernel/extr_hibernate.c_copy_pte.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm64/kernel/extr_hibernate.c_copy_pte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@init_mm = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i64, i64)* @copy_pte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @copy_pte(i32* %0, i32* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load i64, i64* %8, align 8
  store i64 %13, i64* %12, align 8
  %14 = load i32, i32* @GFP_ATOMIC, align 4
  %15 = call i64 @get_safe_page(i32 %14)
  %16 = inttoptr i64 %15 to i32*
  store i32* %16, i32** %11, align 8
  %17 = load i32*, i32** %11, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %4
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %5, align 4
  br label %49

22:                                               ; preds = %4
  %23 = load i32*, i32** %6, align 8
  %24 = load i32*, i32** %11, align 8
  %25 = call i32 @pmd_populate_kernel(i32* @init_mm, i32* %23, i32* %24)
  %26 = load i32*, i32** %6, align 8
  %27 = load i64, i64* %8, align 8
  %28 = call i32* @pte_offset_kernel(i32* %26, i64 %27)
  store i32* %28, i32** %11, align 8
  %29 = load i32*, i32** %7, align 8
  %30 = load i64, i64* %8, align 8
  %31 = call i32* @pte_offset_kernel(i32* %29, i64 %30)
  store i32* %31, i32** %10, align 8
  br label %32

32:                                               ; preds = %37, %22
  %33 = load i32*, i32** %11, align 8
  %34 = load i32*, i32** %10, align 8
  %35 = load i64, i64* %12, align 8
  %36 = call i32 @_copy_pte(i32* %33, i32* %34, i64 %35)
  br label %37

37:                                               ; preds = %32
  %38 = load i32*, i32** %11, align 8
  %39 = getelementptr inbounds i32, i32* %38, i32 1
  store i32* %39, i32** %11, align 8
  %40 = load i32*, i32** %10, align 8
  %41 = getelementptr inbounds i32, i32* %40, i32 1
  store i32* %41, i32** %10, align 8
  %42 = load i64, i64* @PAGE_SIZE, align 8
  %43 = load i64, i64* %12, align 8
  %44 = add i64 %43, %42
  store i64 %44, i64* %12, align 8
  %45 = load i64, i64* %12, align 8
  %46 = load i64, i64* %9, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %32, label %48

48:                                               ; preds = %37
  store i32 0, i32* %5, align 4
  br label %49

49:                                               ; preds = %48, %19
  %50 = load i32, i32* %5, align 4
  ret i32 %50
}

declare dso_local i64 @get_safe_page(i32) #1

declare dso_local i32 @pmd_populate_kernel(i32*, i32*, i32*) #1

declare dso_local i32* @pte_offset_kernel(i32*, i64) #1

declare dso_local i32 @_copy_pte(i32*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
