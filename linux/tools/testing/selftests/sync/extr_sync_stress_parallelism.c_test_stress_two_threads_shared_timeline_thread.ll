; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/sync/extr_sync_stress_parallelism.c_test_stress_two_threads_shared_timeline_thread.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/sync/extr_sync_stress_parallelism.c_test_stress_two_threads_shared_timeline_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 }

@test_data_two_threads = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@.str = private unnamed_addr constant [6 x i8] c"fence\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"Failure allocating fence\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"Problem occurred on prior thread\0A\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"Counter got damaged!\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"Advancing timeline failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @test_stress_two_threads_shared_timeline_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_stress_two_threads_shared_timeline_thread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %10 = load i8*, i8** %2, align 8
  %11 = ptrtoint i8* %10 to i64
  %12 = trunc i64 %11 to i32
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @test_data_two_threads, i32 0, i32 0), align 4
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @test_data_two_threads, i32 0, i32 1), align 4
  store i32 %14, i32* %5, align 4
  store i32 0, i32* %9, align 4
  br label %15

15:                                               ; preds = %54, %1
  %16 = load i32, i32* %9, align 4
  %17 = load i32, i32* %5, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %57

19:                                               ; preds = %15
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* %9, align 4
  %22 = mul nsw i32 %21, 2
  %23 = load i32, i32* %3, align 4
  %24 = add nsw i32 %22, %23
  %25 = call i32 @sw_sync_fence_create(i32 %20, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %24)
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @sw_sync_fence_is_valid(i32 %26)
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @ASSERT(i32 %28, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @sync_wait(i32 %30, i32 -1)
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %8, align 4
  %33 = icmp sgt i32 %32, 0
  %34 = zext i1 %33 to i32
  %35 = call i32 @ASSERT(i32 %34, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  %36 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @test_data_two_threads, i32 0, i32 2), align 4
  %37 = load i32, i32* %9, align 4
  %38 = mul nsw i32 %37, 2
  %39 = load i32, i32* %3, align 4
  %40 = add nsw i32 %38, %39
  %41 = icmp eq i32 %36, %40
  %42 = zext i1 %41 to i32
  %43 = call i32 @ASSERT(i32 %42, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  %44 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @test_data_two_threads, i32 0, i32 2), align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @test_data_two_threads, i32 0, i32 2), align 4
  %46 = load i32, i32* %4, align 4
  %47 = call i32 @sw_sync_timeline_inc(i32 %46, i32 1)
  store i32 %47, i32* %8, align 4
  %48 = load i32, i32* %8, align 4
  %49 = icmp eq i32 %48, 0
  %50 = zext i1 %49 to i32
  %51 = call i32 @ASSERT(i32 %50, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  %52 = load i32, i32* %6, align 4
  %53 = call i32 @sw_sync_fence_destroy(i32 %52)
  br label %54

54:                                               ; preds = %19
  %55 = load i32, i32* %9, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %9, align 4
  br label %15

57:                                               ; preds = %15
  ret i32 0
}

declare dso_local i32 @sw_sync_fence_create(i32, i8*, i32) #1

declare dso_local i32 @sw_sync_fence_is_valid(i32) #1

declare dso_local i32 @ASSERT(i32, i8*) #1

declare dso_local i32 @sync_wait(i32, i32) #1

declare dso_local i32 @sw_sync_timeline_inc(i32, i32) #1

declare dso_local i32 @sw_sync_fence_destroy(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
