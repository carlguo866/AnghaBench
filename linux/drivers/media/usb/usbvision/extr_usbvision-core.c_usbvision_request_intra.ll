; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/usbvision/extr_usbvision-core.c_usbvision_request_intra.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/usbvision/extr_usbvision-core.c_usbvision_request_intra.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_usbvision = type { i32 }

@DBG_IRQ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@USBVISION_FORCE_INTRA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_usbvision*)* @usbvision_request_intra to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usbvision_request_intra(%struct.usb_usbvision* %0) #0 {
  %2 = alloca %struct.usb_usbvision*, align 8
  %3 = alloca [1 x i8], align 1
  store %struct.usb_usbvision* %0, %struct.usb_usbvision** %2, align 8
  %4 = load i32, i32* @DBG_IRQ, align 4
  %5 = call i32 @PDEBUG(i32 %4, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %6 = load %struct.usb_usbvision*, %struct.usb_usbvision** %2, align 8
  %7 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %6, i32 0, i32 0
  store i32 1, i32* %7, align 4
  %8 = getelementptr inbounds [1 x i8], [1 x i8]* %3, i64 0, i64 0
  store i8 1, i8* %8, align 1
  %9 = load %struct.usb_usbvision*, %struct.usb_usbvision** %2, align 8
  %10 = load i32, i32* @USBVISION_FORCE_INTRA, align 4
  %11 = getelementptr inbounds [1 x i8], [1 x i8]* %3, i64 0, i64 0
  %12 = call i32 @usbvision_write_reg_irq(%struct.usb_usbvision* %9, i32 %10, i8* %11, i32 1)
  ret i32 0
}

declare dso_local i32 @PDEBUG(i32, i8*) #1

declare dso_local i32 @usbvision_write_reg_irq(%struct.usb_usbvision*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
