; ModuleID = '/home/carl/AnghaBench/Craft/deps/glfw/src/extr_x11_window.c__glfwPlatformGetWindowSize.c'
source_filename = "/home/carl/AnghaBench/Craft/deps/glfw/src/extr_x11_window.c__glfwPlatformGetWindowSize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_11__ = type { i32, i32 }

@_glfw = common dso_local global %struct.TYPE_12__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_glfwPlatformGetWindowSize(%struct.TYPE_10__* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_11__, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %8 = load i32, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @_glfw, i32 0, i32 0, i32 0), align 4
  %9 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @XGetWindowAttributes(i32 %8, i32 %12, %struct.TYPE_11__* %7)
  %14 = load i32*, i32** %5, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %16, label %20

16:                                               ; preds = %3
  %17 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32*, i32** %5, align 8
  store i32 %18, i32* %19, align 4
  br label %20

20:                                               ; preds = %16, %3
  %21 = load i32*, i32** %6, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %23, label %27

23:                                               ; preds = %20
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load i32*, i32** %6, align 8
  store i32 %25, i32* %26, align 4
  br label %27

27:                                               ; preds = %23, %20
  ret void
}

declare dso_local i32 @XGetWindowAttributes(i32, i32, %struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
