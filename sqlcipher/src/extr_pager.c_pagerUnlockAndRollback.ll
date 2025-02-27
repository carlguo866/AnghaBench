; ModuleID = '/home/carl/AnghaBench/sqlcipher/src/extr_pager.c_pagerUnlockAndRollback.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/src/extr_pager.c_pagerUnlockAndRollback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i32 }

@PAGER_ERROR = common dso_local global i64 0, align 8
@PAGER_OPEN = common dso_local global i64 0, align 8
@PAGER_WRITER_LOCKED = common dso_local global i64 0, align 8
@PAGER_READER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*)* @pagerUnlockAndRollback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pagerUnlockAndRollback(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  %3 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %4 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @PAGER_ERROR, align 8
  %7 = icmp ne i64 %5, %6
  br i1 %7, label %8, label %45

8:                                                ; preds = %1
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @PAGER_OPEN, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %45

14:                                               ; preds = %8
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %16 = call i32 @assert_pager_state(%struct.TYPE_7__* %15)
  %17 = call i32 @assert(i32 %16)
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @PAGER_WRITER_LOCKED, align 8
  %22 = icmp sge i64 %20, %21
  br i1 %22, label %23, label %28

23:                                               ; preds = %14
  %24 = call i32 (...) @sqlite3BeginBenignMalloc()
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %26 = call i32 @sqlite3PagerRollback(%struct.TYPE_7__* %25)
  %27 = call i32 (...) @sqlite3EndBenignMalloc()
  br label %44

28:                                               ; preds = %14
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %43, label %33

33:                                               ; preds = %28
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @PAGER_READER, align 8
  %38 = icmp eq i64 %36, %37
  %39 = zext i1 %38 to i32
  %40 = call i32 @assert(i32 %39)
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %42 = call i32 @pager_end_transaction(%struct.TYPE_7__* %41, i32 0, i32 0)
  br label %43

43:                                               ; preds = %33, %28
  br label %44

44:                                               ; preds = %43, %23
  br label %45

45:                                               ; preds = %44, %8, %1
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %47 = call i32 @pager_unlock(%struct.TYPE_7__* %46)
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @assert_pager_state(%struct.TYPE_7__*) #1

declare dso_local i32 @sqlite3BeginBenignMalloc(...) #1

declare dso_local i32 @sqlite3PagerRollback(%struct.TYPE_7__*) #1

declare dso_local i32 @sqlite3EndBenignMalloc(...) #1

declare dso_local i32 @pager_end_transaction(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @pager_unlock(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
