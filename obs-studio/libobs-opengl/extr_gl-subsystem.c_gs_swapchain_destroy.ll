; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs-opengl/extr_gl-subsystem.c_gs_swapchain_destroy.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs-opengl/extr_gl-subsystem.c_gs_swapchain_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gs_swapchain_destroy(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  %3 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %4 = icmp ne %struct.TYPE_6__* %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  br label %28

6:                                                ; preds = %1
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 1
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %13 = icmp eq %struct.TYPE_6__* %11, %12
  br i1 %13, label %14, label %19

14:                                               ; preds = %6
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 1
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %18 = call i32 @device_load_swapchain(%struct.TYPE_7__* %17, i32* null)
  br label %19

19:                                               ; preds = %14, %6
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %21 = call i32 @gl_platform_cleanup_swapchain(%struct.TYPE_6__* %20)
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @gl_windowinfo_destroy(i32 %24)
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %27 = call i32 @bfree(%struct.TYPE_6__* %26)
  br label %28

28:                                               ; preds = %19, %5
  ret void
}

declare dso_local i32 @device_load_swapchain(%struct.TYPE_7__*, i32*) #1

declare dso_local i32 @gl_platform_cleanup_swapchain(%struct.TYPE_6__*) #1

declare dso_local i32 @gl_windowinfo_destroy(i32) #1

declare dso_local i32 @bfree(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
