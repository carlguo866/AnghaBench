; ModuleID = '/home/carl/AnghaBench/jemalloc/src/extr_eset.c_eset_fit_locked.c'
source_filename = "/home/carl/AnghaBench/jemalloc/src/extr_eset.c_eset_fit_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@PAGE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @eset_fit_locked(i32* %0, %struct.TYPE_5__* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load i32*, i32** %6, align 8
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = call i32 @malloc_mutex_assert_owner(i32* %12, i32* %14)
  %16 = load i64, i64* %8, align 8
  %17 = load i64, i64* %9, align 8
  %18 = call i64 @PAGE_CEILING(i64 %17)
  %19 = add i64 %16, %18
  %20 = load i64, i64* @PAGE, align 8
  %21 = sub i64 %19, %20
  store i64 %21, i64* %10, align 8
  %22 = load i64, i64* %10, align 8
  %23 = load i64, i64* %8, align 8
  %24 = icmp ult i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %4
  store i32* null, i32** %5, align 8
  br label %45

26:                                               ; preds = %4
  %27 = load i32*, i32** %6, align 8
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %29 = load i64, i64* %10, align 8
  %30 = call i32* @eset_first_fit_locked(i32* %27, %struct.TYPE_5__* %28, i64 %29)
  store i32* %30, i32** %11, align 8
  %31 = load i64, i64* %9, align 8
  %32 = load i64, i64* @PAGE, align 8
  %33 = icmp ugt i64 %31, %32
  br i1 %33, label %34, label %43

34:                                               ; preds = %26
  %35 = load i32*, i32** %11, align 8
  %36 = icmp eq i32* %35, null
  br i1 %36, label %37, label %43

37:                                               ; preds = %34
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %39 = load i64, i64* %8, align 8
  %40 = load i64, i64* %10, align 8
  %41 = load i64, i64* %9, align 8
  %42 = call i32* @eset_fit_alignment(%struct.TYPE_5__* %38, i64 %39, i64 %40, i64 %41)
  store i32* %42, i32** %11, align 8
  br label %43

43:                                               ; preds = %37, %34, %26
  %44 = load i32*, i32** %11, align 8
  store i32* %44, i32** %5, align 8
  br label %45

45:                                               ; preds = %43, %25
  %46 = load i32*, i32** %5, align 8
  ret i32* %46
}

declare dso_local i32 @malloc_mutex_assert_owner(i32*, i32*) #1

declare dso_local i64 @PAGE_CEILING(i64) #1

declare dso_local i32* @eset_first_fit_locked(i32*, %struct.TYPE_5__*, i64) #1

declare dso_local i32* @eset_fit_alignment(%struct.TYPE_5__*, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
