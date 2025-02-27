; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_sdi.c_sdi_config_lcd_manager.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/omapdrm/dss/extr_sdi.c_sdi_config_lcd_manager.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdi_device = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32 }

@DSS_IO_PAD_MODE_BYPASS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sdi_device*)* @sdi_config_lcd_manager to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sdi_config_lcd_manager(%struct.sdi_device* %0) #0 {
  %2 = alloca %struct.sdi_device*, align 8
  store %struct.sdi_device* %0, %struct.sdi_device** %2, align 8
  %3 = load i32, i32* @DSS_IO_PAD_MODE_BYPASS, align 4
  %4 = load %struct.sdi_device*, %struct.sdi_device** %2, align 8
  %5 = getelementptr inbounds %struct.sdi_device, %struct.sdi_device* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 4
  store i32 %3, i32* %6, align 4
  %7 = load %struct.sdi_device*, %struct.sdi_device** %2, align 8
  %8 = getelementptr inbounds %struct.sdi_device, %struct.sdi_device* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  store i32 0, i32* %9, align 4
  %10 = load %struct.sdi_device*, %struct.sdi_device** %2, align 8
  %11 = getelementptr inbounds %struct.sdi_device, %struct.sdi_device* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 1
  store i32 0, i32* %12, align 4
  %13 = load %struct.sdi_device*, %struct.sdi_device** %2, align 8
  %14 = getelementptr inbounds %struct.sdi_device, %struct.sdi_device* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 2
  store i32 24, i32* %15, align 4
  %16 = load %struct.sdi_device*, %struct.sdi_device** %2, align 8
  %17 = getelementptr inbounds %struct.sdi_device, %struct.sdi_device* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 3
  store i32 1, i32* %18, align 4
  %19 = load %struct.sdi_device*, %struct.sdi_device** %2, align 8
  %20 = getelementptr inbounds %struct.sdi_device, %struct.sdi_device* %19, i32 0, i32 1
  %21 = load %struct.sdi_device*, %struct.sdi_device** %2, align 8
  %22 = getelementptr inbounds %struct.sdi_device, %struct.sdi_device* %21, i32 0, i32 0
  %23 = call i32 @dss_mgr_set_lcd_config(i32* %20, %struct.TYPE_2__* %22)
  ret void
}

declare dso_local i32 @dss_mgr_set_lcd_config(i32*, %struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
