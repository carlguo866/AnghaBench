; ModuleID = '/home/carl/AnghaBench/sqlcipher/ext/lsm1/lsm-test/extr_lsmtest_tdb3.c_testEnvLock.c'
source_filename = "/home/carl/AnghaBench/sqlcipher/ext/lsm1/lsm-test/extr_lsmtest_tdb3.c_testEnvLock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_6__ = type { i32 (i32, i32, i32)* }

@LSM_LOCK_EXCL = common dso_local global i32 0, align 4
@LSM_BUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32)* @testEnvLock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @testEnvLock(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca %struct.TYPE_6__*, align 8
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load i32*, i32** %5, align 8
  %11 = bitcast i32* %10 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %11, %struct.TYPE_7__** %8, align 8
  %12 = call %struct.TYPE_6__* (...) @tdb_lsm_env()
  store %struct.TYPE_6__* %12, %struct.TYPE_6__** %9, align 8
  %13 = load i32, i32* %6, align 4
  %14 = icmp eq i32 %13, 2
  br i1 %14, label %15, label %28

15:                                               ; preds = %3
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* @LSM_LOCK_EXCL, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %28

19:                                               ; preds = %15
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 1
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %19
  %27 = load i32, i32* @LSM_BUSY, align 4
  store i32 %27, i32* %4, align 4
  br label %38

28:                                               ; preds = %19, %15, %3
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %30, align 8
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* %7, align 4
  %37 = call i32 %31(i32 %34, i32 %35, i32 %36)
  store i32 %37, i32* %4, align 4
  br label %38

38:                                               ; preds = %28, %26
  %39 = load i32, i32* %4, align 4
  ret i32 %39
}

declare dso_local %struct.TYPE_6__* @tdb_lsm_env(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
