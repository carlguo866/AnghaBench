; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_sys_sparc_64.c_sparc_mmap_check.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_sys_sparc_64.c_sparc_mmap_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TIF_32BIT = common dso_local global i32 0, align 4
@STACK_TOP32 = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@VA_EXCLUDE_START = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sparc_mmap_check(i64 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = load i32, i32* @TIF_32BIT, align 4
  %7 = call i64 @test_thread_flag(i32 %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %26

9:                                                ; preds = %2
  %10 = load i64, i64* %5, align 8
  %11 = load i64, i64* @STACK_TOP32, align 8
  %12 = icmp uge i64 %10, %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %9
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %43

16:                                               ; preds = %9
  %17 = load i64, i64* %4, align 8
  %18 = load i64, i64* @STACK_TOP32, align 8
  %19 = load i64, i64* %5, align 8
  %20 = sub i64 %18, %19
  %21 = icmp ugt i64 %17, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %16
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %43

25:                                               ; preds = %16
  br label %42

26:                                               ; preds = %2
  %27 = load i64, i64* %5, align 8
  %28 = load i64, i64* @VA_EXCLUDE_START, align 8
  %29 = icmp uge i64 %27, %28
  br i1 %29, label %30, label %33

30:                                               ; preds = %26
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %43

33:                                               ; preds = %26
  %34 = load i64, i64* %4, align 8
  %35 = load i64, i64* %5, align 8
  %36 = call i64 @invalid_64bit_range(i64 %34, i64 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %33
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %3, align 4
  br label %43

41:                                               ; preds = %33
  br label %42

42:                                               ; preds = %41, %25
  store i32 0, i32* %3, align 4
  br label %43

43:                                               ; preds = %42, %38, %30, %22, %13
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local i64 @test_thread_flag(i32) #1

declare dso_local i64 @invalid_64bit_range(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
