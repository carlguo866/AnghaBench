; ModuleID = '/home/carl/AnghaBench/TDengine/src/client/src/extr_tscSecondaryMerge.c_finalizeRes.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/client/src/extr_tscSecondaryMerge.c_finalizeRes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32 (%struct.TYPE_24__*)* }
%struct.TYPE_24__ = type { %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_22__ = type { %struct.TYPE_20__ }
%struct.TYPE_20__ = type { i64 }
%struct.TYPE_23__ = type { i32, %struct.TYPE_19__*, %struct.TYPE_24__* }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_21__ = type { i64 }

@aAggs = common dso_local global %struct.TYPE_17__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @finalizeRes(%struct.TYPE_22__* %0, %struct.TYPE_23__* %1) #0 {
  %3 = alloca %struct.TYPE_22__*, align 8
  %4 = alloca %struct.TYPE_23__*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_21__*, align 8
  %7 = alloca i64, align 8
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %3, align 8
  store %struct.TYPE_23__* %1, %struct.TYPE_23__** %4, align 8
  store i64 0, i64* %5, align 8
  br label %8

8:                                                ; preds = %40, %2
  %9 = load i64, i64* %5, align 8
  %10 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ult i64 %9, %13
  br i1 %14, label %15, label %43

15:                                               ; preds = %8
  %16 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %17 = load i64, i64* %5, align 8
  %18 = call %struct.TYPE_21__* @tscSqlExprGet(%struct.TYPE_22__* %16, i64 %17)
  store %struct.TYPE_21__* %18, %struct.TYPE_21__** %6, align 8
  %19 = load %struct.TYPE_17__*, %struct.TYPE_17__** @aAggs, align 8
  %20 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %19, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %23, i32 0, i32 0
  %25 = load i32 (%struct.TYPE_24__*)*, i32 (%struct.TYPE_24__*)** %24, align 8
  %26 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %26, i32 0, i32 2
  %28 = load %struct.TYPE_24__*, %struct.TYPE_24__** %27, align 8
  %29 = load i64, i64* %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %28, i64 %29
  %31 = call i32 %25(%struct.TYPE_24__* %30)
  %32 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %32, i32 0, i32 2
  %34 = load %struct.TYPE_24__*, %struct.TYPE_24__** %33, align 8
  %35 = load i64, i64* %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %34, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_18__*, %struct.TYPE_18__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %38, i32 0, i32 0
  store i32 0, i32* %39, align 4
  br label %40

40:                                               ; preds = %15
  %41 = load i64, i64* %5, align 8
  %42 = add i64 %41, 1
  store i64 %42, i64* %5, align 8
  br label %8

43:                                               ; preds = %8
  %44 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %44, i32 0, i32 0
  store i32 0, i32* %45, align 8
  %46 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %47 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %47, i32 0, i32 2
  %49 = load %struct.TYPE_24__*, %struct.TYPE_24__** %48, align 8
  %50 = call i32 @getNumOfResultLocal(%struct.TYPE_22__* %46, %struct.TYPE_24__* %49)
  %51 = sext i32 %50 to i64
  store i64 %51, i64* %7, align 8
  %52 = load i64, i64* %7, align 8
  %53 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %53, i32 0, i32 1
  %55 = load %struct.TYPE_19__*, %struct.TYPE_19__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = sext i32 %57 to i64
  %59 = add i64 %58, %52
  %60 = trunc i64 %59 to i32
  store i32 %60, i32* %56, align 4
  %61 = load %struct.TYPE_22__*, %struct.TYPE_22__** %3, align 8
  %62 = load i64, i64* %7, align 8
  %63 = load %struct.TYPE_23__*, %struct.TYPE_23__** %4, align 8
  %64 = call i32 @fillMultiRowsOfTagsVal(%struct.TYPE_22__* %61, i64 %62, %struct.TYPE_23__* %63)
  %65 = load i64, i64* %7, align 8
  ret i64 %65
}

declare dso_local %struct.TYPE_21__* @tscSqlExprGet(%struct.TYPE_22__*, i64) #1

declare dso_local i32 @getNumOfResultLocal(%struct.TYPE_22__*, %struct.TYPE_24__*) #1

declare dso_local i32 @fillMultiRowsOfTagsVal(%struct.TYPE_22__*, i64, %struct.TYPE_23__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
