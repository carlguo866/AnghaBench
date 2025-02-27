; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/async/extr_sqlite3async.c_asyncCheckReservedLock.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/async/extr_sqlite3async.c_asyncCheckReservedLock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_6__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }

@ASYNC_MUTEX_LOCK = common dso_local global i32 0, align 4
@SQLITE_LOCK_RESERVED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [20 x i8] c"CHECK-LOCK %d (%s)\0A\00", align 1
@SQLITE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*)* @asyncCheckReservedLock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @asyncCheckReservedLock(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32 0, i32* %5, align 4
  %8 = load i32*, i32** %3, align 8
  %9 = bitcast i32* %8 to %struct.TYPE_8__*
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  store %struct.TYPE_7__* %11, %struct.TYPE_7__** %7, align 8
  %12 = load i32, i32* @ASYNC_MUTEX_LOCK, align 4
  %13 = call i32 @async_mutex_enter(i32 %12)
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 1
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  store %struct.TYPE_6__* %18, %struct.TYPE_6__** %6, align 8
  br label %19

19:                                               ; preds = %30, %2
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %21 = icmp ne %struct.TYPE_6__* %20, null
  br i1 %21, label %22, label %34

22:                                               ; preds = %19
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @SQLITE_LOCK_RESERVED, align 8
  %27 = icmp sge i64 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %22
  store i32 1, i32* %5, align 4
  br label %34

29:                                               ; preds = %22
  br label %30

30:                                               ; preds = %29
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 1
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %32, align 8
  store %struct.TYPE_6__* %33, %struct.TYPE_6__** %6, align 8
  br label %19

34:                                               ; preds = %28, %19
  %35 = load i32, i32* @ASYNC_MUTEX_LOCK, align 4
  %36 = call i32 @async_mutex_leave(i32 %35)
  %37 = load i32, i32* %5, align 4
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = sext i32 %40 to i64
  %42 = inttoptr i64 %41 to i8*
  %43 = call i32 @ASYNC_TRACE(i8* %42)
  %44 = load i32, i32* %5, align 4
  %45 = load i32*, i32** %4, align 8
  store i32 %44, i32* %45, align 4
  %46 = load i32, i32* @SQLITE_OK, align 4
  ret i32 %46
}

declare dso_local i32 @async_mutex_enter(i32) #1

declare dso_local i32 @async_mutex_leave(i32) #1

declare dso_local i32 @ASYNC_TRACE(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
