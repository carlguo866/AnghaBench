; ModuleID = '/home/carl/AnghaBench/h2o/lib/extr_http1.c_flatten_headers_estimate_size.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/extr_http1.c_flatten_headers_estimate_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.TYPE_8__, i32 }
%struct.TYPE_8__ = type { i32, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { %struct.TYPE_10__, %struct.TYPE_9__* }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_9__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_12__*, i64)* @flatten_headers_estimate_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @flatten_headers_estimate_size(%struct.TYPE_12__* %0, i64 %1) #0 {
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca %struct.TYPE_13__*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @strlen(i32 %11)
  %13 = sext i32 %12 to i64
  %14 = add i64 60, %13
  %15 = load i64, i64* %4, align 8
  %16 = add i64 %14, %15
  %17 = add i64 %16, 4
  %18 = sub i64 %17, 1
  %19 = add i64 %18, 23
  %20 = sub i64 %19, 1
  store i64 %20, i64* %5, align 8
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 1
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %24, align 8
  store %struct.TYPE_13__* %25, %struct.TYPE_13__** %6, align 8
  %26 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %26, i64 %32
  store %struct.TYPE_13__* %33, %struct.TYPE_13__** %7, align 8
  br label %34

34:                                               ; preds = %52, %2
  %35 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %36 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %37 = icmp ne %struct.TYPE_13__* %35, %36
  br i1 %37, label %38, label %55

38:                                               ; preds = %34
  %39 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %39, i32 0, i32 1
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %45 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = add nsw i64 %43, %47
  %49 = add nsw i64 %48, 4
  %50 = load i64, i64* %5, align 8
  %51 = add i64 %50, %49
  store i64 %51, i64* %5, align 8
  br label %52

52:                                               ; preds = %38
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %53, i32 1
  store %struct.TYPE_13__* %54, %struct.TYPE_13__** %6, align 8
  br label %34

55:                                               ; preds = %34
  %56 = load i64, i64* %5, align 8
  ret i64 %56
}

declare dso_local i32 @strlen(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
