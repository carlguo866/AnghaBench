; ModuleID = '/home/carl/AnghaBench/RetroArch/libretro-common/audio/dsp_filters/extr_tremolo.c_tremolocore_core.c'
source_filename = "/home/carl/AnghaBench/RetroArch/libretro-common/audio/dsp_filters/extr_tremolo.c_tremolocore_core.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tremolo_core = type { i32, i32, float* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local float @tremolocore_core(%struct.tremolo_core* %0, float %1) #0 {
  %3 = alloca %struct.tremolo_core*, align 8
  %4 = alloca float, align 4
  store %struct.tremolo_core* %0, %struct.tremolo_core** %3, align 8
  store float %1, float* %4, align 4
  %5 = load %struct.tremolo_core*, %struct.tremolo_core** %3, align 8
  %6 = getelementptr inbounds %struct.tremolo_core, %struct.tremolo_core* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = load %struct.tremolo_core*, %struct.tremolo_core** %3, align 8
  %9 = getelementptr inbounds %struct.tremolo_core, %struct.tremolo_core* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = srem i32 %7, %10
  %12 = load %struct.tremolo_core*, %struct.tremolo_core** %3, align 8
  %13 = getelementptr inbounds %struct.tremolo_core, %struct.tremolo_core* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 8
  %14 = load float, float* %4, align 4
  %15 = load %struct.tremolo_core*, %struct.tremolo_core** %3, align 8
  %16 = getelementptr inbounds %struct.tremolo_core, %struct.tremolo_core* %15, i32 0, i32 2
  %17 = load float*, float** %16, align 8
  %18 = load %struct.tremolo_core*, %struct.tremolo_core** %3, align 8
  %19 = getelementptr inbounds %struct.tremolo_core, %struct.tremolo_core* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %19, align 8
  %22 = sext i32 %20 to i64
  %23 = getelementptr inbounds float, float* %17, i64 %22
  %24 = load float, float* %23, align 4
  %25 = fmul float %14, %24
  ret float %25
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
