; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_s3c-hsudc.c_s3c_hsudc_vbus_draw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_s3c-hsudc.c_s3c_hsudc_vbus_draw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_gadget = type { i32 }
%struct.s3c_hsudc = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_gadget*, i32)* @s3c_hsudc_vbus_draw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s3c_hsudc_vbus_draw(%struct.usb_gadget* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_gadget*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.s3c_hsudc*, align 8
  store %struct.usb_gadget* %0, %struct.usb_gadget** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.usb_gadget*, %struct.usb_gadget** %4, align 8
  %8 = call %struct.s3c_hsudc* @to_hsudc(%struct.usb_gadget* %7)
  store %struct.s3c_hsudc* %8, %struct.s3c_hsudc** %6, align 8
  %9 = load %struct.s3c_hsudc*, %struct.s3c_hsudc** %6, align 8
  %10 = icmp ne %struct.s3c_hsudc* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* @ENODEV, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %3, align 4
  br label %29

14:                                               ; preds = %2
  %15 = load %struct.s3c_hsudc*, %struct.s3c_hsudc** %6, align 8
  %16 = getelementptr inbounds %struct.s3c_hsudc, %struct.s3c_hsudc* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @IS_ERR_OR_NULL(i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %26, label %20

20:                                               ; preds = %14
  %21 = load %struct.s3c_hsudc*, %struct.s3c_hsudc** %6, align 8
  %22 = getelementptr inbounds %struct.s3c_hsudc, %struct.s3c_hsudc* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @usb_phy_set_power(i32 %23, i32 %24)
  store i32 %25, i32* %3, align 4
  br label %29

26:                                               ; preds = %14
  %27 = load i32, i32* @EOPNOTSUPP, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %29

29:                                               ; preds = %26, %20, %11
  %30 = load i32, i32* %3, align 4
  ret i32 %30
}

declare dso_local %struct.s3c_hsudc* @to_hsudc(%struct.usb_gadget*) #1

declare dso_local i32 @IS_ERR_OR_NULL(i32) #1

declare dso_local i32 @usb_phy_set_power(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
