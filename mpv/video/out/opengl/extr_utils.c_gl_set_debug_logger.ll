; ModuleID = '/home/carl/AnghaBench/mpv/video/out/opengl/extr_utils.c_gl_set_debug_logger.c'
source_filename = "/home/carl/AnghaBench/mpv/video/out/opengl/extr_utils.c_gl_set_debug_logger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 (i32*, %struct.mp_log*)* }
%struct.mp_log = type { i32 }

@gl_debug_cb = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gl_set_debug_logger(%struct.TYPE_3__* %0, %struct.mp_log* %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca %struct.mp_log*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store %struct.mp_log* %1, %struct.mp_log** %4, align 8
  %5 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %7 = load i32 (i32*, %struct.mp_log*)*, i32 (i32*, %struct.mp_log*)** %6, align 8
  %8 = icmp ne i32 (i32*, %struct.mp_log*)* %7, null
  br i1 %8, label %9, label %22

9:                                                ; preds = %2
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32 (i32*, %struct.mp_log*)*, i32 (i32*, %struct.mp_log*)** %11, align 8
  %13 = load %struct.mp_log*, %struct.mp_log** %4, align 8
  %14 = icmp ne %struct.mp_log* %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %9
  %16 = load i32*, i32** @gl_debug_cb, align 8
  br label %18

17:                                               ; preds = %9
  br label %18

18:                                               ; preds = %17, %15
  %19 = phi i32* [ %16, %15 ], [ null, %17 ]
  %20 = load %struct.mp_log*, %struct.mp_log** %4, align 8
  %21 = call i32 %12(i32* %19, %struct.mp_log* %20)
  br label %22

22:                                               ; preds = %18, %2
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
