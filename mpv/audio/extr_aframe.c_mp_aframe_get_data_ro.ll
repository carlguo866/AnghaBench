; ModuleID = '/home/carl/AnghaBench/mpv/audio/extr_aframe.c_mp_aframe_get_data_ro.c'
source_filename = "/home/carl/AnghaBench/mpv/audio/extr_aframe.c_mp_aframe_get_data_ro.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mp_aframe = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32** }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32** @mp_aframe_get_data_ro(%struct.mp_aframe* %0) #0 {
  %2 = alloca %struct.mp_aframe*, align 8
  store %struct.mp_aframe* %0, %struct.mp_aframe** %2, align 8
  %3 = load %struct.mp_aframe*, %struct.mp_aframe** %2, align 8
  %4 = call i64 @mp_aframe_is_allocated(%struct.mp_aframe* %3)
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %12

6:                                                ; preds = %1
  %7 = load %struct.mp_aframe*, %struct.mp_aframe** %2, align 8
  %8 = getelementptr inbounds %struct.mp_aframe, %struct.mp_aframe* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32**, i32*** %10, align 8
  br label %13

12:                                               ; preds = %1
  br label %13

13:                                               ; preds = %12, %6
  %14 = phi i32** [ %11, %6 ], [ null, %12 ]
  ret i32** %14
}

declare dso_local i64 @mp_aframe_is_allocated(%struct.mp_aframe*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
