; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/isp1760/extr_isp1760-udc.c_isp1760_udc_set_selfpowered.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/isp1760/extr_isp1760-udc.c_isp1760_udc_set_selfpowered.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_gadget = type { i32 }
%struct.isp1760_udc = type { i32 }

@USB_DEVICE_SELF_POWERED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_gadget*, i32)* @isp1760_udc_set_selfpowered to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isp1760_udc_set_selfpowered(%struct.usb_gadget* %0, i32 %1) #0 {
  %3 = alloca %struct.usb_gadget*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.isp1760_udc*, align 8
  store %struct.usb_gadget* %0, %struct.usb_gadget** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.usb_gadget*, %struct.usb_gadget** %3, align 8
  %7 = call %struct.isp1760_udc* @gadget_to_udc(%struct.usb_gadget* %6)
  store %struct.isp1760_udc* %7, %struct.isp1760_udc** %5, align 8
  %8 = load i32, i32* %4, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %17

10:                                               ; preds = %2
  %11 = load i32, i32* @USB_DEVICE_SELF_POWERED, align 4
  %12 = shl i32 1, %11
  %13 = load %struct.isp1760_udc*, %struct.isp1760_udc** %5, align 8
  %14 = getelementptr inbounds %struct.isp1760_udc, %struct.isp1760_udc* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = or i32 %15, %12
  store i32 %16, i32* %14, align 4
  br label %25

17:                                               ; preds = %2
  %18 = load i32, i32* @USB_DEVICE_SELF_POWERED, align 4
  %19 = shl i32 1, %18
  %20 = xor i32 %19, -1
  %21 = load %struct.isp1760_udc*, %struct.isp1760_udc** %5, align 8
  %22 = getelementptr inbounds %struct.isp1760_udc, %struct.isp1760_udc* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = and i32 %23, %20
  store i32 %24, i32* %22, align 4
  br label %25

25:                                               ; preds = %17, %10
  ret i32 0
}

declare dso_local %struct.isp1760_udc* @gadget_to_udc(%struct.usb_gadget*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
