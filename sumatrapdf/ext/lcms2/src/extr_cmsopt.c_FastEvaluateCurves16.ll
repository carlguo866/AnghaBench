; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmsopt.c_FastEvaluateCurves16.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmsopt.c_FastEvaluateCurves16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i64*, i64*, i8*)* @FastEvaluateCurves16 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @FastEvaluateCurves16(i32 %0, i64* %1, i64* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_2__*, align 8
  %10 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i64* %1, i64** %6, align 8
  store i64* %2, i64** %7, align 8
  store i8* %3, i8** %8, align 8
  %11 = load i8*, i8** %8, align 8
  %12 = bitcast i8* %11 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %12, %struct.TYPE_2__** %9, align 8
  %13 = load i32, i32* %5, align 4
  %14 = call i32 @cmsUNUSED_PARAMETER(i32 %13)
  store i64 0, i64* %10, align 8
  br label %15

15:                                               ; preds = %37, %4
  %16 = load i64, i64* %10, align 8
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ult i64 %16, %19
  br i1 %20, label %21, label %40

21:                                               ; preds = %15
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load i64**, i64*** %23, align 8
  %25 = load i64, i64* %10, align 8
  %26 = getelementptr inbounds i64*, i64** %24, i64 %25
  %27 = load i64*, i64** %26, align 8
  %28 = load i64*, i64** %6, align 8
  %29 = load i64, i64* %10, align 8
  %30 = getelementptr inbounds i64, i64* %28, i64 %29
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds i64, i64* %27, i64 %31
  %33 = load i64, i64* %32, align 8
  %34 = load i64*, i64** %7, align 8
  %35 = load i64, i64* %10, align 8
  %36 = getelementptr inbounds i64, i64* %34, i64 %35
  store i64 %33, i64* %36, align 8
  br label %37

37:                                               ; preds = %21
  %38 = load i64, i64* %10, align 8
  %39 = add i64 %38, 1
  store i64 %39, i64* %10, align 8
  br label %15

40:                                               ; preds = %15
  ret void
}

declare dso_local i32 @cmsUNUSED_PARAMETER(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
