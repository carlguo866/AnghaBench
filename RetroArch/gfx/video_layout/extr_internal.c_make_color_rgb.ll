; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/video_layout/extr_internal.c_make_color_rgb.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/video_layout/extr_internal.c_make_color_rgb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { float, float, float, float }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local { <2 x float>, <2 x float> } @make_color_rgb(float %0, float %1, float %2) #0 {
  %4 = alloca %struct.TYPE_3__, align 4
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  store float %0, float* %5, align 4
  store float %1, float* %6, align 4
  store float %2, float* %7, align 4
  %8 = load float, float* %5, align 4
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  store float %8, float* %9, align 4
  %10 = load float, float* %6, align 4
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 1
  store float %10, float* %11, align 4
  %12 = load float, float* %7, align 4
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 2
  store float %12, float* %13, align 4
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 3
  store float 1.000000e+00, float* %14, align 4
  %15 = bitcast %struct.TYPE_3__* %4 to { <2 x float>, <2 x float> }*
  %16 = load { <2 x float>, <2 x float> }, { <2 x float>, <2 x float> }* %15, align 4
  ret { <2 x float>, <2 x float> } %16
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
