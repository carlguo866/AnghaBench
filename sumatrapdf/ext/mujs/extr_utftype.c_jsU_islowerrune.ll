; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_utftype.c_jsU_islowerrune.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/mujs/extr_utftype.c_jsU_islowerrune.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__toupper2 = common dso_local global i32 0, align 4
@__toupper1 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @islowerrune(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i64*, align 8
  store i64 %0, i64* %3, align 8
  %5 = load i64, i64* %3, align 8
  %6 = load i32, i32* @__toupper2, align 4
  %7 = load i32, i32* @__toupper2, align 4
  %8 = call i32 @nelem(i32 %7)
  %9 = sdiv i32 %8, 3
  %10 = call i64* @bsearch(i64 %5, i32 %6, i32 %9, i32 3)
  store i64* %10, i64** %4, align 8
  %11 = load i64*, i64** %4, align 8
  %12 = icmp ne i64* %11, null
  br i1 %12, label %13, label %26

13:                                               ; preds = %1
  %14 = load i64, i64* %3, align 8
  %15 = load i64*, i64** %4, align 8
  %16 = getelementptr inbounds i64, i64* %15, i64 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp sge i64 %14, %17
  br i1 %18, label %19, label %26

19:                                               ; preds = %13
  %20 = load i64, i64* %3, align 8
  %21 = load i64*, i64** %4, align 8
  %22 = getelementptr inbounds i64, i64* %21, i64 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp sle i64 %20, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  store i32 1, i32* %2, align 4
  br label %43

26:                                               ; preds = %19, %13, %1
  %27 = load i64, i64* %3, align 8
  %28 = load i32, i32* @__toupper1, align 4
  %29 = load i32, i32* @__toupper1, align 4
  %30 = call i32 @nelem(i32 %29)
  %31 = sdiv i32 %30, 2
  %32 = call i64* @bsearch(i64 %27, i32 %28, i32 %31, i32 2)
  store i64* %32, i64** %4, align 8
  %33 = load i64*, i64** %4, align 8
  %34 = icmp ne i64* %33, null
  br i1 %34, label %35, label %42

35:                                               ; preds = %26
  %36 = load i64, i64* %3, align 8
  %37 = load i64*, i64** %4, align 8
  %38 = getelementptr inbounds i64, i64* %37, i64 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp eq i64 %36, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %35
  store i32 1, i32* %2, align 4
  br label %43

42:                                               ; preds = %35, %26
  store i32 0, i32* %2, align 4
  br label %43

43:                                               ; preds = %42, %41, %25
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare dso_local i64* @bsearch(i64, i32, i32, i32) #1

declare dso_local i32 @nelem(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
