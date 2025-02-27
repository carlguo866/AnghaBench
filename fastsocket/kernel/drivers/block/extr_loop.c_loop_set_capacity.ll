; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_loop.c_loop_set_capacity.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_loop.c_loop_set_capacity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.loop_device = type { i64, i32 }
%struct.block_device = type { i32 }

@ENXIO = common dso_local global i32 0, align 4
@Lo_bound = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.loop_device*, %struct.block_device*)* @loop_set_capacity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @loop_set_capacity(%struct.loop_device* %0, %struct.block_device* %1) #0 {
  %3 = alloca %struct.loop_device*, align 8
  %4 = alloca %struct.block_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.loop_device* %0, %struct.loop_device** %3, align 8
  store %struct.block_device* %1, %struct.block_device** %4, align 8
  %8 = load i32, i32* @ENXIO, align 4
  %9 = sub nsw i32 0, %8
  store i32 %9, i32* %5, align 4
  %10 = load %struct.loop_device*, %struct.loop_device** %3, align 8
  %11 = getelementptr inbounds %struct.loop_device, %struct.loop_device* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @Lo_bound, align 8
  %14 = icmp ne i64 %12, %13
  %15 = zext i1 %14 to i32
  %16 = call i64 @unlikely(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  br label %43

19:                                               ; preds = %2
  %20 = load %struct.loop_device*, %struct.loop_device** %3, align 8
  %21 = call i32 @figure_loop_size(%struct.loop_device* %20)
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = call i64 @unlikely(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  br label %43

26:                                               ; preds = %19
  %27 = load %struct.loop_device*, %struct.loop_device** %3, align 8
  %28 = getelementptr inbounds %struct.loop_device, %struct.loop_device* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @get_capacity(i32 %29)
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %6, align 4
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %7, align 4
  %33 = shl i32 %32, 9
  store i32 %33, i32* %7, align 4
  %34 = load %struct.block_device*, %struct.block_device** %4, align 8
  %35 = getelementptr inbounds %struct.block_device, %struct.block_device* %34, i32 0, i32 0
  %36 = call i32 @mutex_lock(i32* %35)
  %37 = load %struct.block_device*, %struct.block_device** %4, align 8
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @bd_set_size(%struct.block_device* %37, i32 %38)
  %40 = load %struct.block_device*, %struct.block_device** %4, align 8
  %41 = getelementptr inbounds %struct.block_device, %struct.block_device* %40, i32 0, i32 0
  %42 = call i32 @mutex_unlock(i32* %41)
  br label %43

43:                                               ; preds = %26, %25, %18
  %44 = load i32, i32* %5, align 4
  ret i32 %44
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @figure_loop_size(%struct.loop_device*) #1

declare dso_local i32 @get_capacity(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @bd_set_size(%struct.block_device*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
