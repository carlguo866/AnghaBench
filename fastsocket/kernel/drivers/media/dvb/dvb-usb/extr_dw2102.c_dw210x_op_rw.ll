; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-usb/extr_dw2102.c_dw210x_op_rw.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-usb/extr_dw2102.c_dw210x_op_rw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_device = type { i32 }

@DW210X_READ_MSG = common dso_local global i32 0, align 4
@USB_DIR_IN = common dso_local global i32 0, align 4
@USB_DIR_OUT = common dso_local global i32 0, align 4
@DW210X_WRITE_MSG = common dso_local global i32 0, align 4
@USB_TYPE_VENDOR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_device*, i32, i32, i32, i32*, i32, i32)* @dw210x_op_rw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dw210x_op_rw(%struct.usb_device* %0, i32 %1, i32 %2, i32 %3, i32* %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.usb_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.usb_device* %0, %struct.usb_device** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %20 = load i32, i32* %13, align 4
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %16, align 8
  %23 = alloca i32, i64 %21, align 16
  store i64 %21, i64* %17, align 8
  %24 = load i32, i32* %14, align 4
  %25 = load i32, i32* @DW210X_READ_MSG, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %7
  %28 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %29 = call i32 @usb_rcvctrlpipe(%struct.usb_device* %28, i32 0)
  br label %33

30:                                               ; preds = %7
  %31 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %32 = call i32 @usb_sndctrlpipe(%struct.usb_device* %31, i32 0)
  br label %33

33:                                               ; preds = %30, %27
  %34 = phi i32 [ %29, %27 ], [ %32, %30 ]
  store i32 %34, i32* %18, align 4
  %35 = load i32, i32* %14, align 4
  %36 = load i32, i32* @DW210X_READ_MSG, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %33
  %39 = load i32, i32* @USB_DIR_IN, align 4
  br label %42

40:                                               ; preds = %33
  %41 = load i32, i32* @USB_DIR_OUT, align 4
  br label %42

42:                                               ; preds = %40, %38
  %43 = phi i32 [ %39, %38 ], [ %41, %40 ]
  store i32 %43, i32* %19, align 4
  %44 = load i32, i32* %14, align 4
  %45 = load i32, i32* @DW210X_WRITE_MSG, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %51

47:                                               ; preds = %42
  %48 = load i32*, i32** %12, align 8
  %49 = load i32, i32* %13, align 4
  %50 = call i32 @memcpy(i32* %23, i32* %48, i32 %49)
  br label %51

51:                                               ; preds = %47, %42
  %52 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %53 = load i32, i32* %18, align 4
  %54 = load i32, i32* %9, align 4
  %55 = load i32, i32* %19, align 4
  %56 = load i32, i32* @USB_TYPE_VENDOR, align 4
  %57 = or i32 %55, %56
  %58 = load i32, i32* %10, align 4
  %59 = load i32, i32* %11, align 4
  %60 = load i32, i32* %13, align 4
  %61 = call i32 @usb_control_msg(%struct.usb_device* %52, i32 %53, i32 %54, i32 %57, i32 %58, i32 %59, i32* %23, i32 %60, i32 2000)
  store i32 %61, i32* %15, align 4
  %62 = load i32, i32* %14, align 4
  %63 = load i32, i32* @DW210X_READ_MSG, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %69

65:                                               ; preds = %51
  %66 = load i32*, i32** %12, align 8
  %67 = load i32, i32* %13, align 4
  %68 = call i32 @memcpy(i32* %66, i32* %23, i32 %67)
  br label %69

69:                                               ; preds = %65, %51
  %70 = load i32, i32* %15, align 4
  %71 = load i8*, i8** %16, align 8
  call void @llvm.stackrestore(i8* %71)
  ret i32 %70
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @usb_rcvctrlpipe(%struct.usb_device*, i32) #2

declare dso_local i32 @usb_sndctrlpipe(%struct.usb_device*, i32) #2

declare dso_local i32 @memcpy(i32*, i32*, i32) #2

declare dso_local i32 @usb_control_msg(%struct.usb_device*, i32, i32, i32, i32, i32, i32*, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
