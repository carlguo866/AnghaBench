; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/extr_usb_request.c_usbd_req_get_config.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/extr_usb_request.c_usbd_req_get_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_device = type { i32 }
%struct.mtx = type { i32 }
%struct.usb_device_request = type { i32, i32, i32, i32, i32 }

@UT_READ_DEVICE = common dso_local global i32 0, align 4
@UR_GET_CONFIG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @usbd_req_get_config(%struct.usb_device* %0, %struct.mtx* %1, i32* %2) #0 {
  %4 = alloca %struct.usb_device*, align 8
  %5 = alloca %struct.mtx*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.usb_device_request, align 4
  store %struct.usb_device* %0, %struct.usb_device** %4, align 8
  store %struct.mtx* %1, %struct.mtx** %5, align 8
  store i32* %2, i32** %6, align 8
  %8 = load i32, i32* @UT_READ_DEVICE, align 4
  %9 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %7, i32 0, i32 4
  store i32 %8, i32* %9, align 4
  %10 = load i32, i32* @UR_GET_CONFIG, align 4
  %11 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %7, i32 0, i32 3
  store i32 %10, i32* %11, align 4
  %12 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %7, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @USETW(i32 %13, i32 0)
  %15 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %7, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @USETW(i32 %16, i32 0)
  %18 = getelementptr inbounds %struct.usb_device_request, %struct.usb_device_request* %7, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @USETW(i32 %19, i32 1)
  %21 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %22 = load %struct.mtx*, %struct.mtx** %5, align 8
  %23 = load i32*, i32** %6, align 8
  %24 = call i32 @usbd_do_request(%struct.usb_device* %21, %struct.mtx* %22, %struct.usb_device_request* %7, i32* %23)
  ret i32 %24
}

declare dso_local i32 @USETW(i32, i32) #1

declare dso_local i32 @usbd_do_request(%struct.usb_device*, %struct.mtx*, %struct.usb_device_request*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
