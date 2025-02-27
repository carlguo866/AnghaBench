; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/displays/extr_encoder-tfp410.c_tfp410_probe_of.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/displays/extr_encoder-tfp410.c_tfp410_probe_of.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.panel_drv_data = type { i32, %struct.omap_dss_device* }
%struct.omap_dss_device = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"powerdown-gpios\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"failed to parse PD gpio\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"failed to find video source\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @tfp410_probe_of to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tfp410_probe_of(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.panel_drv_data*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.omap_dss_device*, align 8
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = call %struct.panel_drv_data* @platform_get_drvdata(%struct.platform_device* %8)
  store %struct.panel_drv_data* %9, %struct.panel_drv_data** %4, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.device_node*, %struct.device_node** %12, align 8
  store %struct.device_node* %13, %struct.device_node** %5, align 8
  %14 = load %struct.device_node*, %struct.device_node** %5, align 8
  %15 = call i32 @of_get_named_gpio(%struct.device_node* %14, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 0)
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %7, align 4
  %17 = call i64 @gpio_is_valid(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %1
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* @ENOENT, align 4
  %22 = sub nsw i32 0, %21
  %23 = icmp eq i32 %20, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %19, %1
  %25 = load i32, i32* %7, align 4
  %26 = load %struct.panel_drv_data*, %struct.panel_drv_data** %4, align 8
  %27 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  br label %33

28:                                               ; preds = %19
  %29 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %30 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %29, i32 0, i32 0
  %31 = call i32 @dev_err(%struct.TYPE_2__* %30, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %32 = load i32, i32* %7, align 4
  store i32 %32, i32* %2, align 4
  br label %49

33:                                               ; preds = %24
  %34 = load %struct.device_node*, %struct.device_node** %5, align 8
  %35 = call %struct.omap_dss_device* @omapdss_of_find_source_for_first_ep(%struct.device_node* %34)
  store %struct.omap_dss_device* %35, %struct.omap_dss_device** %6, align 8
  %36 = load %struct.omap_dss_device*, %struct.omap_dss_device** %6, align 8
  %37 = call i64 @IS_ERR(%struct.omap_dss_device* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %33
  %40 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %41 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %40, i32 0, i32 0
  %42 = call i32 @dev_err(%struct.TYPE_2__* %41, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %43 = load %struct.omap_dss_device*, %struct.omap_dss_device** %6, align 8
  %44 = call i32 @PTR_ERR(%struct.omap_dss_device* %43)
  store i32 %44, i32* %2, align 4
  br label %49

45:                                               ; preds = %33
  %46 = load %struct.omap_dss_device*, %struct.omap_dss_device** %6, align 8
  %47 = load %struct.panel_drv_data*, %struct.panel_drv_data** %4, align 8
  %48 = getelementptr inbounds %struct.panel_drv_data, %struct.panel_drv_data* %47, i32 0, i32 1
  store %struct.omap_dss_device* %46, %struct.omap_dss_device** %48, align 8
  store i32 0, i32* %2, align 4
  br label %49

49:                                               ; preds = %45, %39, %28
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

declare dso_local %struct.panel_drv_data* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @of_get_named_gpio(%struct.device_node*, i8*, i32) #1

declare dso_local i64 @gpio_is_valid(i32) #1

declare dso_local i32 @dev_err(%struct.TYPE_2__*, i8*) #1

declare dso_local %struct.omap_dss_device* @omapdss_of_find_source_for_first_ep(%struct.device_node*) #1

declare dso_local i64 @IS_ERR(%struct.omap_dss_device*) #1

declare dso_local i32 @PTR_ERR(%struct.omap_dss_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
