; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_kaweth.c_kaweth_trigger_firmware.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_kaweth.c_kaweth_trigger_firmware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kaweth_device = type { i32*, i32 }

@KAWETH_COMMAND_SCAN = common dso_local global i32 0, align 4
@USB_TYPE_VENDOR = common dso_local global i32 0, align 4
@USB_DIR_OUT = common dso_local global i32 0, align 4
@USB_RECIP_DEVICE = common dso_local global i32 0, align 4
@KAWETH_CONTROL_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kaweth_device*, i32)* @kaweth_trigger_firmware to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kaweth_trigger_firmware(%struct.kaweth_device* %0, i32 %1) #0 {
  %3 = alloca %struct.kaweth_device*, align 8
  %4 = alloca i32, align 4
  store %struct.kaweth_device* %0, %struct.kaweth_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.kaweth_device*, %struct.kaweth_device** %3, align 8
  %6 = getelementptr inbounds %struct.kaweth_device, %struct.kaweth_device* %5, i32 0, i32 0
  %7 = load i32*, i32** %6, align 8
  %8 = getelementptr inbounds i32, i32* %7, i64 0
  store i32 182, i32* %8, align 4
  %9 = load %struct.kaweth_device*, %struct.kaweth_device** %3, align 8
  %10 = getelementptr inbounds %struct.kaweth_device, %struct.kaweth_device* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 1
  store i32 195, i32* %12, align 4
  %13 = load %struct.kaweth_device*, %struct.kaweth_device** %3, align 8
  %14 = getelementptr inbounds %struct.kaweth_device, %struct.kaweth_device* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = getelementptr inbounds i32, i32* %15, i64 2
  store i32 1, i32* %16, align 4
  %17 = load %struct.kaweth_device*, %struct.kaweth_device** %3, align 8
  %18 = getelementptr inbounds %struct.kaweth_device, %struct.kaweth_device* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 3
  store i32 0, i32* %20, align 4
  %21 = load %struct.kaweth_device*, %struct.kaweth_device** %3, align 8
  %22 = getelementptr inbounds %struct.kaweth_device, %struct.kaweth_device* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 4
  store i32 6, i32* %24, align 4
  %25 = load i32, i32* %4, align 4
  %26 = load %struct.kaweth_device*, %struct.kaweth_device** %3, align 8
  %27 = getelementptr inbounds %struct.kaweth_device, %struct.kaweth_device* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 5
  store i32 %25, i32* %29, align 4
  %30 = load %struct.kaweth_device*, %struct.kaweth_device** %3, align 8
  %31 = getelementptr inbounds %struct.kaweth_device, %struct.kaweth_device* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 6
  store i32 0, i32* %33, align 4
  %34 = load %struct.kaweth_device*, %struct.kaweth_device** %3, align 8
  %35 = getelementptr inbounds %struct.kaweth_device, %struct.kaweth_device* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 7
  store i32 0, i32* %37, align 4
  %38 = load %struct.kaweth_device*, %struct.kaweth_device** %3, align 8
  %39 = load %struct.kaweth_device*, %struct.kaweth_device** %3, align 8
  %40 = getelementptr inbounds %struct.kaweth_device, %struct.kaweth_device* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @usb_sndctrlpipe(i32 %41, i32 0)
  %43 = load i32, i32* @KAWETH_COMMAND_SCAN, align 4
  %44 = load i32, i32* @USB_TYPE_VENDOR, align 4
  %45 = load i32, i32* @USB_DIR_OUT, align 4
  %46 = or i32 %44, %45
  %47 = load i32, i32* @USB_RECIP_DEVICE, align 4
  %48 = or i32 %46, %47
  %49 = load %struct.kaweth_device*, %struct.kaweth_device** %3, align 8
  %50 = getelementptr inbounds %struct.kaweth_device, %struct.kaweth_device* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = bitcast i32* %51 to i8*
  %53 = load i32, i32* @KAWETH_CONTROL_TIMEOUT, align 4
  %54 = call i32 @kaweth_control(%struct.kaweth_device* %38, i32 %42, i32 %43, i32 %48, i32 0, i32 0, i8* %52, i32 8, i32 %53)
  ret i32 %54
}

declare dso_local i32 @kaweth_control(%struct.kaweth_device*, i32, i32, i32, i32, i32, i8*, i32, i32) #1

declare dso_local i32 @usb_sndctrlpipe(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
