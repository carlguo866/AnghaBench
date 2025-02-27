; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/serial/extr_kl5kusb105.c_klsi_105_get_line_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/serial/extr_kl5kusb105.c_klsi_105_get_line_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_serial_port = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@KLSI_STATUSBUF_LEN = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@KL5KUSB105A_SIO_POLL = common dso_local global i32 0, align 4
@USB_TYPE_VENDOR = common dso_local global i32 0, align 4
@USB_DIR_IN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"reading line status failed: %d\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"read status %02x %02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_serial_port*, i64*)* @klsi_105_get_line_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @klsi_105_get_line_state(%struct.usb_serial_port* %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_serial_port*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.usb_serial_port* %0, %struct.usb_serial_port** %4, align 8
  store i64* %1, i64** %5, align 8
  %9 = load i32, i32* @KLSI_STATUSBUF_LEN, align 4
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call i32* @kmalloc(i32 %9, i32 %10)
  store i32* %11, i32** %7, align 8
  %12 = load i32*, i32** %7, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %73

17:                                               ; preds = %2
  %18 = load i32*, i32** %7, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 0
  store i32 255, i32* %19, align 4
  %20 = load i32*, i32** %7, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 1
  store i32 255, i32* %21, align 4
  %22 = load %struct.usb_serial_port*, %struct.usb_serial_port** %4, align 8
  %23 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %22, i32 0, i32 1
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.usb_serial_port*, %struct.usb_serial_port** %4, align 8
  %28 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %27, i32 0, i32 1
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @usb_rcvctrlpipe(i32 %31, i32 0)
  %33 = load i32, i32* @KL5KUSB105A_SIO_POLL, align 4
  %34 = load i32, i32* @USB_TYPE_VENDOR, align 4
  %35 = load i32, i32* @USB_DIR_IN, align 4
  %36 = or i32 %34, %35
  %37 = load i32*, i32** %7, align 8
  %38 = load i32, i32* @KLSI_STATUSBUF_LEN, align 4
  %39 = call i32 @usb_control_msg(i32 %26, i32 %32, i32 %33, i32 %36, i32 0, i32 0, i32* %37, i32 %38, i32 10000)
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* @KLSI_STATUSBUF_LEN, align 4
  %42 = icmp ne i32 %40, %41
  br i1 %42, label %43, label %54

43:                                               ; preds = %17
  %44 = load %struct.usb_serial_port*, %struct.usb_serial_port** %4, align 8
  %45 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %44, i32 0, i32 0
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @dev_err(i32* %45, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %46)
  %48 = load i32, i32* %6, align 4
  %49 = icmp sge i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %43
  %51 = load i32, i32* @EIO, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %6, align 4
  br label %53

53:                                               ; preds = %50, %43
  br label %69

54:                                               ; preds = %17
  %55 = load i32*, i32** %7, align 8
  %56 = call i32 @get_unaligned_le16(i32* %55)
  store i32 %56, i32* %8, align 4
  %57 = load %struct.usb_serial_port*, %struct.usb_serial_port** %4, align 8
  %58 = getelementptr inbounds %struct.usb_serial_port, %struct.usb_serial_port* %57, i32 0, i32 0
  %59 = load i32*, i32** %7, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32*, i32** %7, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 1
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @dev_dbg(i32* %58, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %61, i32 %64)
  %66 = load i32, i32* %8, align 4
  %67 = call i64 @klsi_105_status2linestate(i32 %66)
  %68 = load i64*, i64** %5, align 8
  store i64 %67, i64* %68, align 8
  br label %69

69:                                               ; preds = %54, %53
  %70 = load i32*, i32** %7, align 8
  %71 = call i32 @kfree(i32* %70)
  %72 = load i32, i32* %6, align 4
  store i32 %72, i32* %3, align 4
  br label %73

73:                                               ; preds = %69, %14
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i32 @usb_control_msg(i32, i32, i32, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @usb_rcvctrlpipe(i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @get_unaligned_le16(i32*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i32) #1

declare dso_local i64 @klsi_105_status2linestate(i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
