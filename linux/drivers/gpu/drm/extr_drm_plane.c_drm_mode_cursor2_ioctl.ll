; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_plane.c_drm_mode_cursor2_ioctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_plane.c_drm_mode_cursor2_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.drm_file = type { i32 }
%struct.drm_mode_cursor2 = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_mode_cursor2_ioctl(%struct.drm_device* %0, i8* %1, %struct.drm_file* %2) #0 {
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.drm_file*, align 8
  %7 = alloca %struct.drm_mode_cursor2*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.drm_file* %2, %struct.drm_file** %6, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = bitcast i8* %8 to %struct.drm_mode_cursor2*
  store %struct.drm_mode_cursor2* %9, %struct.drm_mode_cursor2** %7, align 8
  %10 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %11 = load %struct.drm_mode_cursor2*, %struct.drm_mode_cursor2** %7, align 8
  %12 = load %struct.drm_file*, %struct.drm_file** %6, align 8
  %13 = call i32 @drm_mode_cursor_common(%struct.drm_device* %10, %struct.drm_mode_cursor2* %11, %struct.drm_file* %12)
  ret i32 %13
}

declare dso_local i32 @drm_mode_cursor_common(%struct.drm_device*, %struct.drm_mode_cursor2*, %struct.drm_file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
