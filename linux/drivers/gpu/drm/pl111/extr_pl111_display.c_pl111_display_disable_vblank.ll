; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/pl111/extr_pl111_display.c_pl111_display_disable_vblank.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/pl111/extr_pl111_display.c_pl111_display_disable_vblank.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_simple_display_pipe = type { %struct.drm_crtc }
%struct.drm_crtc = type { %struct.drm_device* }
%struct.drm_device = type { %struct.pl111_drm_dev_private* }
%struct.pl111_drm_dev_private = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_simple_display_pipe*)* @pl111_display_disable_vblank to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pl111_display_disable_vblank(%struct.drm_simple_display_pipe* %0) #0 {
  %2 = alloca %struct.drm_simple_display_pipe*, align 8
  %3 = alloca %struct.drm_crtc*, align 8
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca %struct.pl111_drm_dev_private*, align 8
  store %struct.drm_simple_display_pipe* %0, %struct.drm_simple_display_pipe** %2, align 8
  %6 = load %struct.drm_simple_display_pipe*, %struct.drm_simple_display_pipe** %2, align 8
  %7 = getelementptr inbounds %struct.drm_simple_display_pipe, %struct.drm_simple_display_pipe* %6, i32 0, i32 0
  store %struct.drm_crtc* %7, %struct.drm_crtc** %3, align 8
  %8 = load %struct.drm_crtc*, %struct.drm_crtc** %3, align 8
  %9 = getelementptr inbounds %struct.drm_crtc, %struct.drm_crtc* %8, i32 0, i32 0
  %10 = load %struct.drm_device*, %struct.drm_device** %9, align 8
  store %struct.drm_device* %10, %struct.drm_device** %4, align 8
  %11 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %12 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %11, i32 0, i32 0
  %13 = load %struct.pl111_drm_dev_private*, %struct.pl111_drm_dev_private** %12, align 8
  store %struct.pl111_drm_dev_private* %13, %struct.pl111_drm_dev_private** %5, align 8
  %14 = load %struct.pl111_drm_dev_private*, %struct.pl111_drm_dev_private** %5, align 8
  %15 = getelementptr inbounds %struct.pl111_drm_dev_private, %struct.pl111_drm_dev_private* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.pl111_drm_dev_private*, %struct.pl111_drm_dev_private** %5, align 8
  %18 = getelementptr inbounds %struct.pl111_drm_dev_private, %struct.pl111_drm_dev_private* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = add nsw i64 %16, %19
  %21 = call i32 @writel(i32 0, i64 %20)
  ret void
}

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
