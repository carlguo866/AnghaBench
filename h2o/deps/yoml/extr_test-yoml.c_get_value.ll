; ModuleID = '/home/carl/AnghaBench/h2o/deps/yoml/extr_test-yoml.c_get_value.c'
source_filename = "/home/carl/AnghaBench/h2o/deps/yoml/extr_test-yoml.c_get_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i64, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_14__*, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i64, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }

@YOML_TYPE_SCALAR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_14__* (%struct.TYPE_14__*, i8*)* @get_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_14__* @get_value(%struct.TYPE_14__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 0, i64* %6, align 8
  br label %7

7:                                                ; preds = %56, %2
  %8 = load i64, i64* %6, align 8
  %9 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %8, %13
  br i1 %14, label %15, label %59

15:                                               ; preds = %7
  %16 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 1
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %19, align 8
  %21 = load i64, i64* %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 1
  %24 = load %struct.TYPE_13__*, %struct.TYPE_13__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @YOML_TYPE_SCALAR, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %55

29:                                               ; preds = %15
  %30 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 1
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %33, align 8
  %35 = load i64, i64* %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 1
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i8*, i8** %5, align 8
  %43 = call i64 @strcmp(i32 %41, i8* %42)
  %44 = icmp eq i64 %43, 0
  br i1 %44, label %45, label %55

45:                                               ; preds = %29
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %47 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 1
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %49, align 8
  %51 = load i64, i64* %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_14__*, %struct.TYPE_14__** %53, align 8
  store %struct.TYPE_14__* %54, %struct.TYPE_14__** %3, align 8
  br label %60

55:                                               ; preds = %29, %15
  br label %56

56:                                               ; preds = %55
  %57 = load i64, i64* %6, align 8
  %58 = add i64 %57, 1
  store i64 %58, i64* %6, align 8
  br label %7

59:                                               ; preds = %7
  store %struct.TYPE_14__* null, %struct.TYPE_14__** %3, align 8
  br label %60

60:                                               ; preds = %59, %45
  %61 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  ret %struct.TYPE_14__* %61
}

declare dso_local i64 @strcmp(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
