; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_rm.c_dpu_rm_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/disp/dpu1/extr_dpu_rm.c_dpu_rm_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpu_rm = type { i32 }
%struct.drm_encoder = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dpu_rm_release(%struct.dpu_rm* %0, %struct.drm_encoder* %1) #0 {
  %3 = alloca %struct.dpu_rm*, align 8
  %4 = alloca %struct.drm_encoder*, align 8
  store %struct.dpu_rm* %0, %struct.dpu_rm** %3, align 8
  store %struct.drm_encoder* %1, %struct.drm_encoder** %4, align 8
  %5 = load %struct.dpu_rm*, %struct.dpu_rm** %3, align 8
  %6 = getelementptr inbounds %struct.dpu_rm, %struct.dpu_rm* %5, i32 0, i32 0
  %7 = call i32 @mutex_lock(i32* %6)
  %8 = load %struct.dpu_rm*, %struct.dpu_rm** %3, align 8
  %9 = load %struct.drm_encoder*, %struct.drm_encoder** %4, align 8
  %10 = getelementptr inbounds %struct.drm_encoder, %struct.drm_encoder* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @_dpu_rm_release_reservation(%struct.dpu_rm* %8, i32 %12)
  %14 = load %struct.dpu_rm*, %struct.dpu_rm** %3, align 8
  %15 = getelementptr inbounds %struct.dpu_rm, %struct.dpu_rm* %14, i32 0, i32 0
  %16 = call i32 @mutex_unlock(i32* %15)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @_dpu_rm_release_reservation(%struct.dpu_rm*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
