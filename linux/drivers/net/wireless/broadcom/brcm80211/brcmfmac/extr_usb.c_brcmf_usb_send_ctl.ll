; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_usb.c_brcmf_usb_send_ctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmfmac/extr_usb.c_brcmf_usb_send_ctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcmf_usbdev_info = type { %struct.TYPE_5__*, %struct.TYPE_4__, i32, i32, i64, i64 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@USB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"Enter\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@brcmf_usb_ctlwrite_complete = common dso_local global i64 0, align 8
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"usb_submit_urb failed %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.brcmf_usbdev_info*, i32*, i32)* @brcmf_usb_send_ctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @brcmf_usb_send_ctl(%struct.brcmf_usbdev_info* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.brcmf_usbdev_info*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.brcmf_usbdev_info* %0, %struct.brcmf_usbdev_info** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* @USB, align 4
  %11 = call i32 @brcmf_dbg(i32 %10, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.brcmf_usbdev_info*, %struct.brcmf_usbdev_info** %5, align 8
  %13 = icmp eq %struct.brcmf_usbdev_info* %12, null
  br i1 %13, label %25, label %14

14:                                               ; preds = %3
  %15 = load i32*, i32** %6, align 8
  %16 = icmp eq i32* %15, null
  br i1 %16, label %25, label %17

17:                                               ; preds = %14
  %18 = load i32, i32* %7, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %17
  %21 = load %struct.brcmf_usbdev_info*, %struct.brcmf_usbdev_info** %5, align 8
  %22 = getelementptr inbounds %struct.brcmf_usbdev_info, %struct.brcmf_usbdev_info* %21, i32 0, i32 0
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %22, align 8
  %24 = icmp eq %struct.TYPE_5__* %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %20, %17, %14, %3
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %73

28:                                               ; preds = %20
  %29 = load i32, i32* %7, align 4
  store i32 %29, i32* %9, align 4
  %30 = call i32 @cpu_to_le16p(i32* %9)
  %31 = load %struct.brcmf_usbdev_info*, %struct.brcmf_usbdev_info** %5, align 8
  %32 = getelementptr inbounds %struct.brcmf_usbdev_info, %struct.brcmf_usbdev_info* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  store i32 %30, i32* %33, align 8
  %34 = load i32, i32* %9, align 4
  %35 = load %struct.brcmf_usbdev_info*, %struct.brcmf_usbdev_info** %5, align 8
  %36 = getelementptr inbounds %struct.brcmf_usbdev_info, %struct.brcmf_usbdev_info* %35, i32 0, i32 0
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  store i32 %34, i32* %38, align 4
  %39 = load %struct.brcmf_usbdev_info*, %struct.brcmf_usbdev_info** %5, align 8
  %40 = getelementptr inbounds %struct.brcmf_usbdev_info, %struct.brcmf_usbdev_info* %39, i32 0, i32 5
  store i64 0, i64* %40, align 8
  %41 = load %struct.brcmf_usbdev_info*, %struct.brcmf_usbdev_info** %5, align 8
  %42 = getelementptr inbounds %struct.brcmf_usbdev_info, %struct.brcmf_usbdev_info* %41, i32 0, i32 4
  store i64 0, i64* %42, align 8
  %43 = load %struct.brcmf_usbdev_info*, %struct.brcmf_usbdev_info** %5, align 8
  %44 = getelementptr inbounds %struct.brcmf_usbdev_info, %struct.brcmf_usbdev_info* %43, i32 0, i32 0
  %45 = load %struct.TYPE_5__*, %struct.TYPE_5__** %44, align 8
  %46 = load %struct.brcmf_usbdev_info*, %struct.brcmf_usbdev_info** %5, align 8
  %47 = getelementptr inbounds %struct.brcmf_usbdev_info, %struct.brcmf_usbdev_info* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.brcmf_usbdev_info*, %struct.brcmf_usbdev_info** %5, align 8
  %50 = getelementptr inbounds %struct.brcmf_usbdev_info, %struct.brcmf_usbdev_info* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.brcmf_usbdev_info*, %struct.brcmf_usbdev_info** %5, align 8
  %53 = getelementptr inbounds %struct.brcmf_usbdev_info, %struct.brcmf_usbdev_info* %52, i32 0, i32 1
  %54 = bitcast %struct.TYPE_4__* %53 to i8*
  %55 = load i32*, i32** %6, align 8
  %56 = load i32, i32* %9, align 4
  %57 = load i64, i64* @brcmf_usb_ctlwrite_complete, align 8
  %58 = trunc i64 %57 to i32
  %59 = load %struct.brcmf_usbdev_info*, %struct.brcmf_usbdev_info** %5, align 8
  %60 = call i32 @usb_fill_control_urb(%struct.TYPE_5__* %45, i32 %48, i32 %51, i8* %54, i32* %55, i32 %56, i32 %58, %struct.brcmf_usbdev_info* %59)
  %61 = load %struct.brcmf_usbdev_info*, %struct.brcmf_usbdev_info** %5, align 8
  %62 = getelementptr inbounds %struct.brcmf_usbdev_info, %struct.brcmf_usbdev_info* %61, i32 0, i32 0
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %62, align 8
  %64 = load i32, i32* @GFP_ATOMIC, align 4
  %65 = call i32 @usb_submit_urb(%struct.TYPE_5__* %63, i32 %64)
  store i32 %65, i32* %8, align 4
  %66 = load i32, i32* %8, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %28
  %69 = load i32, i32* %8, align 4
  %70 = call i32 @brcmf_err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %69)
  br label %71

71:                                               ; preds = %68, %28
  %72 = load i32, i32* %8, align 4
  store i32 %72, i32* %4, align 4
  br label %73

73:                                               ; preds = %71, %25
  %74 = load i32, i32* %4, align 4
  ret i32 %74
}

declare dso_local i32 @brcmf_dbg(i32, i8*) #1

declare dso_local i32 @cpu_to_le16p(i32*) #1

declare dso_local i32 @usb_fill_control_urb(%struct.TYPE_5__*, i32, i32, i8*, i32*, i32, i32, %struct.brcmf_usbdev_info*) #1

declare dso_local i32 @usb_submit_urb(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @brcmf_err(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
