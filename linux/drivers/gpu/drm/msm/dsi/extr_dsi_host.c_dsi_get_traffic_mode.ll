; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/dsi/extr_dsi_host.c_dsi_get_traffic_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/dsi/extr_dsi_host.c_dsi_get_traffic_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MIPI_DSI_MODE_VIDEO_BURST = common dso_local global i32 0, align 4
@BURST_MODE = common dso_local global i32 0, align 4
@MIPI_DSI_MODE_VIDEO_SYNC_PULSE = common dso_local global i32 0, align 4
@NON_BURST_SYNCH_PULSE = common dso_local global i32 0, align 4
@NON_BURST_SYNCH_EVENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @dsi_get_traffic_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dsi_get_traffic_mode(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = load i32, i32* @MIPI_DSI_MODE_VIDEO_BURST, align 4
  %6 = and i32 %4, %5
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = load i32, i32* @BURST_MODE, align 4
  store i32 %9, i32* %2, align 4
  br label %20

10:                                               ; preds = %1
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* @MIPI_DSI_MODE_VIDEO_SYNC_PULSE, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %10
  %16 = load i32, i32* @NON_BURST_SYNCH_PULSE, align 4
  store i32 %16, i32* %2, align 4
  br label %20

17:                                               ; preds = %10
  br label %18

18:                                               ; preds = %17
  %19 = load i32, i32* @NON_BURST_SYNCH_EVENT, align 4
  store i32 %19, i32* %2, align 4
  br label %20

20:                                               ; preds = %18, %15, %8
  %21 = load i32, i32* %2, align 4
  ret i32 %21
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
