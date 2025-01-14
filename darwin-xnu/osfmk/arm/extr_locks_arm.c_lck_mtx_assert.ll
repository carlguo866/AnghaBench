; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/arm/extr_locks_arm.c_lck_mtx_assert.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/arm/extr_locks_arm.c_lck_mtx_assert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@LCK_MTX_SPIN_TAG = common dso_local global i64 0, align 8
@LCK_MTX_ASSERT_OWNED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"lck_mtx_assert(): mutex (%p) owned\00", align 1
@LCK_MTX_ASSERT_NOTOWNED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"lck_mtx_assert(): mutex (%p) not owned\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"lck_mtx_assert(): invalid arg (%u)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lck_mtx_assert(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32*, i32** %3, align 8
  %9 = call i64 @ordered_load_mtx(i32* %8)
  store i64 %9, i64* %7, align 8
  %10 = load i64, i64* %7, align 8
  %11 = call i64 @LCK_MTX_STATE_TO_THREAD(i64 %10)
  store i64 %11, i64* %6, align 8
  %12 = load i64, i64* %6, align 8
  %13 = load i64, i64* @LCK_MTX_SPIN_TAG, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  br label %47

16:                                               ; preds = %2
  %17 = call i64 (...) @current_thread()
  store i64 %17, i64* %5, align 8
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @LCK_MTX_ASSERT_OWNED, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %30

21:                                               ; preds = %16
  %22 = load i64, i64* %5, align 8
  %23 = load i64, i64* %6, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %21
  %26 = load i32*, i32** %3, align 8
  %27 = ptrtoint i32* %26 to i32
  %28 = call i32 @panic(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %27)
  br label %29

29:                                               ; preds = %25, %21
  br label %47

30:                                               ; preds = %16
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* @LCK_MTX_ASSERT_NOTOWNED, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %43

34:                                               ; preds = %30
  %35 = load i64, i64* %5, align 8
  %36 = load i64, i64* %6, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %34
  %39 = load i32*, i32** %3, align 8
  %40 = ptrtoint i32* %39 to i32
  %41 = call i32 @panic(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %40)
  br label %42

42:                                               ; preds = %38, %34
  br label %46

43:                                               ; preds = %30
  %44 = load i32, i32* %4, align 4
  %45 = call i32 @panic(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %44)
  br label %46

46:                                               ; preds = %43, %42
  br label %47

47:                                               ; preds = %15, %46, %29
  ret void
}

declare dso_local i64 @ordered_load_mtx(i32*) #1

declare dso_local i64 @LCK_MTX_STATE_TO_THREAD(i64) #1

declare dso_local i64 @current_thread(...) #1

declare dso_local i32 @panic(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
