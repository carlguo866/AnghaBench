; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-chrec.c_chrec_merge.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/gcc/extr_tree-chrec.c_chrec_merge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@chrec_dont_know = common dso_local global i64 0, align 8
@chrec_known = common dso_local global i64 0, align 8
@chrec_not_analyzed_yet = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @chrec_merge(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = load i64, i64* %4, align 8
  %7 = load i64, i64* @chrec_dont_know, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %13, label %9

9:                                                ; preds = %2
  %10 = load i64, i64* %5, align 8
  %11 = load i64, i64* @chrec_dont_know, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %9, %2
  %14 = load i64, i64* @chrec_dont_know, align 8
  store i64 %14, i64* %3, align 8
  br label %46

15:                                               ; preds = %9
  %16 = load i64, i64* %4, align 8
  %17 = load i64, i64* @chrec_known, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %23, label %19

19:                                               ; preds = %15
  %20 = load i64, i64* %5, align 8
  %21 = load i64, i64* @chrec_known, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %19, %15
  %24 = load i64, i64* @chrec_known, align 8
  store i64 %24, i64* %3, align 8
  br label %46

25:                                               ; preds = %19
  %26 = load i64, i64* %4, align 8
  %27 = load i64, i64* @chrec_not_analyzed_yet, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %25
  %30 = load i64, i64* %5, align 8
  store i64 %30, i64* %3, align 8
  br label %46

31:                                               ; preds = %25
  %32 = load i64, i64* %5, align 8
  %33 = load i64, i64* @chrec_not_analyzed_yet, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %31
  %36 = load i64, i64* %4, align 8
  store i64 %36, i64* %3, align 8
  br label %46

37:                                               ; preds = %31
  %38 = load i64, i64* %4, align 8
  %39 = load i64, i64* %5, align 8
  %40 = call i64 @eq_evolutions_p(i64 %38, i64 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %37
  %43 = load i64, i64* %4, align 8
  store i64 %43, i64* %3, align 8
  br label %46

44:                                               ; preds = %37
  %45 = load i64, i64* @chrec_dont_know, align 8
  store i64 %45, i64* %3, align 8
  br label %46

46:                                               ; preds = %44, %42, %35, %29, %23, %13
  %47 = load i64, i64* %3, align 8
  ret i64 %47
}

declare dso_local i64 @eq_evolutions_p(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
