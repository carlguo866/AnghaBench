; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/amdgpu_dm/extr_amdgpu_dm.c_dm_enable_per_frame_crtc_master_sync.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/amdgpu_dm/extr_amdgpu_dm.c_dm_enable_per_frame_crtc_master_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc_state = type { i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dc_state*)* @dm_enable_per_frame_crtc_master_sync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dm_enable_per_frame_crtc_master_sync(%struct.dc_state* %0) #0 {
  %2 = alloca %struct.dc_state*, align 8
  %3 = alloca i32, align 4
  store %struct.dc_state* %0, %struct.dc_state** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.dc_state*, %struct.dc_state** %2, align 8
  %5 = getelementptr inbounds %struct.dc_state, %struct.dc_state* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = icmp slt i32 %6, 2
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %46

9:                                                ; preds = %1
  store i32 0, i32* %3, align 4
  br label %10

10:                                               ; preds = %35, %9
  %11 = load i32, i32* %3, align 4
  %12 = load %struct.dc_state*, %struct.dc_state** %2, align 8
  %13 = getelementptr inbounds %struct.dc_state, %struct.dc_state* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp slt i32 %11, %14
  br i1 %15, label %16, label %38

16:                                               ; preds = %10
  %17 = load %struct.dc_state*, %struct.dc_state** %2, align 8
  %18 = getelementptr inbounds %struct.dc_state, %struct.dc_state* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  %20 = load i32, i32* %3, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %16
  br label %35

26:                                               ; preds = %16
  %27 = load %struct.dc_state*, %struct.dc_state** %2, align 8
  %28 = getelementptr inbounds %struct.dc_state, %struct.dc_state* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = load i32, i32* %3, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @set_multisync_trigger_params(i32 %33)
  br label %35

35:                                               ; preds = %26, %25
  %36 = load i32, i32* %3, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %3, align 4
  br label %10

38:                                               ; preds = %10
  %39 = load %struct.dc_state*, %struct.dc_state** %2, align 8
  %40 = getelementptr inbounds %struct.dc_state, %struct.dc_state* %39, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = load %struct.dc_state*, %struct.dc_state** %2, align 8
  %43 = getelementptr inbounds %struct.dc_state, %struct.dc_state* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @set_master_stream(i32* %41, i32 %44)
  br label %46

46:                                               ; preds = %38, %8
  ret void
}

declare dso_local i32 @set_multisync_trigger_params(i32) #1

declare dso_local i32 @set_master_stream(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
