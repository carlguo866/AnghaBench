; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_renesas_usb3.c_usb3_usb2_pullup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_renesas_usb3.c_usb3_usb2_pullup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.renesas_usb3 = type { i64 }

@USB20_CON_B2_PUE = common dso_local global i32 0, align 4
@USB20_CON_B2_CONNECT = common dso_local global i32 0, align 4
@USB3_USB20_CON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.renesas_usb3*, i32)* @usb3_usb2_pullup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usb3_usb2_pullup(%struct.renesas_usb3* %0, i32 %1) #0 {
  %3 = alloca %struct.renesas_usb3*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.renesas_usb3* %0, %struct.renesas_usb3** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* @USB20_CON_B2_PUE, align 4
  %7 = load i32, i32* @USB20_CON_B2_CONNECT, align 4
  %8 = or i32 %6, %7
  store i32 %8, i32* %5, align 4
  %9 = load %struct.renesas_usb3*, %struct.renesas_usb3** %3, align 8
  %10 = getelementptr inbounds %struct.renesas_usb3, %struct.renesas_usb3* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %21

13:                                               ; preds = %2
  %14 = load i32, i32* %4, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %13
  %17 = load %struct.renesas_usb3*, %struct.renesas_usb3** %3, align 8
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @USB3_USB20_CON, align 4
  %20 = call i32 @usb3_set_bit(%struct.renesas_usb3* %17, i32 %18, i32 %19)
  br label %26

21:                                               ; preds = %13, %2
  %22 = load %struct.renesas_usb3*, %struct.renesas_usb3** %3, align 8
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @USB3_USB20_CON, align 4
  %25 = call i32 @usb3_clear_bit(%struct.renesas_usb3* %22, i32 %23, i32 %24)
  br label %26

26:                                               ; preds = %21, %16
  ret void
}

declare dso_local i32 @usb3_set_bit(%struct.renesas_usb3*, i32, i32) #1

declare dso_local i32 @usb3_clear_bit(%struct.renesas_usb3*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
