; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_hdmi5.c_hdmi_audio_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_hdmi5.c_hdmi_audio_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_hdmi = type { %struct.TYPE_4__, i32, i32, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.omap_hdmi_audio_pdata = type { i32, i32*, i32, i32* }

@hdmi_audio_ops = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"omap-hdmi-audio\00", align 1
@PLATFORM_DEVID_AUTO = common dso_local global i32 0, align 4
@HDMI_WP_SYSCONFIG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.omap_hdmi*)* @hdmi_audio_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hdmi_audio_register(%struct.omap_hdmi* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.omap_hdmi*, align 8
  %4 = alloca %struct.omap_hdmi_audio_pdata, align 8
  store %struct.omap_hdmi* %0, %struct.omap_hdmi** %3, align 8
  %5 = getelementptr inbounds %struct.omap_hdmi_audio_pdata, %struct.omap_hdmi_audio_pdata* %4, i32 0, i32 0
  store i32 5, i32* %5, align 8
  %6 = getelementptr inbounds %struct.omap_hdmi_audio_pdata, %struct.omap_hdmi_audio_pdata* %4, i32 0, i32 1
  store i32* @hdmi_audio_ops, i32** %6, align 8
  %7 = getelementptr inbounds %struct.omap_hdmi_audio_pdata, %struct.omap_hdmi_audio_pdata* %4, i32 0, i32 2
  %8 = load %struct.omap_hdmi*, %struct.omap_hdmi** %3, align 8
  %9 = getelementptr inbounds %struct.omap_hdmi, %struct.omap_hdmi* %8, i32 0, i32 0
  %10 = call i32 @hdmi_wp_get_audio_dma_addr(%struct.TYPE_4__* %9)
  store i32 %10, i32* %7, align 8
  %11 = getelementptr inbounds %struct.omap_hdmi_audio_pdata, %struct.omap_hdmi_audio_pdata* %4, i32 0, i32 3
  %12 = load %struct.omap_hdmi*, %struct.omap_hdmi** %3, align 8
  %13 = getelementptr inbounds %struct.omap_hdmi, %struct.omap_hdmi* %12, i32 0, i32 3
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  store i32* %15, i32** %11, align 8
  %16 = load %struct.omap_hdmi*, %struct.omap_hdmi** %3, align 8
  %17 = getelementptr inbounds %struct.omap_hdmi, %struct.omap_hdmi* %16, i32 0, i32 3
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* @PLATFORM_DEVID_AUTO, align 4
  %21 = call i32 @platform_device_register_data(i32* %19, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %20, %struct.omap_hdmi_audio_pdata* %4, i32 32)
  %22 = load %struct.omap_hdmi*, %struct.omap_hdmi** %3, align 8
  %23 = getelementptr inbounds %struct.omap_hdmi, %struct.omap_hdmi* %22, i32 0, i32 2
  store i32 %21, i32* %23, align 8
  %24 = load %struct.omap_hdmi*, %struct.omap_hdmi** %3, align 8
  %25 = getelementptr inbounds %struct.omap_hdmi, %struct.omap_hdmi* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = call i64 @IS_ERR(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %1
  %30 = load %struct.omap_hdmi*, %struct.omap_hdmi** %3, align 8
  %31 = getelementptr inbounds %struct.omap_hdmi, %struct.omap_hdmi* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @PTR_ERR(i32 %32)
  store i32 %33, i32* %2, align 4
  br label %47

34:                                               ; preds = %1
  %35 = load %struct.omap_hdmi*, %struct.omap_hdmi** %3, align 8
  %36 = call i32 @hdmi_runtime_get(%struct.omap_hdmi* %35)
  %37 = load %struct.omap_hdmi*, %struct.omap_hdmi** %3, align 8
  %38 = getelementptr inbounds %struct.omap_hdmi, %struct.omap_hdmi* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @HDMI_WP_SYSCONFIG, align 4
  %42 = call i32 @REG_GET(i32 %40, i32 %41, i32 3, i32 2)
  %43 = load %struct.omap_hdmi*, %struct.omap_hdmi** %3, align 8
  %44 = getelementptr inbounds %struct.omap_hdmi, %struct.omap_hdmi* %43, i32 0, i32 1
  store i32 %42, i32* %44, align 4
  %45 = load %struct.omap_hdmi*, %struct.omap_hdmi** %3, align 8
  %46 = call i32 @hdmi_runtime_put(%struct.omap_hdmi* %45)
  store i32 0, i32* %2, align 4
  br label %47

47:                                               ; preds = %34, %29
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local i32 @hdmi_wp_get_audio_dma_addr(%struct.TYPE_4__*) #1

declare dso_local i32 @platform_device_register_data(i32*, i8*, i32, %struct.omap_hdmi_audio_pdata*, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @hdmi_runtime_get(%struct.omap_hdmi*) #1

declare dso_local i32 @REG_GET(i32, i32, i32, i32) #1

declare dso_local i32 @hdmi_runtime_put(%struct.omap_hdmi*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
