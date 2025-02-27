; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/mxsfb/extr_mxsfb_out.c_mxsfb_panel_connector_detect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/mxsfb/extr_mxsfb_out.c_mxsfb_panel_connector_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_connector = type { i32 }
%struct.mxsfb_drm_private = type { i64 }

@connector_status_connected = common dso_local global i32 0, align 4
@connector_status_disconnected = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_connector*, i32)* @mxsfb_panel_connector_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mxsfb_panel_connector_detect(%struct.drm_connector* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_connector*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mxsfb_drm_private*, align 8
  store %struct.drm_connector* %0, %struct.drm_connector** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.drm_connector*, %struct.drm_connector** %4, align 8
  %8 = call %struct.mxsfb_drm_private* @drm_connector_to_mxsfb_drm_private(%struct.drm_connector* %7)
  store %struct.mxsfb_drm_private* %8, %struct.mxsfb_drm_private** %6, align 8
  %9 = load %struct.mxsfb_drm_private*, %struct.mxsfb_drm_private** %6, align 8
  %10 = getelementptr inbounds %struct.mxsfb_drm_private, %struct.mxsfb_drm_private* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* @connector_status_connected, align 4
  store i32 %14, i32* %3, align 4
  br label %17

15:                                               ; preds = %2
  %16 = load i32, i32* @connector_status_disconnected, align 4
  store i32 %16, i32* %3, align 4
  br label %17

17:                                               ; preds = %15, %13
  %18 = load i32, i32* %3, align 4
  ret i32 %18
}

declare dso_local %struct.mxsfb_drm_private* @drm_connector_to_mxsfb_drm_private(%struct.drm_connector*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
