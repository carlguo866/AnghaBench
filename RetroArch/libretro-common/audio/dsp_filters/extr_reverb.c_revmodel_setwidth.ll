; ModuleID = '/home/carl/AnghaBench/RetroArch/libretro-common/audio/dsp_filters/extr_reverb.c_revmodel_setwidth.c'
source_filename = "/home/carl/AnghaBench/RetroArch/libretro-common/audio/dsp_filters/extr_reverb.c_revmodel_setwidth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.revmodel = type { float }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.revmodel*, float)* @revmodel_setwidth to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @revmodel_setwidth(%struct.revmodel* %0, float %1) #0 {
  %3 = alloca %struct.revmodel*, align 8
  %4 = alloca float, align 4
  store %struct.revmodel* %0, %struct.revmodel** %3, align 8
  store float %1, float* %4, align 4
  %5 = load float, float* %4, align 4
  %6 = load %struct.revmodel*, %struct.revmodel** %3, align 8
  %7 = getelementptr inbounds %struct.revmodel, %struct.revmodel* %6, i32 0, i32 0
  store float %5, float* %7, align 4
  %8 = load %struct.revmodel*, %struct.revmodel** %3, align 8
  %9 = call i32 @revmodel_update(%struct.revmodel* %8)
  ret void
}

declare dso_local i32 @revmodel_update(%struct.revmodel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
