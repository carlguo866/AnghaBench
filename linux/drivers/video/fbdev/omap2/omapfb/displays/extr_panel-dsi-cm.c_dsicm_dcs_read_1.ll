; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/displays/extr_panel-dsi-cm.c_dsicm_dcs_read_1.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/displays/extr_panel-dsi-cm.c_dsicm_dcs_read_1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.panel_drv_data = type { i32, %struct.omap_dss_device* }
%struct.omap_dss_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.omap_dss_device*, i32, i32, i32*, i32)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.panel_drv_data*, i32, i32*)* @dsicm_dcs_read_1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dsicm_dcs_read_1(%struct.panel_drv_data* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.panel_drv_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.omap_dss_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca [1 x i32], align 4
  store %struct.panel_drv_data* %0, %struct.panel_drv_data** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %11 = load %struct.panel_drv_data*, %struct.panel_drv_data** %5, align 8
  %12 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %11, i32 0, i32 1
  %13 = load %struct.omap_dss_device*, %struct.omap_dss_device** %12, align 8
  store %struct.omap_dss_device* %13, %struct.omap_dss_device** %8, align 8
  %14 = load %struct.omap_dss_device*, %struct.omap_dss_device** %8, align 8
  %15 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32 (%struct.omap_dss_device*, i32, i32, i32*, i32)*, i32 (%struct.omap_dss_device*, i32, i32, i32*, i32)** %18, align 8
  %20 = load %struct.omap_dss_device*, %struct.omap_dss_device** %8, align 8
  %21 = load %struct.panel_drv_data*, %struct.panel_drv_data** %5, align 8
  %22 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* %6, align 4
  %25 = getelementptr inbounds [1 x i32], [1 x i32]* %10, i64 0, i64 0
  %26 = call i32 %19(%struct.omap_dss_device* %20, i32 %23, i32 %24, i32* %25, i32 1)
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %9, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %3
  %30 = load i32, i32* %9, align 4
  store i32 %30, i32* %4, align 4
  br label %35

31:                                               ; preds = %3
  %32 = getelementptr inbounds [1 x i32], [1 x i32]* %10, i64 0, i64 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32*, i32** %7, align 8
  store i32 %33, i32* %34, align 4
  store i32 0, i32* %4, align 4
  br label %35

35:                                               ; preds = %31, %29
  %36 = load i32, i32* %4, align 4
  ret i32 %36
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
