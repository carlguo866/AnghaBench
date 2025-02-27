; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/usb/peak_usb/extr_pcan_usb_pro.c_pcan_usb_pro_handle_ts.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/usb/peak_usb/extr_pcan_usb_pro.c_pcan_usb_pro_handle_ts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcan_usb_pro_interface = type { i64, i32 }
%struct.pcan_usb_pro_rxts = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pcan_usb_pro_interface*, %struct.pcan_usb_pro_rxts*)* @pcan_usb_pro_handle_ts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pcan_usb_pro_handle_ts(%struct.pcan_usb_pro_interface* %0, %struct.pcan_usb_pro_rxts* %1) #0 {
  %3 = alloca %struct.pcan_usb_pro_interface*, align 8
  %4 = alloca %struct.pcan_usb_pro_rxts*, align 8
  store %struct.pcan_usb_pro_interface* %0, %struct.pcan_usb_pro_interface** %3, align 8
  store %struct.pcan_usb_pro_rxts* %1, %struct.pcan_usb_pro_rxts** %4, align 8
  %5 = load %struct.pcan_usb_pro_interface*, %struct.pcan_usb_pro_interface** %3, align 8
  %6 = getelementptr inbounds %struct.pcan_usb_pro_interface, %struct.pcan_usb_pro_interface* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = icmp sgt i64 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %2
  %10 = load %struct.pcan_usb_pro_interface*, %struct.pcan_usb_pro_interface** %3, align 8
  %11 = getelementptr inbounds %struct.pcan_usb_pro_interface, %struct.pcan_usb_pro_interface* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = add nsw i64 %12, -1
  store i64 %13, i64* %11, align 8
  br label %24

14:                                               ; preds = %2
  %15 = load %struct.pcan_usb_pro_interface*, %struct.pcan_usb_pro_interface** %3, align 8
  %16 = getelementptr inbounds %struct.pcan_usb_pro_interface, %struct.pcan_usb_pro_interface* %15, i32 0, i32 1
  %17 = load %struct.pcan_usb_pro_rxts*, %struct.pcan_usb_pro_rxts** %4, align 8
  %18 = getelementptr inbounds %struct.pcan_usb_pro_rxts, %struct.pcan_usb_pro_rxts* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @le32_to_cpu(i32 %21)
  %23 = call i32 @peak_usb_set_ts_now(i32* %16, i32 %22)
  br label %24

24:                                               ; preds = %14, %9
  ret void
}

declare dso_local i32 @peak_usb_set_ts_now(i32*, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
