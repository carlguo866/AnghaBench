; ModuleID = '/home/carl/AnghaBench/postgres/src/interfaces/libpq/extr_fe-lobj.c_lo_read.c'
source_filename = "/home/carl/AnghaBench/postgres/src/interfaces/libpq/extr_fe-lobj.c_lo_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_10__*, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_11__ = type { i32, i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }

@INT_MAX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [43 x i8] c"argument of lo_read exceeds integer range\0A\00", align 1
@PGRES_COMMAND_OK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lo_read(%struct.TYPE_12__* %0, i32 %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca [2 x %struct.TYPE_11__], align 16
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %14 = icmp eq %struct.TYPE_12__* %13, null
  br i1 %14, label %20, label %15

15:                                               ; preds = %4
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %17, align 8
  %19 = icmp eq %struct.TYPE_10__* %18, null
  br i1 %19, label %20, label %26

20:                                               ; preds = %15, %4
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %22 = call i64 @lo_initialize(%struct.TYPE_12__* %21)
  %23 = icmp slt i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %20
  store i32 -1, i32* %5, align 4
  br label %73

25:                                               ; preds = %20
  br label %26

26:                                               ; preds = %25, %15
  %27 = load i64, i64* %9, align 8
  %28 = load i64, i64* @INT_MAX, align 8
  %29 = icmp ugt i64 %27, %28
  br i1 %29, label %30, label %35

30:                                               ; preds = %26
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 1
  %33 = call i32 @libpq_gettext(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %34 = call i32 @printfPQExpBuffer(i32* %32, i32 %33)
  store i32 -1, i32* %5, align 4
  br label %73

35:                                               ; preds = %26
  %36 = getelementptr inbounds [2 x %struct.TYPE_11__], [2 x %struct.TYPE_11__]* %10, i64 0, i64 0
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 0
  store i32 1, i32* %37, align 16
  %38 = getelementptr inbounds [2 x %struct.TYPE_11__], [2 x %struct.TYPE_11__]* %10, i64 0, i64 0
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 1
  store i32 4, i32* %39, align 4
  %40 = load i32, i32* %7, align 4
  %41 = getelementptr inbounds [2 x %struct.TYPE_11__], [2 x %struct.TYPE_11__]* %10, i64 0, i64 0
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 0
  store i32 %40, i32* %43, align 8
  %44 = getelementptr inbounds [2 x %struct.TYPE_11__], [2 x %struct.TYPE_11__]* %10, i64 0, i64 1
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 0
  store i32 1, i32* %45, align 4
  %46 = getelementptr inbounds [2 x %struct.TYPE_11__], [2 x %struct.TYPE_11__]* %10, i64 0, i64 1
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 1
  store i32 4, i32* %47, align 4
  %48 = load i64, i64* %9, align 8
  %49 = trunc i64 %48 to i32
  %50 = getelementptr inbounds [2 x %struct.TYPE_11__], [2 x %struct.TYPE_11__]* %10, i64 0, i64 1
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 0
  store i32 %49, i32* %52, align 4
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i8*, i8** %8, align 8
  %60 = getelementptr inbounds [2 x %struct.TYPE_11__], [2 x %struct.TYPE_11__]* %10, i64 0, i64 0
  %61 = call i32* @PQfn(%struct.TYPE_12__* %53, i32 %58, i8* %59, i32* %12, i32 0, %struct.TYPE_11__* %60, i32 2)
  store i32* %61, i32** %11, align 8
  %62 = load i32*, i32** %11, align 8
  %63 = call i64 @PQresultStatus(i32* %62)
  %64 = load i64, i64* @PGRES_COMMAND_OK, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %70

66:                                               ; preds = %35
  %67 = load i32*, i32** %11, align 8
  %68 = call i32 @PQclear(i32* %67)
  %69 = load i32, i32* %12, align 4
  store i32 %69, i32* %5, align 4
  br label %73

70:                                               ; preds = %35
  %71 = load i32*, i32** %11, align 8
  %72 = call i32 @PQclear(i32* %71)
  store i32 -1, i32* %5, align 4
  br label %73

73:                                               ; preds = %70, %66, %30, %24
  %74 = load i32, i32* %5, align 4
  ret i32 %74
}

declare dso_local i64 @lo_initialize(%struct.TYPE_12__*) #1

declare dso_local i32 @printfPQExpBuffer(i32*, i32) #1

declare dso_local i32 @libpq_gettext(i8*) #1

declare dso_local i32* @PQfn(%struct.TYPE_12__*, i32, i8*, i32*, i32, %struct.TYPE_11__*, i32) #1

declare dso_local i64 @PQresultStatus(i32*) #1

declare dso_local i32 @PQclear(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
