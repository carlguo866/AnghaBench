; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/amdgpu_dm/extr_amdgpu_dm.c_amdgpu_dm_vrr_active.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/amdgpu_dm/extr_amdgpu_dm.c_amdgpu_dm_vrr_active.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_crtc_state = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@VRR_STATE_ACTIVE_VARIABLE = common dso_local global i64 0, align 8
@VRR_STATE_ACTIVE_FIXED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_crtc_state*)* @amdgpu_dm_vrr_active to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amdgpu_dm_vrr_active(%struct.dm_crtc_state* %0) #0 {
  %2 = alloca %struct.dm_crtc_state*, align 8
  store %struct.dm_crtc_state* %0, %struct.dm_crtc_state** %2, align 8
  %3 = load %struct.dm_crtc_state*, %struct.dm_crtc_state** %2, align 8
  %4 = getelementptr inbounds %struct.dm_crtc_state, %struct.dm_crtc_state* %3, i32 0, i32 0
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @VRR_STATE_ACTIVE_VARIABLE, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %16, label %9

9:                                                ; preds = %1
  %10 = load %struct.dm_crtc_state*, %struct.dm_crtc_state** %2, align 8
  %11 = getelementptr inbounds %struct.dm_crtc_state, %struct.dm_crtc_state* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @VRR_STATE_ACTIVE_FIXED, align 8
  %15 = icmp eq i64 %13, %14
  br label %16

16:                                               ; preds = %9, %1
  %17 = phi i1 [ true, %1 ], [ %15, %9 ]
  %18 = zext i1 %17 to i32
  ret i32 %18
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
