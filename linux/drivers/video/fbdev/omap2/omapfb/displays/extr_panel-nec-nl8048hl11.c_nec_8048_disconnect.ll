; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/displays/extr_panel-nec-nl8048hl11.c_nec_8048_disconnect.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/displays/extr_panel-nec-nl8048hl11.c_nec_8048_disconnect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_dss_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.omap_dss_device*, %struct.omap_dss_device*)* }
%struct.panel_drv_data = type { %struct.omap_dss_device* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.omap_dss_device*)* @nec_8048_disconnect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nec_8048_disconnect(%struct.omap_dss_device* %0) #0 {
  %2 = alloca %struct.omap_dss_device*, align 8
  %3 = alloca %struct.panel_drv_data*, align 8
  %4 = alloca %struct.omap_dss_device*, align 8
  store %struct.omap_dss_device* %0, %struct.omap_dss_device** %2, align 8
  %5 = load %struct.omap_dss_device*, %struct.omap_dss_device** %2, align 8
  %6 = call %struct.panel_drv_data* @to_panel_data(%struct.omap_dss_device* %5)
  store %struct.panel_drv_data* %6, %struct.panel_drv_data** %3, align 8
  %7 = load %struct.panel_drv_data*, %struct.panel_drv_data** %3, align 8
  %8 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %7, i32 0, i32 0
  %9 = load %struct.omap_dss_device*, %struct.omap_dss_device** %8, align 8
  store %struct.omap_dss_device* %9, %struct.omap_dss_device** %4, align 8
  %10 = load %struct.omap_dss_device*, %struct.omap_dss_device** %2, align 8
  %11 = call i32 @omapdss_device_is_connected(%struct.omap_dss_device* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  br label %24

14:                                               ; preds = %1
  %15 = load %struct.omap_dss_device*, %struct.omap_dss_device** %4, align 8
  %16 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32 (%struct.omap_dss_device*, %struct.omap_dss_device*)*, i32 (%struct.omap_dss_device*, %struct.omap_dss_device*)** %19, align 8
  %21 = load %struct.omap_dss_device*, %struct.omap_dss_device** %4, align 8
  %22 = load %struct.omap_dss_device*, %struct.omap_dss_device** %2, align 8
  %23 = call i32 %20(%struct.omap_dss_device* %21, %struct.omap_dss_device* %22)
  br label %24

24:                                               ; preds = %14, %13
  ret void
}

declare dso_local %struct.panel_drv_data* @to_panel_data(%struct.omap_dss_device*) #1

declare dso_local i32 @omapdss_device_is_connected(%struct.omap_dss_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
