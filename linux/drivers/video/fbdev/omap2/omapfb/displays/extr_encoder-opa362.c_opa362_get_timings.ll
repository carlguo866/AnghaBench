; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/displays/extr_encoder-opa362.c_opa362_get_timings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/displays/extr_encoder-opa362.c_opa362_get_timings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_dss_device = type { i32 }
%struct.omap_video_timings = type { i32 }
%struct.panel_drv_data = type { %struct.omap_video_timings }

@.str = private unnamed_addr constant [13 x i8] c"get_timings\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.omap_dss_device*, %struct.omap_video_timings*)* @opa362_get_timings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @opa362_get_timings(%struct.omap_dss_device* %0, %struct.omap_video_timings* %1) #0 {
  %3 = alloca %struct.omap_dss_device*, align 8
  %4 = alloca %struct.omap_video_timings*, align 8
  %5 = alloca %struct.panel_drv_data*, align 8
  store %struct.omap_dss_device* %0, %struct.omap_dss_device** %3, align 8
  store %struct.omap_video_timings* %1, %struct.omap_video_timings** %4, align 8
  %6 = load %struct.omap_dss_device*, %struct.omap_dss_device** %3, align 8
  %7 = call %struct.panel_drv_data* @to_panel_data(%struct.omap_dss_device* %6)
  store %struct.panel_drv_data* %7, %struct.panel_drv_data** %5, align 8
  %8 = load %struct.omap_dss_device*, %struct.omap_dss_device** %3, align 8
  %9 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @dev_dbg(i32 %10, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.omap_video_timings*, %struct.omap_video_timings** %4, align 8
  %13 = load %struct.panel_drv_data*, %struct.panel_drv_data** %5, align 8
  %14 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %13, i32 0, i32 0
  %15 = bitcast %struct.omap_video_timings* %12 to i8*
  %16 = bitcast %struct.omap_video_timings* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %15, i8* align 4 %16, i64 4, i1 false)
  ret void
}

declare dso_local %struct.panel_drv_data* @to_panel_data(%struct.omap_dss_device*) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
