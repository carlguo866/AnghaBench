; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/wusbcore/extr_devconnect.c_wusb_usb_ncb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/usb/wusbcore/extr_devconnect.c_wusb_usb_ncb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.notifier_block = type { i32 }

@NOTIFY_OK = common dso_local global i32 0, align 4
@NOTIFY_BAD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wusb_usb_ncb(%struct.notifier_block* %0, i64 %1, i8* %2) #0 {
  %4 = alloca %struct.notifier_block*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct.notifier_block* %0, %struct.notifier_block** %4, align 8
  store i64 %1, i64* %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = load i32, i32* @NOTIFY_OK, align 4
  store i32 %8, i32* %7, align 4
  %9 = load i64, i64* %5, align 8
  switch i64 %9, label %17 [
    i64 129, label %10
    i64 128, label %13
    i64 131, label %16
    i64 130, label %16
  ]

10:                                               ; preds = %3
  %11 = load i8*, i8** %6, align 8
  %12 = call i32 @wusb_dev_add_ncb(i8* %11)
  br label %20

13:                                               ; preds = %3
  %14 = load i8*, i8** %6, align 8
  %15 = call i32 @wusb_dev_rm_ncb(i8* %14)
  br label %20

16:                                               ; preds = %3, %3
  br label %20

17:                                               ; preds = %3
  %18 = call i32 @WARN_ON(i32 1)
  %19 = load i32, i32* @NOTIFY_BAD, align 4
  store i32 %19, i32* %7, align 4
  br label %20

20:                                               ; preds = %17, %16, %13, %10
  %21 = load i32, i32* %7, align 4
  ret i32 %21
}

declare dso_local i32 @wusb_dev_add_ncb(i8*) #1

declare dso_local i32 @wusb_dev_rm_ncb(i8*) #1

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
