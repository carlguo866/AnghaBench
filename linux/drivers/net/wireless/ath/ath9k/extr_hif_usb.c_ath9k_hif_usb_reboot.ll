; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_hif_usb.c_ath9k_hif_usb_reboot.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath9k/extr_hif_usb.c_ath9k_hif_usb_reboot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@USB_REG_OUT_PIPE = common dso_local global i32 0, align 4
@USB_MSG_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"ath9k_htc: USB reboot failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_device*)* @ath9k_hif_usb_reboot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath9k_hif_usb_reboot(%struct.usb_device* %0) #0 {
  %2 = alloca %struct.usb_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store %struct.usb_device* %0, %struct.usb_device** %2, align 8
  store i32 -1, i32* %3, align 4
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = call i8* @kmemdup(i32* %3, i32 4, i32 %6)
  store i8* %7, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = icmp ne i8* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %28

11:                                               ; preds = %1
  %12 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %13 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %14 = load i32, i32* @USB_REG_OUT_PIPE, align 4
  %15 = call i32 @usb_sndintpipe(%struct.usb_device* %13, i32 %14)
  %16 = load i8*, i8** %4, align 8
  %17 = load i32, i32* @USB_MSG_TIMEOUT, align 4
  %18 = call i32 @usb_interrupt_msg(%struct.usb_device* %12, i32 %15, i8* %16, i32 4, i32* null, i32 %17)
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %11
  %22 = load %struct.usb_device*, %struct.usb_device** %2, align 8
  %23 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %22, i32 0, i32 0
  %24 = call i32 @dev_err(i32* %23, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %25

25:                                               ; preds = %21, %11
  %26 = load i8*, i8** %4, align 8
  %27 = call i32 @kfree(i8* %26)
  br label %28

28:                                               ; preds = %25, %10
  ret void
}

declare dso_local i8* @kmemdup(i32*, i32, i32) #1

declare dso_local i32 @usb_interrupt_msg(%struct.usb_device*, i32, i8*, i32, i32*, i32) #1

declare dso_local i32 @usb_sndintpipe(%struct.usb_device*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
