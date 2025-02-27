; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/phy/extr_phy-generic.c_nop_set_peripheral.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/phy/extr_phy-generic.c_nop_set_peripheral.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_otg = type { i64, %struct.usb_gadget*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.usb_gadget = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@OTG_STATE_B_PERIPHERAL = common dso_local global i64 0, align 8
@USB_EVENT_VBUS = common dso_local global i32 0, align 4
@OTG_STATE_B_IDLE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_otg*, %struct.usb_gadget*)* @nop_set_peripheral to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nop_set_peripheral(%struct.usb_otg* %0, %struct.usb_gadget* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_otg*, align 8
  %5 = alloca %struct.usb_gadget*, align 8
  store %struct.usb_otg* %0, %struct.usb_otg** %4, align 8
  store %struct.usb_gadget* %1, %struct.usb_gadget** %5, align 8
  %6 = load %struct.usb_otg*, %struct.usb_otg** %4, align 8
  %7 = icmp ne %struct.usb_otg* %6, null
  br i1 %7, label %11, label %8

8:                                                ; preds = %2
  %9 = load i32, i32* @ENODEV, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %3, align 4
  br label %43

11:                                               ; preds = %2
  %12 = load %struct.usb_gadget*, %struct.usb_gadget** %5, align 8
  %13 = icmp ne %struct.usb_gadget* %12, null
  br i1 %13, label %19, label %14

14:                                               ; preds = %11
  %15 = load %struct.usb_otg*, %struct.usb_otg** %4, align 8
  %16 = getelementptr inbounds %struct.usb_otg, %struct.usb_otg* %15, i32 0, i32 1
  store %struct.usb_gadget* null, %struct.usb_gadget** %16, align 8
  %17 = load i32, i32* @ENODEV, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %43

19:                                               ; preds = %11
  %20 = load %struct.usb_gadget*, %struct.usb_gadget** %5, align 8
  %21 = load %struct.usb_otg*, %struct.usb_otg** %4, align 8
  %22 = getelementptr inbounds %struct.usb_otg, %struct.usb_otg* %21, i32 0, i32 1
  store %struct.usb_gadget* %20, %struct.usb_gadget** %22, align 8
  %23 = load %struct.usb_otg*, %struct.usb_otg** %4, align 8
  %24 = getelementptr inbounds %struct.usb_otg, %struct.usb_otg* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @OTG_STATE_B_PERIPHERAL, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %38

28:                                               ; preds = %19
  %29 = load %struct.usb_otg*, %struct.usb_otg** %4, align 8
  %30 = getelementptr inbounds %struct.usb_otg, %struct.usb_otg* %29, i32 0, i32 2
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* @USB_EVENT_VBUS, align 4
  %34 = load %struct.usb_otg*, %struct.usb_otg** %4, align 8
  %35 = getelementptr inbounds %struct.usb_otg, %struct.usb_otg* %34, i32 0, i32 1
  %36 = load %struct.usb_gadget*, %struct.usb_gadget** %35, align 8
  %37 = call i32 @atomic_notifier_call_chain(i32* %32, i32 %33, %struct.usb_gadget* %36)
  br label %42

38:                                               ; preds = %19
  %39 = load i64, i64* @OTG_STATE_B_IDLE, align 8
  %40 = load %struct.usb_otg*, %struct.usb_otg** %4, align 8
  %41 = getelementptr inbounds %struct.usb_otg, %struct.usb_otg* %40, i32 0, i32 0
  store i64 %39, i64* %41, align 8
  br label %42

42:                                               ; preds = %38, %28
  store i32 0, i32* %3, align 4
  br label %43

43:                                               ; preds = %42, %14, %8
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local i32 @atomic_notifier_call_chain(i32*, i32, %struct.usb_gadget*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
