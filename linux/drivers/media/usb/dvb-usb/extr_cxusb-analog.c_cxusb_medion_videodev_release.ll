; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_cxusb-analog.c_cxusb_medion_videodev_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb/extr_cxusb-analog.c_cxusb_medion_videodev_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.video_device = type { i32 }
%struct.dvb_usb_device = type { i32 }

@OPS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"video device release\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.video_device*)* @cxusb_medion_videodev_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cxusb_medion_videodev_release(%struct.video_device* %0) #0 {
  %2 = alloca %struct.video_device*, align 8
  %3 = alloca %struct.dvb_usb_device*, align 8
  store %struct.video_device* %0, %struct.video_device** %2, align 8
  %4 = load %struct.video_device*, %struct.video_device** %2, align 8
  %5 = call %struct.dvb_usb_device* @video_get_drvdata(%struct.video_device* %4)
  store %struct.dvb_usb_device* %5, %struct.dvb_usb_device** %3, align 8
  %6 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %3, align 8
  %7 = load i32, i32* @OPS, align 4
  %8 = call i32 @cxusb_vprintk(%struct.dvb_usb_device* %6, i32 %7, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.video_device*, %struct.video_device** %2, align 8
  %10 = getelementptr inbounds %struct.video_device, %struct.video_device* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @vb2_queue_release(i32 %11)
  %13 = load %struct.video_device*, %struct.video_device** %2, align 8
  %14 = call i32 @video_device_release(%struct.video_device* %13)
  ret void
}

declare dso_local %struct.dvb_usb_device* @video_get_drvdata(%struct.video_device*) #1

declare dso_local i32 @cxusb_vprintk(%struct.dvb_usb_device*, i32, i8*) #1

declare dso_local i32 @vb2_queue_release(i32) #1

declare dso_local i32 @video_device_release(%struct.video_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
