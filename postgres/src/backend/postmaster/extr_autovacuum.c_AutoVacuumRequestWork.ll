; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/postmaster/extr_autovacuum.c_AutoVacuumRequestWork.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/postmaster/extr_autovacuum.c_AutoVacuumRequestWork.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32, i32, i32, i32, i32 }

@AutovacuumLock = common dso_local global i32 0, align 4
@LW_EXCLUSIVE = common dso_local global i32 0, align 4
@NUM_WORKITEMS = common dso_local global i32 0, align 4
@AutoVacuumShmem = common dso_local global %struct.TYPE_4__* null, align 8
@MyDatabaseId = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @AutoVacuumRequestWork(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_3__*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %8, align 4
  %10 = load i32, i32* @AutovacuumLock, align 4
  %11 = load i32, i32* @LW_EXCLUSIVE, align 4
  %12 = call i32 @LWLockAcquire(i32 %10, i32 %11)
  store i32 0, i32* %7, align 4
  br label %13

13:                                               ; preds = %46, %3
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* @NUM_WORKITEMS, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %49

17:                                               ; preds = %13
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** @AutoVacuumShmem, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = load i32, i32* %7, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i64 %22
  store %struct.TYPE_3__* %23, %struct.TYPE_3__** %9, align 8
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %17
  br label %46

29:                                               ; preds = %17
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  store i32 1, i32* %31, align 4
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 1
  store i32 0, i32* %33, align 4
  %34 = load i32, i32* %4, align 4
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 5
  store i32 %34, i32* %36, align 4
  %37 = load i32, i32* @MyDatabaseId, align 4
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 4
  store i32 %37, i32* %39, align 4
  %40 = load i32, i32* %5, align 4
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 3
  store i32 %40, i32* %42, align 4
  %43 = load i32, i32* %6, align 4
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 2
  store i32 %43, i32* %45, align 4
  store i32 1, i32* %8, align 4
  br label %49

46:                                               ; preds = %28
  %47 = load i32, i32* %7, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %7, align 4
  br label %13

49:                                               ; preds = %29, %13
  %50 = load i32, i32* @AutovacuumLock, align 4
  %51 = call i32 @LWLockRelease(i32 %50)
  %52 = load i32, i32* %8, align 4
  ret i32 %52
}

declare dso_local i32 @LWLockAcquire(i32, i32) #1

declare dso_local i32 @LWLockRelease(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
