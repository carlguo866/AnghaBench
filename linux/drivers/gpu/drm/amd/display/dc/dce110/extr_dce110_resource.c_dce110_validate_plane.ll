; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce110/extr_dce110_resource.c_dce110_validate_plane.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/dce110/extr_dce110_resource.c_dce110_validate_plane.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc_plane_state = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.dc_caps = type { i32 }

@DC_FAIL_SURFACE_VALIDATE = common dso_local global i32 0, align 4
@DC_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dce110_validate_plane(%struct.dc_plane_state* %0, %struct.dc_caps* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dc_plane_state*, align 8
  %5 = alloca %struct.dc_caps*, align 8
  store %struct.dc_plane_state* %0, %struct.dc_plane_state** %4, align 8
  store %struct.dc_caps* %1, %struct.dc_caps** %5, align 8
  %6 = load %struct.dc_plane_state*, %struct.dc_plane_state** %4, align 8
  %7 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = mul nsw i32 %9, 2
  %11 = load %struct.dc_plane_state*, %struct.dc_plane_state** %4, align 8
  %12 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp slt i32 %10, %14
  br i1 %15, label %27, label %16

16:                                               ; preds = %2
  %17 = load %struct.dc_plane_state*, %struct.dc_plane_state** %4, align 8
  %18 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = mul nsw i32 %20, 2
  %22 = load %struct.dc_plane_state*, %struct.dc_plane_state** %4, align 8
  %23 = getelementptr inbounds %struct.dc_plane_state, %struct.dc_plane_state* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = icmp slt i32 %21, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %16, %2
  %28 = load i32, i32* @DC_FAIL_SURFACE_VALIDATE, align 4
  store i32 %28, i32* %3, align 4
  br label %31

29:                                               ; preds = %16
  %30 = load i32, i32* @DC_OK, align 4
  store i32 %30, i32* %3, align 4
  br label %31

31:                                               ; preds = %29, %27
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
