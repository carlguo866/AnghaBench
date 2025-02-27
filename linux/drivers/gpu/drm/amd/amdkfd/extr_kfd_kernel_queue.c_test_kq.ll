; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_kernel_queue.c_test_kq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/amdkfd/extr_kfd_kernel_queue.c_test_kq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kfd_dev = type { i32 }
%struct.kernel_queue = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 (%struct.kernel_queue.0*, i32, i32**)*, i32 (%struct.kernel_queue.1*)* }
%struct.kernel_queue.0 = type opaque
%struct.kernel_queue.1 = type opaque

@.str = private unnamed_addr constant [28 x i8] c"Starting kernel queue test\0A\00", align 1
@KFD_QUEUE_TYPE_HIQ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"  Failed to initialize HIQ\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"Kernel queue test failed\0A\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"  Failed to acquire packet buffer\0A\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"Ending kernel queue test\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kfd_dev*)* @test_kq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_kq(%struct.kfd_dev* %0) #0 {
  %2 = alloca %struct.kfd_dev*, align 8
  %3 = alloca %struct.kernel_queue*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.kfd_dev* %0, %struct.kfd_dev** %2, align 8
  %7 = call i32 @pr_err(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %8 = load %struct.kfd_dev*, %struct.kfd_dev** %2, align 8
  %9 = load i32, i32* @KFD_QUEUE_TYPE_HIQ, align 4
  %10 = call %struct.kernel_queue* @kernel_queue_init(%struct.kfd_dev* %8, i32 %9)
  store %struct.kernel_queue* %10, %struct.kernel_queue** %3, align 8
  %11 = load %struct.kernel_queue*, %struct.kernel_queue** %3, align 8
  %12 = icmp ne %struct.kernel_queue* %11, null
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  %15 = call i64 @unlikely(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %1
  %18 = call i32 @pr_err(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %19 = call i32 @pr_err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  br label %60

20:                                               ; preds = %1
  %21 = load %struct.kernel_queue*, %struct.kernel_queue** %3, align 8
  %22 = getelementptr inbounds %struct.kernel_queue, %struct.kernel_queue* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32 (%struct.kernel_queue.0*, i32, i32**)*, i32 (%struct.kernel_queue.0*, i32, i32**)** %23, align 8
  %25 = load %struct.kernel_queue*, %struct.kernel_queue** %3, align 8
  %26 = bitcast %struct.kernel_queue* %25 to %struct.kernel_queue.0*
  %27 = call i32 %24(%struct.kernel_queue.0* %26, i32 5, i32** %4)
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp ne i32 %28, 0
  %30 = zext i1 %29 to i32
  %31 = call i64 @unlikely(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %20
  %34 = call i32 @pr_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  %35 = call i32 @pr_err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  br label %60

36:                                               ; preds = %20
  store i32 0, i32* %5, align 4
  br label %37

37:                                               ; preds = %48, %36
  %38 = load i32, i32* %5, align 4
  %39 = icmp slt i32 %38, 5
  br i1 %39, label %40, label %51

40:                                               ; preds = %37
  %41 = load %struct.kernel_queue*, %struct.kernel_queue** %3, align 8
  %42 = getelementptr inbounds %struct.kernel_queue, %struct.kernel_queue* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32*, i32** %4, align 8
  %45 = load i32, i32* %5, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  store i32 %43, i32* %47, align 4
  br label %48

48:                                               ; preds = %40
  %49 = load i32, i32* %5, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %5, align 4
  br label %37

51:                                               ; preds = %37
  %52 = load %struct.kernel_queue*, %struct.kernel_queue** %3, align 8
  %53 = getelementptr inbounds %struct.kernel_queue, %struct.kernel_queue* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 1
  %55 = load i32 (%struct.kernel_queue.1*)*, i32 (%struct.kernel_queue.1*)** %54, align 8
  %56 = load %struct.kernel_queue*, %struct.kernel_queue** %3, align 8
  %57 = bitcast %struct.kernel_queue* %56 to %struct.kernel_queue.1*
  %58 = call i32 %55(%struct.kernel_queue.1* %57)
  %59 = call i32 @pr_err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  br label %60

60:                                               ; preds = %51, %33, %17
  ret void
}

declare dso_local i32 @pr_err(i8*) #1

declare dso_local %struct.kernel_queue* @kernel_queue_init(%struct.kfd_dev*, i32) #1

declare dso_local i64 @unlikely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
