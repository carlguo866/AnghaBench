; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/vc4/extr_vc4_render_cl.c_vc4_full_res_offset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/vc4/extr_vc4_render_cl.c_vc4_full_res_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vc4_exec_info = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.drm_gem_cma_object = type { i64 }
%struct.drm_vc4_submit_rcl_surface = type { i64 }

@VC4_TILE_BUFFER_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.vc4_exec_info*, %struct.drm_gem_cma_object*, %struct.drm_vc4_submit_rcl_surface*, i32, i32)* @vc4_full_res_offset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @vc4_full_res_offset(%struct.vc4_exec_info* %0, %struct.drm_gem_cma_object* %1, %struct.drm_vc4_submit_rcl_surface* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.vc4_exec_info*, align 8
  %7 = alloca %struct.drm_gem_cma_object*, align 8
  %8 = alloca %struct.drm_vc4_submit_rcl_surface*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.vc4_exec_info* %0, %struct.vc4_exec_info** %6, align 8
  store %struct.drm_gem_cma_object* %1, %struct.drm_gem_cma_object** %7, align 8
  store %struct.drm_vc4_submit_rcl_surface* %2, %struct.drm_vc4_submit_rcl_surface** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %11 = load %struct.drm_gem_cma_object*, %struct.drm_gem_cma_object** %7, align 8
  %12 = getelementptr inbounds %struct.drm_gem_cma_object, %struct.drm_gem_cma_object* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.drm_vc4_submit_rcl_surface*, %struct.drm_vc4_submit_rcl_surface** %8, align 8
  %15 = getelementptr inbounds %struct.drm_vc4_submit_rcl_surface, %struct.drm_vc4_submit_rcl_surface* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = add nsw i64 %13, %16
  %18 = load i32, i32* @VC4_TILE_BUFFER_SIZE, align 4
  %19 = load %struct.vc4_exec_info*, %struct.vc4_exec_info** %6, align 8
  %20 = getelementptr inbounds %struct.vc4_exec_info, %struct.vc4_exec_info* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @DIV_ROUND_UP(i32 %23, i32 32)
  %25 = load i32, i32* %10, align 4
  %26 = mul nsw i32 %24, %25
  %27 = load i32, i32* %9, align 4
  %28 = add nsw i32 %26, %27
  %29 = mul nsw i32 %18, %28
  %30 = sext i32 %29 to i64
  %31 = add nsw i64 %17, %30
  ret i64 %31
}

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
