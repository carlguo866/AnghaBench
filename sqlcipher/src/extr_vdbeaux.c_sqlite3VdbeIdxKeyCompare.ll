; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_vdbeaux.c_sqlite3VdbeIdxKeyCompare.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_vdbeaux.c_sqlite3VdbeIdxKeyCompare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i64, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32* }
%struct.TYPE_10__ = type { i32, i32 }

@CURTYPE_BTREE = common dso_local global i64 0, align 8
@SQLITE_CORRUPT_BKPT = common dso_local global i32 0, align 4
@SQLITE_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sqlite3VdbeIdxKeyCompare(i32* %0, %struct.TYPE_9__* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_10__, align 4
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 0, i32* %10, align 4
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @CURTYPE_BTREE, align 8
  %18 = icmp eq i64 %16, %17
  %19 = zext i1 %18 to i32
  %20 = call i32 @assert(i32 %19)
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  store i32* %24, i32** %12, align 8
  %25 = load i32*, i32** %12, align 8
  %26 = call i32 @sqlite3BtreeCursorIsValid(i32* %25)
  %27 = call i32 @assert(i32 %26)
  %28 = load i32*, i32** %12, align 8
  %29 = call i32 @sqlite3BtreePayloadSize(i32* %28)
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* %10, align 4
  %31 = icmp sle i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %4
  %33 = load i32, i32* %10, align 4
  %34 = icmp sgt i32 %33, 2147483647
  br i1 %34, label %35, label %38

35:                                               ; preds = %32, %4
  %36 = load i32*, i32** %9, align 8
  store i32 0, i32* %36, align 4
  %37 = load i32, i32* @SQLITE_CORRUPT_BKPT, align 4
  store i32 %37, i32* %5, align 4
  br label %58

38:                                               ; preds = %32
  %39 = load i32*, i32** %6, align 8
  %40 = call i32 @sqlite3VdbeMemInit(%struct.TYPE_10__* %13, i32* %39, i32 0)
  %41 = load i32*, i32** %12, align 8
  %42 = load i32, i32* %10, align 4
  %43 = call i32 @sqlite3VdbeMemFromBtree(i32* %41, i32 0, i32 %42, %struct.TYPE_10__* %13)
  store i32 %43, i32* %11, align 4
  %44 = load i32, i32* %11, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %38
  %47 = load i32, i32* %11, align 4
  store i32 %47, i32* %5, align 4
  br label %58

48:                                               ; preds = %38
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load i32*, i32** %8, align 8
  %54 = call i32 @sqlite3VdbeRecordCompareWithSkip(i32 %50, i32 %52, i32* %53, i32 0)
  %55 = load i32*, i32** %9, align 8
  store i32 %54, i32* %55, align 4
  %56 = call i32 @sqlite3VdbeMemRelease(%struct.TYPE_10__* %13)
  %57 = load i32, i32* @SQLITE_OK, align 4
  store i32 %57, i32* %5, align 4
  br label %58

58:                                               ; preds = %48, %46, %35
  %59 = load i32, i32* %5, align 4
  ret i32 %59
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sqlite3BtreeCursorIsValid(i32*) #1

declare dso_local i32 @sqlite3BtreePayloadSize(i32*) #1

declare dso_local i32 @sqlite3VdbeMemInit(%struct.TYPE_10__*, i32*, i32) #1

declare dso_local i32 @sqlite3VdbeMemFromBtree(i32*, i32, i32, %struct.TYPE_10__*) #1

declare dso_local i32 @sqlite3VdbeRecordCompareWithSkip(i32, i32, i32*, i32) #1

declare dso_local i32 @sqlite3VdbeMemRelease(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
