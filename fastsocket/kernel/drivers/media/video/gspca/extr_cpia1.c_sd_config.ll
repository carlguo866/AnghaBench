; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_cpia1.c_sd_config.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_cpia1.c_sd_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { %struct.cam }
%struct.cam = type { i32, i32 }
%struct.usb_device_id = type { i32, i32 }

@D_PROBE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"cpia CPiA camera detected (vid/pid 0x%04X:0x%04X)\00", align 1
@mode = common dso_local global i32 0, align 4
@FREQ_DEF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gspca_dev*, %struct.usb_device_id*)* @sd_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sd_config(%struct.gspca_dev* %0, %struct.usb_device_id* %1) #0 {
  %3 = alloca %struct.gspca_dev*, align 8
  %4 = alloca %struct.usb_device_id*, align 8
  %5 = alloca %struct.cam*, align 8
  store %struct.gspca_dev* %0, %struct.gspca_dev** %3, align 8
  store %struct.usb_device_id* %1, %struct.usb_device_id** %4, align 8
  %6 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %7 = call i32 @reset_camera_params(%struct.gspca_dev* %6)
  %8 = load i32, i32* @D_PROBE, align 4
  %9 = load %struct.usb_device_id*, %struct.usb_device_id** %4, align 8
  %10 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.usb_device_id*, %struct.usb_device_id** %4, align 8
  %13 = getelementptr inbounds %struct.usb_device_id, %struct.usb_device_id* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @PDEBUG(i32 %8, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %11, i32 %14)
  %16 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %17 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %16, i32 0, i32 0
  store %struct.cam* %17, %struct.cam** %5, align 8
  %18 = load i32, i32* @mode, align 4
  %19 = load %struct.cam*, %struct.cam** %5, align 8
  %20 = getelementptr inbounds %struct.cam, %struct.cam* %19, i32 0, i32 1
  store i32 %18, i32* %20, align 4
  %21 = load i32, i32* @mode, align 4
  %22 = call i32 @ARRAY_SIZE(i32 %21)
  %23 = load %struct.cam*, %struct.cam** %5, align 8
  %24 = getelementptr inbounds %struct.cam, %struct.cam* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  %25 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %26 = load i32, i32* @FREQ_DEF, align 4
  %27 = call i32 @sd_setfreq(%struct.gspca_dev* %25, i32 %26)
  ret i32 0
}

declare dso_local i32 @reset_camera_params(%struct.gspca_dev*) #1

declare dso_local i32 @PDEBUG(i32, i8*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @sd_setfreq(%struct.gspca_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
