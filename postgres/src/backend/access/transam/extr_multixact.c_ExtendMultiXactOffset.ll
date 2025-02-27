; ModuleID = '/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_multixact.c_ExtendMultiXactOffset.c'
source_filename = "/home/carl/AnghaBench/postgres/src/backend/access/transam/extr_multixact.c_ExtendMultiXactOffset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FirstMultiXactId = common dso_local global i64 0, align 8
@MultiXactOffsetControlLock = common dso_local global i32 0, align 4
@LW_EXCLUSIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @ExtendMultiXactOffset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ExtendMultiXactOffset(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %4 = load i64, i64* %2, align 8
  %5 = call i64 @MultiXactIdToOffsetEntry(i64 %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %12

7:                                                ; preds = %1
  %8 = load i64, i64* %2, align 8
  %9 = load i64, i64* @FirstMultiXactId, align 8
  %10 = icmp ne i64 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %7
  br label %22

12:                                               ; preds = %7, %1
  %13 = load i64, i64* %2, align 8
  %14 = call i32 @MultiXactIdToOffsetPage(i64 %13)
  store i32 %14, i32* %3, align 4
  %15 = load i32, i32* @MultiXactOffsetControlLock, align 4
  %16 = load i32, i32* @LW_EXCLUSIVE, align 4
  %17 = call i32 @LWLockAcquire(i32 %15, i32 %16)
  %18 = load i32, i32* %3, align 4
  %19 = call i32 @ZeroMultiXactOffsetPage(i32 %18, i32 1)
  %20 = load i32, i32* @MultiXactOffsetControlLock, align 4
  %21 = call i32 @LWLockRelease(i32 %20)
  br label %22

22:                                               ; preds = %12, %11
  ret void
}

declare dso_local i64 @MultiXactIdToOffsetEntry(i64) #1

declare dso_local i32 @MultiXactIdToOffsetPage(i64) #1

declare dso_local i32 @LWLockAcquire(i32, i32) #1

declare dso_local i32 @ZeroMultiXactOffsetPage(i32, i32) #1

declare dso_local i32 @LWLockRelease(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
