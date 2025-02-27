; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc_resource.c_dc_add_all_planes_for_stream.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/amd/display/dc/core/extr_dc_resource.c_dc_add_all_planes_for_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc = type { i32 }
%struct.dc_stream_state = type { i32 }
%struct.dc_plane_state = type { i32 }
%struct.dc_state = type { i32 }
%struct.dc_validation_set = type { i32, %struct.dc_plane_state**, %struct.dc_stream_state* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dc_add_all_planes_for_stream(%struct.dc* %0, %struct.dc_stream_state* %1, %struct.dc_plane_state** %2, i32 %3, %struct.dc_state* %4) #0 {
  %6 = alloca %struct.dc*, align 8
  %7 = alloca %struct.dc_stream_state*, align 8
  %8 = alloca %struct.dc_plane_state**, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.dc_state*, align 8
  %11 = alloca %struct.dc_validation_set, align 8
  %12 = alloca i32, align 4
  store %struct.dc* %0, %struct.dc** %6, align 8
  store %struct.dc_stream_state* %1, %struct.dc_stream_state** %7, align 8
  store %struct.dc_plane_state** %2, %struct.dc_plane_state*** %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.dc_state* %4, %struct.dc_state** %10, align 8
  %13 = load %struct.dc_stream_state*, %struct.dc_stream_state** %7, align 8
  %14 = getelementptr inbounds %struct.dc_validation_set, %struct.dc_validation_set* %11, i32 0, i32 2
  store %struct.dc_stream_state* %13, %struct.dc_stream_state** %14, align 8
  %15 = load i32, i32* %9, align 4
  %16 = getelementptr inbounds %struct.dc_validation_set, %struct.dc_validation_set* %11, i32 0, i32 0
  store i32 %15, i32* %16, align 8
  store i32 0, i32* %12, align 4
  br label %17

17:                                               ; preds = %32, %5
  %18 = load i32, i32* %12, align 4
  %19 = load i32, i32* %9, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %35

21:                                               ; preds = %17
  %22 = load %struct.dc_plane_state**, %struct.dc_plane_state*** %8, align 8
  %23 = load i32, i32* %12, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.dc_plane_state*, %struct.dc_plane_state** %22, i64 %24
  %26 = load %struct.dc_plane_state*, %struct.dc_plane_state** %25, align 8
  %27 = getelementptr inbounds %struct.dc_validation_set, %struct.dc_validation_set* %11, i32 0, i32 1
  %28 = load %struct.dc_plane_state**, %struct.dc_plane_state*** %27, align 8
  %29 = load i32, i32* %12, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.dc_plane_state*, %struct.dc_plane_state** %28, i64 %30
  store %struct.dc_plane_state* %26, %struct.dc_plane_state** %31, align 8
  br label %32

32:                                               ; preds = %21
  %33 = load i32, i32* %12, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %12, align 4
  br label %17

35:                                               ; preds = %17
  %36 = load %struct.dc*, %struct.dc** %6, align 8
  %37 = load %struct.dc_stream_state*, %struct.dc_stream_state** %7, align 8
  %38 = load %struct.dc_state*, %struct.dc_state** %10, align 8
  %39 = call i32 @add_all_planes_for_stream(%struct.dc* %36, %struct.dc_stream_state* %37, %struct.dc_validation_set* %11, i32 1, %struct.dc_state* %38)
  ret i32 %39
}

declare dso_local i32 @add_all_planes_for_stream(%struct.dc*, %struct.dc_stream_state*, %struct.dc_validation_set*, i32, %struct.dc_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
