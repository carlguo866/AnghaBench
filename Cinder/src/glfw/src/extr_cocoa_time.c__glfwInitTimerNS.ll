; ModuleID = '/home/carl/AnghaBench/Cinder/src/glfw/src/extr_cocoa_time.c__glfwInitTimerNS.c'
source_filename = "/home/carl/AnghaBench/Cinder/src/glfw/src/extr_cocoa_time.c__glfwInitTimerNS.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32 }

@_glfw = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @_glfwInitTimerNS() #0 {
  %1 = alloca %struct.TYPE_6__, align 4
  %2 = call i32 @mach_timebase_info(%struct.TYPE_6__* %1)
  %3 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 0
  %4 = load i32, i32* %3, align 4
  %5 = sitofp i32 %4 to double
  %6 = fmul double %5, 1.000000e+09
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %1, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = sitofp i32 %8 to double
  %10 = fdiv double %6, %9
  %11 = fptosi double %10 to i32
  store i32 %11, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @_glfw, i32 0, i32 0, i32 0), align 4
  ret void
}

declare dso_local i32 @mach_timebase_info(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
