; ModuleID = '/home/carl/AnghaBench/numpy/numpy/random/src/mt19937/extr_randomkit.c_rk_interval.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/random/src/mt19937/extr_randomkit.c_rk_interval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @rk_interval(i64 %0, i32* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load i64, i64* %4, align 8
  store i64 %8, i64* %6, align 8
  %9 = load i64, i64* %4, align 8
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i64 0, i64* %3, align 8
  br label %43

12:                                               ; preds = %2
  %13 = load i64, i64* %6, align 8
  %14 = lshr i64 %13, 1
  %15 = load i64, i64* %6, align 8
  %16 = or i64 %15, %14
  store i64 %16, i64* %6, align 8
  %17 = load i64, i64* %6, align 8
  %18 = lshr i64 %17, 2
  %19 = load i64, i64* %6, align 8
  %20 = or i64 %19, %18
  store i64 %20, i64* %6, align 8
  %21 = load i64, i64* %6, align 8
  %22 = lshr i64 %21, 4
  %23 = load i64, i64* %6, align 8
  %24 = or i64 %23, %22
  store i64 %24, i64* %6, align 8
  %25 = load i64, i64* %6, align 8
  %26 = lshr i64 %25, 8
  %27 = load i64, i64* %6, align 8
  %28 = or i64 %27, %26
  store i64 %28, i64* %6, align 8
  %29 = load i64, i64* %6, align 8
  %30 = lshr i64 %29, 16
  %31 = load i64, i64* %6, align 8
  %32 = or i64 %31, %30
  store i64 %32, i64* %6, align 8
  br label %33

33:                                               ; preds = %40, %12
  %34 = load i32*, i32** %5, align 8
  %35 = call i64 @rk_ulong(i32* %34)
  %36 = load i64, i64* %6, align 8
  %37 = and i64 %35, %36
  store i64 %37, i64* %7, align 8
  %38 = load i64, i64* %4, align 8
  %39 = icmp ugt i64 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %33
  br label %33

41:                                               ; preds = %33
  %42 = load i64, i64* %7, align 8
  store i64 %42, i64* %3, align 8
  br label %43

43:                                               ; preds = %41, %11
  %44 = load i64, i64* %3, align 8
  ret i64 %44
}

declare dso_local i64 @rk_ulong(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
