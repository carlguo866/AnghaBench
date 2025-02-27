; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-viperboard.c_vprbrd_gpiob_setdir.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpio/extr_gpio-viperboard.c_vprbrd_gpiob_setdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vprbrd = type { i32, i64 }
%struct.vprbrd_gpiob_msg = type { i8*, i8*, i32 }

@VPRBRD_GPIOB_CMD_SETDIR = common dso_local global i32 0, align 4
@VPRBRD_USB_REQUEST_GPIOB = common dso_local global i32 0, align 4
@VPRBRD_USB_TYPE_OUT = common dso_local global i32 0, align 4
@VPRBRD_USB_TIMEOUT_MS = common dso_local global i32 0, align 4
@EREMOTEIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vprbrd*, i32, i32)* @vprbrd_gpiob_setdir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vprbrd_gpiob_setdir(%struct.vprbrd* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.vprbrd*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.vprbrd_gpiob_msg*, align 8
  %9 = alloca i32, align 4
  store %struct.vprbrd* %0, %struct.vprbrd** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load %struct.vprbrd*, %struct.vprbrd** %5, align 8
  %11 = getelementptr inbounds %struct.vprbrd, %struct.vprbrd* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.vprbrd_gpiob_msg*
  store %struct.vprbrd_gpiob_msg* %13, %struct.vprbrd_gpiob_msg** %8, align 8
  %14 = load i32, i32* @VPRBRD_GPIOB_CMD_SETDIR, align 4
  %15 = load %struct.vprbrd_gpiob_msg*, %struct.vprbrd_gpiob_msg** %8, align 8
  %16 = getelementptr inbounds %struct.vprbrd_gpiob_msg, %struct.vprbrd_gpiob_msg* %15, i32 0, i32 2
  store i32 %14, i32* %16, align 8
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* %6, align 4
  %19 = shl i32 %17, %18
  %20 = call i8* @cpu_to_be16(i32 %19)
  %21 = load %struct.vprbrd_gpiob_msg*, %struct.vprbrd_gpiob_msg** %8, align 8
  %22 = getelementptr inbounds %struct.vprbrd_gpiob_msg, %struct.vprbrd_gpiob_msg* %21, i32 0, i32 1
  store i8* %20, i8** %22, align 8
  %23 = load i32, i32* %6, align 4
  %24 = shl i32 1, %23
  %25 = call i8* @cpu_to_be16(i32 %24)
  %26 = load %struct.vprbrd_gpiob_msg*, %struct.vprbrd_gpiob_msg** %8, align 8
  %27 = getelementptr inbounds %struct.vprbrd_gpiob_msg, %struct.vprbrd_gpiob_msg* %26, i32 0, i32 0
  store i8* %25, i8** %27, align 8
  %28 = load %struct.vprbrd*, %struct.vprbrd** %5, align 8
  %29 = getelementptr inbounds %struct.vprbrd, %struct.vprbrd* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.vprbrd*, %struct.vprbrd** %5, align 8
  %32 = getelementptr inbounds %struct.vprbrd, %struct.vprbrd* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @usb_sndctrlpipe(i32 %33, i32 0)
  %35 = load i32, i32* @VPRBRD_USB_REQUEST_GPIOB, align 4
  %36 = load i32, i32* @VPRBRD_USB_TYPE_OUT, align 4
  %37 = load %struct.vprbrd_gpiob_msg*, %struct.vprbrd_gpiob_msg** %8, align 8
  %38 = load i32, i32* @VPRBRD_USB_TIMEOUT_MS, align 4
  %39 = call i32 @usb_control_msg(i32 %30, i32 %34, i32 %35, i32 %36, i32 0, i32 0, %struct.vprbrd_gpiob_msg* %37, i32 24, i32 %38)
  store i32 %39, i32* %9, align 4
  %40 = load i32, i32* %9, align 4
  %41 = sext i32 %40 to i64
  %42 = icmp ne i64 %41, 24
  br i1 %42, label %43, label %46

43:                                               ; preds = %3
  %44 = load i32, i32* @EREMOTEIO, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %4, align 4
  br label %47

46:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %47

47:                                               ; preds = %46, %43
  %48 = load i32, i32* %4, align 4
  ret i32 %48
}

declare dso_local i8* @cpu_to_be16(i32) #1

declare dso_local i32 @usb_control_msg(i32, i32, i32, i32, i32, i32, %struct.vprbrd_gpiob_msg*, i32, i32) #1

declare dso_local i32 @usb_sndctrlpipe(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
