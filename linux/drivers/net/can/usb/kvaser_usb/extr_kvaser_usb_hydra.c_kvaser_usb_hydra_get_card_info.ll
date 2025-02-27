; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/usb/kvaser_usb/extr_kvaser_usb_hydra.c_kvaser_usb_hydra_get_card_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/usb/kvaser_usb/extr_kvaser_usb_hydra.c_kvaser_usb_hydra_get_card_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvaser_usb = type { i32 }
%struct.kvaser_cmd = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@CMD_GET_CARD_INFO_REQ = common dso_local global i32 0, align 4
@CMD_GET_CARD_INFO_RESP = common dso_local global i32 0, align 4
@KVASER_USB_MAX_NET_DEVICES = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvaser_usb*)* @kvaser_usb_hydra_get_card_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kvaser_usb_hydra_get_card_info(%struct.kvaser_usb* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.kvaser_usb*, align 8
  %4 = alloca %struct.kvaser_cmd, align 4
  %5 = alloca i32, align 4
  store %struct.kvaser_usb* %0, %struct.kvaser_usb** %3, align 8
  %6 = load %struct.kvaser_usb*, %struct.kvaser_usb** %3, align 8
  %7 = load i32, i32* @CMD_GET_CARD_INFO_REQ, align 4
  %8 = call i32 @kvaser_usb_hydra_send_simple_cmd(%struct.kvaser_usb* %6, i32 %7, i32 -1)
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i32, i32* %5, align 4
  store i32 %12, i32* %2, align 4
  br label %37

13:                                               ; preds = %1
  %14 = call i32 @memset(%struct.kvaser_cmd* %4, i32 0, i32 4)
  %15 = load %struct.kvaser_usb*, %struct.kvaser_usb** %3, align 8
  %16 = load i32, i32* @CMD_GET_CARD_INFO_RESP, align 4
  %17 = call i32 @kvaser_usb_hydra_wait_cmd(%struct.kvaser_usb* %15, i32 %16, %struct.kvaser_cmd* %4)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %13
  %21 = load i32, i32* %5, align 4
  store i32 %21, i32* %2, align 4
  br label %37

22:                                               ; preds = %13
  %23 = getelementptr inbounds %struct.kvaser_cmd, %struct.kvaser_cmd* %4, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.kvaser_usb*, %struct.kvaser_usb** %3, align 8
  %27 = getelementptr inbounds %struct.kvaser_usb, %struct.kvaser_usb* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 4
  %28 = load %struct.kvaser_usb*, %struct.kvaser_usb** %3, align 8
  %29 = getelementptr inbounds %struct.kvaser_usb, %struct.kvaser_usb* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @KVASER_USB_MAX_NET_DEVICES, align 4
  %32 = icmp sgt i32 %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %22
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %2, align 4
  br label %37

36:                                               ; preds = %22
  store i32 0, i32* %2, align 4
  br label %37

37:                                               ; preds = %36, %33, %20, %11
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local i32 @kvaser_usb_hydra_send_simple_cmd(%struct.kvaser_usb*, i32, i32) #1

declare dso_local i32 @memset(%struct.kvaser_cmd*, i32, i32) #1

declare dso_local i32 @kvaser_usb_hydra_wait_cmd(%struct.kvaser_usb*, i32, %struct.kvaser_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
