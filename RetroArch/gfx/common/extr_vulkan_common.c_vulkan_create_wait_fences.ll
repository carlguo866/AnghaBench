; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/common/extr_vulkan_common.c_vulkan_create_wait_fences.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/common/extr_vulkan_common.c_vulkan_create_wait_fences.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32*, i32 }
%struct.TYPE_8__ = type { i32 }

@VK_STRUCTURE_TYPE_FENCE_CREATE_INFO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*)* @vulkan_create_wait_fences to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vulkan_create_wait_fences(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca %struct.TYPE_8__, align 4
  %4 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %3, i32 0, i32 0
  %6 = load i32, i32* @VK_STRUCTURE_TYPE_FENCE_CREATE_INFO, align 4
  store i32 %6, i32* %5, align 4
  store i32 0, i32* %4, align 4
  br label %7

7:                                                ; preds = %38, %1
  %8 = load i32, i32* %4, align 4
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp ult i32 %8, %12
  br i1 %13, label %14, label %41

14:                                               ; preds = %7
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  %19 = load i32, i32* %4, align 4
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %37, label %24

24:                                               ; preds = %14
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = load i32, i32* %4, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = call i32 @vkCreateFence(i32 %28, %struct.TYPE_8__* %3, i32* null, i32* %35)
  br label %37

37:                                               ; preds = %24, %14
  br label %38

38:                                               ; preds = %37
  %39 = load i32, i32* %4, align 4
  %40 = add i32 %39, 1
  store i32 %40, i32* %4, align 4
  br label %7

41:                                               ; preds = %7
  ret void
}

declare dso_local i32 @vkCreateFence(i32, %struct.TYPE_8__*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
