; ModuleID = '/home/carl/AnghaBench/glfw/src/extr_x11_init.c_createHelperWindow.c'
source_filename = "/home/carl/AnghaBench/glfw/src/extr_x11_init.c_createHelperWindow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.TYPE_6__ = type { i32 }

@PropertyChangeMask = common dso_local global i32 0, align 4
@_glfw = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@InputOnly = common dso_local global i32 0, align 4
@CWEventMask = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @createHelperWindow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @createHelperWindow() #0 {
  %1 = alloca %struct.TYPE_6__, align 4
  %2 = load i32, i32* @PropertyChangeMask, align 4
  %3 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 0
  store i32 %2, i32* %3, align 4
  %4 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @_glfw, i32 0, i32 0, i32 1), align 4
  %5 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @_glfw, i32 0, i32 0, i32 2), align 4
  %6 = load i32, i32* @InputOnly, align 4
  %7 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @_glfw, i32 0, i32 0, i32 1), align 4
  %8 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @_glfw, i32 0, i32 0, i32 0), align 4
  %9 = call i32 @DefaultVisual(i32 %7, i32 %8)
  %10 = load i32, i32* @CWEventMask, align 4
  %11 = call i32 @XCreateWindow(i32 %4, i32 %5, i32 0, i32 0, i32 1, i32 1, i32 0, i32 0, i32 %6, i32 %9, i32 %10, %struct.TYPE_6__* %1)
  ret i32 %11
}

declare dso_local i32 @XCreateWindow(i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_6__*) #1

declare dso_local i32 @DefaultVisual(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
