; ModuleID = '/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_datetime_busday.c_find_earliest_holiday_on_or_after.c'
source_filename = "/home/carl/AnghaBench/numpy/numpy/core/src/multiarray/extr_datetime_busday.c_find_earliest_holiday_on_or_after.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64* (i64, i64*, i64*)* @find_earliest_holiday_on_or_after to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64* @find_earliest_holiday_on_or_after(i64 %0, i64* %1, i64* %2) #0 {
  %4 = alloca i64*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  store i64 %0, i64* %5, align 8
  store i64* %1, i64** %6, align 8
  store i64* %2, i64** %7, align 8
  br label %9

9:                                                ; preds = %40, %3
  %10 = load i64*, i64** %6, align 8
  %11 = load i64*, i64** %7, align 8
  %12 = icmp ult i64* %10, %11
  br i1 %12, label %13, label %41

13:                                               ; preds = %9
  %14 = load i64*, i64** %6, align 8
  %15 = load i64*, i64** %7, align 8
  %16 = load i64*, i64** %6, align 8
  %17 = ptrtoint i64* %15 to i64
  %18 = ptrtoint i64* %16 to i64
  %19 = sub i64 %17, %18
  %20 = sdiv exact i64 %19, 8
  %21 = sdiv i64 %20, 2
  %22 = getelementptr inbounds i64, i64* %14, i64 %21
  store i64* %22, i64** %8, align 8
  %23 = load i64, i64* %5, align 8
  %24 = load i64*, i64** %8, align 8
  %25 = load i64, i64* %24, align 8
  %26 = icmp slt i64 %23, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %13
  %28 = load i64*, i64** %8, align 8
  store i64* %28, i64** %7, align 8
  br label %40

29:                                               ; preds = %13
  %30 = load i64, i64* %5, align 8
  %31 = load i64*, i64** %8, align 8
  %32 = load i64, i64* %31, align 8
  %33 = icmp sgt i64 %30, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %29
  %35 = load i64*, i64** %8, align 8
  %36 = getelementptr inbounds i64, i64* %35, i64 1
  store i64* %36, i64** %6, align 8
  br label %39

37:                                               ; preds = %29
  %38 = load i64*, i64** %8, align 8
  store i64* %38, i64** %4, align 8
  br label %43

39:                                               ; preds = %34
  br label %40

40:                                               ; preds = %39, %27
  br label %9

41:                                               ; preds = %9
  %42 = load i64*, i64** %6, align 8
  store i64* %42, i64** %4, align 8
  br label %43

43:                                               ; preds = %41, %37
  %44 = load i64*, i64** %4, align 8
  ret i64* %44
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
