; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_wal.c_sqlite3WalSavepointUndo.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_wal.c_sqlite3WalSavepointUndo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64, i64* }

@SQLITE_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sqlite3WalSavepointUndo(%struct.TYPE_6__* %0, i64* %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store i64* %1, i64** %4, align 8
  %6 = load i32, i32* @SQLITE_OK, align 4
  store i32 %6, i32* %5, align 4
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = call i32 @assert(i32 %9)
  %11 = load i64*, i64** %4, align 8
  %12 = getelementptr inbounds i64, i64* %11, i64 3
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %13, %16
  br i1 %17, label %27, label %18

18:                                               ; preds = %2
  %19 = load i64*, i64** %4, align 8
  %20 = getelementptr inbounds i64, i64* %19, i64 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp sle i64 %21, %25
  br label %27

27:                                               ; preds = %18, %2
  %28 = phi i1 [ true, %2 ], [ %26, %18 ]
  %29 = zext i1 %28 to i32
  %30 = call i32 @assert(i32 %29)
  %31 = load i64*, i64** %4, align 8
  %32 = getelementptr inbounds i64, i64* %31, i64 3
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %33, %36
  br i1 %37, label %38, label %46

38:                                               ; preds = %27
  %39 = load i64*, i64** %4, align 8
  %40 = getelementptr inbounds i64, i64* %39, i64 0
  store i64 0, i64* %40, align 8
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load i64*, i64** %4, align 8
  %45 = getelementptr inbounds i64, i64* %44, i64 3
  store i64 %43, i64* %45, align 8
  br label %46

46:                                               ; preds = %38, %27
  %47 = load i64*, i64** %4, align 8
  %48 = getelementptr inbounds i64, i64* %47, i64 0
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp slt i64 %49, %53
  br i1 %54, label %55, label %80

55:                                               ; preds = %46
  %56 = load i64*, i64** %4, align 8
  %57 = getelementptr inbounds i64, i64* %56, i64 0
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  store i64 %58, i64* %61, align 8
  %62 = load i64*, i64** %4, align 8
  %63 = getelementptr inbounds i64, i64* %62, i64 1
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 1
  %68 = load i64*, i64** %67, align 8
  %69 = getelementptr inbounds i64, i64* %68, i64 0
  store i64 %64, i64* %69, align 8
  %70 = load i64*, i64** %4, align 8
  %71 = getelementptr inbounds i64, i64* %70, i64 2
  %72 = load i64, i64* %71, align 8
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 2
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 1
  %76 = load i64*, i64** %75, align 8
  %77 = getelementptr inbounds i64, i64* %76, i64 1
  store i64 %72, i64* %77, align 8
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %79 = call i32 @walCleanupHash(%struct.TYPE_6__* %78)
  br label %80

80:                                               ; preds = %55, %46
  %81 = load i32, i32* %5, align 4
  ret i32 %81
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @walCleanupHash(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
