; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_mcs7830.c_mcs7830_get_regs_len.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_mcs7830.c_mcs7830_get_regs_len.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.usbnet = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @mcs7830_get_regs_len to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mcs7830_get_regs_len(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.usbnet*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %5 = load %struct.net_device*, %struct.net_device** %3, align 8
  %6 = call %struct.usbnet* @netdev_priv(%struct.net_device* %5)
  store %struct.usbnet* %6, %struct.usbnet** %4, align 8
  %7 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %8 = call i32 @mcs7830_get_rev(%struct.usbnet* %7)
  switch i32 %8, label %11 [
    i32 1, label %9
    i32 2, label %10
  ]

9:                                                ; preds = %1
  store i32 21, i32* %2, align 4
  br label %12

10:                                               ; preds = %1
  store i32 32, i32* %2, align 4
  br label %12

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %12

12:                                               ; preds = %11, %10, %9
  %13 = load i32, i32* %2, align 4
  ret i32 %13
}

declare dso_local %struct.usbnet* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @mcs7830_get_rev(%struct.usbnet*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
