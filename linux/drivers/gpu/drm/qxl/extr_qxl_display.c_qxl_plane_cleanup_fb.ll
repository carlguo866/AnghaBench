; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/qxl/extr_qxl_display.c_qxl_plane_cleanup_fb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/qxl/extr_qxl_display.c_qxl_plane_cleanup_fb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_plane = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.drm_gem_object** }
%struct.drm_gem_object = type { i32 }
%struct.drm_plane_state = type { %struct.TYPE_8__* }
%struct.qxl_bo = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_plane*, %struct.drm_plane_state*)* @qxl_plane_cleanup_fb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qxl_plane_cleanup_fb(%struct.drm_plane* %0, %struct.drm_plane_state* %1) #0 {
  %3 = alloca %struct.drm_plane*, align 8
  %4 = alloca %struct.drm_plane_state*, align 8
  %5 = alloca %struct.drm_gem_object*, align 8
  %6 = alloca %struct.qxl_bo*, align 8
  store %struct.drm_plane* %0, %struct.drm_plane** %3, align 8
  store %struct.drm_plane_state* %1, %struct.drm_plane_state** %4, align 8
  %7 = load %struct.drm_plane_state*, %struct.drm_plane_state** %4, align 8
  %8 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %7, i32 0, i32 0
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %10 = icmp ne %struct.TYPE_8__* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  br label %47

12:                                               ; preds = %2
  %13 = load %struct.drm_plane_state*, %struct.drm_plane_state** %4, align 8
  %14 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %13, i32 0, i32 0
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %15, i32 0, i32 0
  %17 = load %struct.drm_gem_object**, %struct.drm_gem_object*** %16, align 8
  %18 = getelementptr inbounds %struct.drm_gem_object*, %struct.drm_gem_object** %17, i64 0
  %19 = load %struct.drm_gem_object*, %struct.drm_gem_object** %18, align 8
  store %struct.drm_gem_object* %19, %struct.drm_gem_object** %5, align 8
  %20 = load %struct.drm_gem_object*, %struct.drm_gem_object** %5, align 8
  %21 = call %struct.qxl_bo* @gem_to_qxl_bo(%struct.drm_gem_object* %20)
  store %struct.qxl_bo* %21, %struct.qxl_bo** %6, align 8
  %22 = load %struct.qxl_bo*, %struct.qxl_bo** %6, align 8
  %23 = call i32 @qxl_bo_unpin(%struct.qxl_bo* %22)
  %24 = load %struct.drm_plane_state*, %struct.drm_plane_state** %4, align 8
  %25 = getelementptr inbounds %struct.drm_plane_state, %struct.drm_plane_state* %24, i32 0, i32 0
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %25, align 8
  %27 = load %struct.drm_plane*, %struct.drm_plane** %3, align 8
  %28 = getelementptr inbounds %struct.drm_plane, %struct.drm_plane* %27, i32 0, i32 0
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %30, align 8
  %32 = icmp ne %struct.TYPE_8__* %26, %31
  br i1 %32, label %33, label %47

33:                                               ; preds = %12
  %34 = load %struct.qxl_bo*, %struct.qxl_bo** %6, align 8
  %35 = getelementptr inbounds %struct.qxl_bo, %struct.qxl_bo* %34, i32 0, i32 0
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %35, align 8
  %37 = icmp ne %struct.TYPE_7__* %36, null
  br i1 %37, label %38, label %47

38:                                               ; preds = %33
  %39 = load %struct.qxl_bo*, %struct.qxl_bo** %6, align 8
  %40 = getelementptr inbounds %struct.qxl_bo, %struct.qxl_bo* %39, i32 0, i32 0
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = call i32 @drm_gem_object_put_unlocked(i32* %43)
  %45 = load %struct.qxl_bo*, %struct.qxl_bo** %6, align 8
  %46 = getelementptr inbounds %struct.qxl_bo, %struct.qxl_bo* %45, i32 0, i32 0
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %46, align 8
  br label %47

47:                                               ; preds = %11, %38, %33, %12
  ret void
}

declare dso_local %struct.qxl_bo* @gem_to_qxl_bo(%struct.drm_gem_object*) #1

declare dso_local i32 @qxl_bo_unpin(%struct.qxl_bo*) #1

declare dso_local i32 @drm_gem_object_put_unlocked(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
