; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_usbgecko.c_usb_isgeckoalive.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libogc/extr_usbgecko.c_usb_isgeckoalive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EXI_DEVICE_0 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @usb_isgeckoalive(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i64 0, i64* %4, align 8
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* @EXI_DEVICE_0, align 4
  %9 = call i64 @EXI_GetID(i32 %7, i32 %8, i64* %4)
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %32

12:                                               ; preds = %1
  %13 = load i64, i64* %4, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %12
  store i32 0, i32* %2, align 4
  br label %32

16:                                               ; preds = %12
  %17 = load i32, i32* %3, align 4
  %18 = call i32 @__usbgecko_exi_wait(i32 %17)
  store i32 36864, i32* %6, align 4
  %19 = load i32, i32* %3, align 4
  %20 = call i32 @__send_command(i32 %19, i32* %6)
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp eq i32 %21, 1
  br i1 %22, label %23, label %28

23:                                               ; preds = %16
  %24 = load i32, i32* %6, align 4
  %25 = and i32 %24, 1136
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %23
  store i32 0, i32* %5, align 4
  br label %28

28:                                               ; preds = %27, %23, %16
  %29 = load i32, i32* %3, align 4
  %30 = call i32 @EXI_Unlock(i32 %29)
  %31 = load i32, i32* %5, align 4
  store i32 %31, i32* %2, align 4
  br label %32

32:                                               ; preds = %28, %15, %11
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

declare dso_local i64 @EXI_GetID(i32, i32, i64*) #1

declare dso_local i32 @__usbgecko_exi_wait(i32) #1

declare dso_local i32 @__send_command(i32, i32*) #1

declare dso_local i32 @EXI_Unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
