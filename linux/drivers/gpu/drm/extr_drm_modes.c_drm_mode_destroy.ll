; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_modes.c_drm_mode_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/extr_drm_modes.c_drm_mode_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }
%struct.drm_display_mode = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @drm_mode_destroy(%struct.drm_device* %0, %struct.drm_display_mode* %1) #0 {
  %3 = alloca %struct.drm_device*, align 8
  %4 = alloca %struct.drm_display_mode*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %3, align 8
  store %struct.drm_display_mode* %1, %struct.drm_display_mode** %4, align 8
  %5 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %6 = icmp ne %struct.drm_display_mode* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %2
  br label %11

8:                                                ; preds = %2
  %9 = load %struct.drm_display_mode*, %struct.drm_display_mode** %4, align 8
  %10 = call i32 @kfree(%struct.drm_display_mode* %9)
  br label %11

11:                                               ; preds = %8, %7
  ret void
}

declare dso_local i32 @kfree(%struct.drm_display_mode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
