; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/storage/lmgr/extr_lwlock.c_LWLockConflictsWithVar.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/storage/lmgr/extr_lwlock.c_LWLockConflictsWithVar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@LW_VAL_EXCLUSIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i64*, i64, i64*, i32*)* @LWLockConflictsWithVar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @LWLockConflictsWithVar(%struct.TYPE_5__* %0, i64* %1, i64 %2, i64* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %7, align 8
  store i64* %1, i64** %8, align 8
  store i64 %2, i64* %9, align 8
  store i64* %3, i64** %10, align 8
  store i32* %4, i32** %11, align 8
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = call i32 @pg_atomic_read_u32(i32* %15)
  %17 = load i32, i32* @LW_VAL_EXCLUSIVE, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  %20 = zext i1 %19 to i32
  store i32 %20, i32* %12, align 4
  %21 = load i32, i32* %12, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %5
  %24 = load i32*, i32** %11, align 8
  store i32 1, i32* %24, align 4
  store i32 0, i32* %6, align 4
  br label %42

25:                                               ; preds = %5
  %26 = load i32*, i32** %11, align 8
  store i32 0, i32* %26, align 4
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %28 = call i32 @LWLockWaitListLock(%struct.TYPE_5__* %27)
  %29 = load i64*, i64** %8, align 8
  %30 = load i64, i64* %29, align 8
  store i64 %30, i64* %13, align 8
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %32 = call i32 @LWLockWaitListUnlock(%struct.TYPE_5__* %31)
  %33 = load i64, i64* %13, align 8
  %34 = load i64, i64* %9, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %25
  store i32 0, i32* %12, align 4
  %37 = load i64, i64* %13, align 8
  %38 = load i64*, i64** %10, align 8
  store i64 %37, i64* %38, align 8
  br label %40

39:                                               ; preds = %25
  store i32 1, i32* %12, align 4
  br label %40

40:                                               ; preds = %39, %36
  %41 = load i32, i32* %12, align 4
  store i32 %41, i32* %6, align 4
  br label %42

42:                                               ; preds = %40, %23
  %43 = load i32, i32* %6, align 4
  ret i32 %43
}

declare dso_local i32 @pg_atomic_read_u32(i32*) #1

declare dso_local i32 @LWLockWaitListLock(%struct.TYPE_5__*) #1

declare dso_local i32 @LWLockWaitListUnlock(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
