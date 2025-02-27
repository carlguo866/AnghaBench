; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/common/extr_vulkan_common.c_vulkan_acquire_wait_fences.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/common/extr_vulkan_common.c_vulkan_acquire_wait_fences.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i64*, i32*, i32 }
%struct.TYPE_8__ = type { i32 }

@VK_STRUCTURE_TYPE_FENCE_CREATE_INFO = common dso_local global i32 0, align 4
@VK_NULL_HANDLE = common dso_local global i64 0, align 8
@UINT64_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*)* @vulkan_acquire_wait_fences to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vulkan_acquire_wait_fences(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca %struct.TYPE_8__, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %3, i32 0, i32 0
  %7 = load i32, i32* @VK_STRUCTURE_TYPE_FENCE_CREATE_INFO, align 4
  store i32 %7, i32* %6, align 4
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  store i32 %11, i32* %4, align 4
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 1
  %15 = load i64*, i64** %14, align 8
  %16 = load i32, i32* %4, align 4
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds i64, i64* %15, i64 %17
  store i64* %18, i64** %5, align 8
  %19 = load i64*, i64** %5, align 8
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @VK_NULL_HANDLE, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %48

23:                                               ; preds = %1
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 2
  %27 = load i32*, i32** %26, align 8
  %28 = load i32, i32* %4, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %23
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 8
  %38 = load i64*, i64** %5, align 8
  %39 = load i32, i32* @UINT64_MAX, align 4
  %40 = call i32 @vkWaitForFences(i32 %37, i32 1, i64* %38, i32 1, i32 %39)
  br label %41

41:                                               ; preds = %33, %23
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 3
  %45 = load i32, i32* %44, align 8
  %46 = load i64*, i64** %5, align 8
  %47 = call i32 @vkResetFences(i32 %45, i32 1, i64* %46)
  br label %55

48:                                               ; preds = %1
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 8
  %53 = load i64*, i64** %5, align 8
  %54 = call i32 @vkCreateFence(i32 %52, %struct.TYPE_8__* %3, i32* null, i64* %53)
  br label %55

55:                                               ; preds = %48, %41
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 2
  %59 = load i32*, i32** %58, align 8
  %60 = load i32, i32* %4, align 4
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  store i32 0, i32* %62, align 4
  ret void
}

declare dso_local i32 @vkWaitForFences(i32, i32, i64*, i32, i32) #1

declare dso_local i32 @vkResetFences(i32, i32, i64*) #1

declare dso_local i32 @vkCreateFence(i32, %struct.TYPE_8__*, i32*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
