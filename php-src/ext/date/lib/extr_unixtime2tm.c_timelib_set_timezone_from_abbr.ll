; ModuleID = '/home/carl/AnghaBench/php-src/ext/date/lib/extr_unixtime2tm.c_timelib_set_timezone_from_abbr.c'
source_filename = "/home/carl/AnghaBench/php-src/ext/date/lib/extr_unixtime2tm.c_timelib_set_timezone_from_abbr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32*, i32, i32, i32, i64 }
%struct.TYPE_6__ = type { i32, i32, i32 }

@TIMELIB_ZONETYPE_ABBR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @timelib_set_timezone_from_abbr(%struct.TYPE_5__* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_6__, align 4
  %5 = alloca { i64, i32 }, align 4
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %5, i32 0, i32 0
  store i64 %1, i64* %7, align 4
  %8 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %5, i32 0, i32 1
  store i32 %2, i32* %8, align 4
  %9 = bitcast %struct.TYPE_6__* %4 to i8*
  %10 = bitcast { i64, i32 }* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %9, i8* align 4 %10, i64 12, i1 false)
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %6, align 8
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 5
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %3
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 5
  %18 = load i64, i64* %17, align 8
  %19 = call i32 @timelib_free(i64 %18)
  br label %20

20:                                               ; preds = %15, %3
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @timelib_strdup(i32 %22)
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 5
  store i64 %23, i64* %25, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 4
  store i32 %27, i32* %29, align 8
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  store i32 1, i32* %31, align 8
  %32 = load i32, i32* @TIMELIB_ZONETYPE_ABBR, align 4
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 3
  store i32 %32, i32* %34, align 4
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 2
  store i32 %36, i32* %38, align 8
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 1
  store i32* null, i32** %40, align 8
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @timelib_free(i64) #2

declare dso_local i64 @timelib_strdup(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
