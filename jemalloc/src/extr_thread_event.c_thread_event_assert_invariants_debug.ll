; ModuleID = '/home/carl/AnghaBench/jemalloc/src/extr_thread_event.c_thread_event_assert_invariants_debug.c'
source_filename = "/home/carl/AnghaBench/jemalloc/src/extr_thread_event.c_thread_event_assert_invariants_debug.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@THREAD_ALLOCATED_NEXT_EVENT_FAST_MAX = common dso_local global i64 0, align 8
@thread_event_active = common dso_local global i32 0, align 4
@THREAD_EVENT_MAX_INTERVAL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @thread_event_assert_invariants_debug(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i32* %0, i32** %2, align 8
  %9 = load i32*, i32** %2, align 8
  %10 = call i64 @thread_allocated_get(i32* %9)
  store i64 %10, i64* %3, align 8
  %11 = load i32*, i32** %2, align 8
  %12 = call i64 @thread_allocated_last_event_get(i32* %11)
  store i64 %12, i64* %4, align 8
  %13 = load i32*, i32** %2, align 8
  %14 = call i64 @thread_allocated_next_event_get(i32* %13)
  store i64 %14, i64* %5, align 8
  %15 = load i32*, i32** %2, align 8
  %16 = call i64 @thread_allocated_next_event_fast_get(i32* %15)
  store i64 %16, i64* %6, align 8
  %17 = load i64, i64* %4, align 8
  %18 = load i64, i64* %5, align 8
  %19 = icmp ne i64 %17, %18
  %20 = zext i1 %19 to i32
  %21 = call i32 @assert(i32 %20)
  %22 = load i64, i64* %5, align 8
  %23 = load i64, i64* @THREAD_ALLOCATED_NEXT_EVENT_FAST_MAX, align 8
  %24 = icmp sle i64 %22, %23
  br i1 %24, label %25, label %31

25:                                               ; preds = %1
  %26 = load i64, i64* %6, align 8
  %27 = load i64, i64* %5, align 8
  %28 = icmp eq i64 %26, %27
  %29 = zext i1 %28 to i32
  %30 = call i32 @assert(i32 %29)
  br label %36

31:                                               ; preds = %1
  %32 = load i64, i64* %6, align 8
  %33 = icmp eq i64 %32, 0
  %34 = zext i1 %33 to i32
  %35 = call i32 @assert(i32 %34)
  br label %36

36:                                               ; preds = %31, %25
  %37 = load i64, i64* %5, align 8
  %38 = load i64, i64* %4, align 8
  %39 = sub nsw i64 %37, %38
  store i64 %39, i64* %7, align 8
  %40 = load i64, i64* %3, align 8
  %41 = load i64, i64* %4, align 8
  %42 = sub nsw i64 %40, %41
  %43 = load i64, i64* %7, align 8
  %44 = icmp slt i64 %42, %43
  %45 = zext i1 %44 to i32
  %46 = call i32 @assert(i32 %45)
  %47 = load i32*, i32** %2, align 8
  %48 = call i64 @thread_allocated_next_event_compute(i32* %47)
  store i64 %48, i64* %8, align 8
  %49 = load i32, i32* @thread_event_active, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %54, label %51

51:                                               ; preds = %36
  %52 = load i64, i64* %4, align 8
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %68, label %54

54:                                               ; preds = %51, %36
  %55 = load i64, i64* %7, align 8
  %56 = load i64, i64* %8, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %68, label %58

58:                                               ; preds = %54
  %59 = load i64, i64* %7, align 8
  %60 = load i64, i64* %8, align 8
  %61 = icmp slt i64 %59, %60
  br i1 %61, label %62, label %66

62:                                               ; preds = %58
  %63 = load i64, i64* %7, align 8
  %64 = load i64, i64* @THREAD_EVENT_MAX_INTERVAL, align 8
  %65 = icmp eq i64 %63, %64
  br label %66

66:                                               ; preds = %62, %58
  %67 = phi i1 [ false, %58 ], [ %65, %62 ]
  br label %68

68:                                               ; preds = %66, %54, %51
  %69 = phi i1 [ true, %54 ], [ true, %51 ], [ %67, %66 ]
  %70 = zext i1 %69 to i32
  %71 = call i32 @assert(i32 %70)
  ret void
}

declare dso_local i64 @thread_allocated_get(i32*) #1

declare dso_local i64 @thread_allocated_last_event_get(i32*) #1

declare dso_local i64 @thread_allocated_next_event_get(i32*) #1

declare dso_local i64 @thread_allocated_next_event_fast_get(i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @thread_allocated_next_event_compute(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
