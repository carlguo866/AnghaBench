; ModuleID = '/home/carl/AnghaBench/Craft/deps/glfw/src/extr_wl_init.c_keyboardHandleEnter.c'
source_filename = "/home/carl/AnghaBench/Craft/deps/glfw/src/extr_wl_init.c_keyboardHandleEnter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.wl_keyboard = type { i32 }
%struct.wl_surface = type { i32 }
%struct.wl_array = type { i32 }

@_glfw = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@GL_TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.wl_keyboard*, i32, %struct.wl_surface*, %struct.wl_array*)* @keyboardHandleEnter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @keyboardHandleEnter(i8* %0, %struct.wl_keyboard* %1, i32 %2, %struct.wl_surface* %3, %struct.wl_array* %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca %struct.wl_keyboard*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.wl_surface*, align 8
  %10 = alloca %struct.wl_array*, align 8
  %11 = alloca i32*, align 8
  store i8* %0, i8** %6, align 8
  store %struct.wl_keyboard* %1, %struct.wl_keyboard** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.wl_surface* %3, %struct.wl_surface** %9, align 8
  store %struct.wl_array* %4, %struct.wl_array** %10, align 8
  %12 = load %struct.wl_surface*, %struct.wl_surface** %9, align 8
  %13 = call i32* @wl_surface_get_user_data(%struct.wl_surface* %12)
  store i32* %13, i32** %11, align 8
  %14 = load i32*, i32** %11, align 8
  store i32* %14, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_glfw, i32 0, i32 0, i32 0), align 8
  %15 = load i32*, i32** %11, align 8
  %16 = load i32, i32* @GL_TRUE, align 4
  %17 = call i32 @_glfwInputWindowFocus(i32* %15, i32 %16)
  ret void
}

declare dso_local i32* @wl_surface_get_user_data(%struct.wl_surface*) #1

declare dso_local i32 @_glfwInputWindowFocus(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
