; ModuleID = '/home/carl/AnghaBench/h2o/lib/core/extr_headers.c_add_header.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/core/extr_headers.c_add_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32, i32*, %struct.TYPE_9__, %struct.TYPE_10__* }
%struct.TYPE_9__ = type { i8*, i64 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_13__ = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, %struct.TYPE_11__*, %struct.TYPE_10__*, i8*, i8*, i64, i32)* @add_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @add_header(i32* %0, %struct.TYPE_11__* %1, %struct.TYPE_10__* %2, i8* %3, i8* %4, i64 %5, i32 %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_11__*, align 8
  %10 = alloca %struct.TYPE_10__*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_12__*, align 8
  %16 = alloca %struct.TYPE_13__, align 8
  store i32* %0, i32** %8, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %9, align 8
  store %struct.TYPE_10__* %2, %struct.TYPE_10__** %10, align 8
  store i8* %3, i8** %11, align 8
  store i8* %4, i8** %12, align 8
  store i64 %5, i64* %13, align 8
  store i32 %6, i32* %14, align 4
  %17 = load i32*, i32** %8, align 8
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = add nsw i64 %21, 1
  %23 = call i32 @h2o_vector_reserve(i32* %17, %struct.TYPE_11__* %18, i64 %22)
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 1
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %25, align 8
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = add nsw i64 %29, 1
  store i64 %30, i64* %28, align 8
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i64 %29
  store %struct.TYPE_12__* %31, %struct.TYPE_12__** %15, align 8
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i32 0, i32 3
  store %struct.TYPE_10__* %32, %struct.TYPE_10__** %34, align 8
  %35 = load i8*, i8** %12, align 8
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 0
  store i8* %35, i8** %38, align 8
  %39 = load i64, i64* %13, align 8
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 1
  store i64 %39, i64* %42, align 8
  %43 = load i8*, i8** %11, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %45, label %55

45:                                               ; preds = %7
  %46 = load i32*, i32** %8, align 8
  %47 = load i8*, i8** %11, align 8
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32* @h2o_strdup(i32* %46, i8* %47, i32 %50)
  %52 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 0
  store i32* %51, i32** %52, align 8
  %53 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  br label %56

55:                                               ; preds = %7
  br label %56

56:                                               ; preds = %55, %45
  %57 = phi i32* [ %54, %45 ], [ null, %55 ]
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 1
  store i32* %57, i32** %59, align 8
  %60 = load i32, i32* %14, align 4
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 8
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = sub nsw i64 %65, 1
  ret i64 %66
}

declare dso_local i32 @h2o_vector_reserve(i32*, %struct.TYPE_11__*, i64) #1

declare dso_local i32* @h2o_strdup(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
