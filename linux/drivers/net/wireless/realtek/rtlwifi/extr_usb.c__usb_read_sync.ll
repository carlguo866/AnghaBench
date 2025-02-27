; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/extr_usb.c__usb_read_sync.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/extr_usb.c__usb_read_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtl_priv = type { i64, %struct.TYPE_3__, i32*, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { %struct.device* }
%struct.device = type { i32 }
%struct.usb_device = type { i32 }

@RTL_USB_MAX_RX_COUNT = common dso_local global i64 0, align 8
@REALTEK_USB_VENQT_CMD_REQ = common dso_local global i32 0, align 4
@REALTEK_USB_VENQT_CMD_IDX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.rtl_priv*, i64, i64)* @_usb_read_sync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @_usb_read_sync(%struct.rtl_priv* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.rtl_priv*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca %struct.usb_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  store %struct.rtl_priv* %0, %struct.rtl_priv** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %14 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %15 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %14, i32 0, i32 3
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load %struct.device*, %struct.device** %16, align 8
  store %struct.device* %17, %struct.device** %7, align 8
  %18 = load %struct.device*, %struct.device** %7, align 8
  %19 = call %struct.usb_device* @to_usb_device(%struct.device* %18)
  store %struct.usb_device* %19, %struct.usb_device** %8, align 8
  %20 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %21 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i64, i64* %13, align 8
  %24 = call i32 @spin_lock_irqsave(i32* %22, i64 %23)
  %25 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %26 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = add nsw i64 %27, 1
  store i64 %28, i64* %26, align 8
  %29 = load i64, i64* @RTL_USB_MAX_RX_COUNT, align 8
  %30 = icmp sge i64 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %3
  %32 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %33 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %32, i32 0, i32 0
  store i64 0, i64* %33, align 8
  br label %34

34:                                               ; preds = %31, %3
  %35 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %36 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %35, i32 0, i32 2
  %37 = load i32*, i32** %36, align 8
  %38 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %39 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = getelementptr inbounds i32, i32* %37, i64 %40
  store i32* %41, i32** %12, align 8
  %42 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %43 = getelementptr inbounds %struct.rtl_priv, %struct.rtl_priv* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i64, i64* %13, align 8
  %46 = call i32 @spin_unlock_irqrestore(i32* %44, i64 %45)
  %47 = load i32, i32* @REALTEK_USB_VENQT_CMD_REQ, align 4
  store i32 %47, i32* %9, align 4
  %48 = load i64, i64* @REALTEK_USB_VENQT_CMD_IDX, align 8
  store i64 %48, i64* %11, align 8
  %49 = load i64, i64* %5, align 8
  store i64 %49, i64* %10, align 8
  %50 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %51 = load i32, i32* %9, align 4
  %52 = load i64, i64* %10, align 8
  %53 = load i64, i64* %11, align 8
  %54 = load i32*, i32** %12, align 8
  %55 = load i64, i64* %6, align 8
  %56 = call i32 @_usbctrl_vendorreq_sync_read(%struct.usb_device* %50, i32 %51, i64 %52, i64 %53, i32* %54, i64 %55)
  %57 = load i32*, i32** %12, align 8
  %58 = load i32, i32* %57, align 4
  %59 = call i64 @le32_to_cpu(i32 %58)
  ret i64 %59
}

declare dso_local %struct.usb_device* @to_usb_device(%struct.device*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @_usbctrl_vendorreq_sync_read(%struct.usb_device*, i32, i64, i64, i32*, i64) #1

declare dso_local i64 @le32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
