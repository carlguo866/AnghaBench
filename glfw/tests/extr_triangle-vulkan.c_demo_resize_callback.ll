; ModuleID = '/home/carl/AnghaBench/glfw/tests/extr_triangle-vulkan.c_demo_resize_callback.c'
source_filename = "/home/carl/AnghaBench/glfw/tests/extr_triangle-vulkan.c_demo_resize_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.demo = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32)* @demo_resize_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @demo_resize_callback(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.demo*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32*, i32** %4, align 8
  %9 = call %struct.demo* @glfwGetWindowUserPointer(i32* %8)
  store %struct.demo* %9, %struct.demo** %7, align 8
  %10 = load i32, i32* %5, align 4
  %11 = load %struct.demo*, %struct.demo** %7, align 8
  %12 = getelementptr inbounds %struct.demo, %struct.demo* %11, i32 0, i32 0
  store i32 %10, i32* %12, align 4
  %13 = load i32, i32* %6, align 4
  %14 = load %struct.demo*, %struct.demo** %7, align 8
  %15 = getelementptr inbounds %struct.demo, %struct.demo* %14, i32 0, i32 1
  store i32 %13, i32* %15, align 4
  %16 = load %struct.demo*, %struct.demo** %7, align 8
  %17 = call i32 @demo_resize(%struct.demo* %16)
  ret void
}

declare dso_local %struct.demo* @glfwGetWindowUserPointer(i32*) #1

declare dso_local i32 @demo_resize(%struct.demo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
