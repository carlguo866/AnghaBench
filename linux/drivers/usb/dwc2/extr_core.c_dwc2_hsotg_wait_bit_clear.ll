; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/dwc2/extr_core.c_dwc2_hsotg_wait_bit_clear.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/dwc2/extr_core.c_dwc2_hsotg_wait_bit_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwc2_hsotg = type { i32 }

@ETIMEDOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dwc2_hsotg_wait_bit_clear(%struct.dwc2_hsotg* %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.dwc2_hsotg*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.dwc2_hsotg* %0, %struct.dwc2_hsotg** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 0, i64* %10, align 8
  br label %11

11:                                               ; preds = %25, %4
  %12 = load i64, i64* %10, align 8
  %13 = load i64, i64* %9, align 8
  %14 = icmp slt i64 %12, %13
  br i1 %14, label %15, label %28

15:                                               ; preds = %11
  %16 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %6, align 8
  %17 = load i64, i64* %7, align 8
  %18 = call i64 @dwc2_readl(%struct.dwc2_hsotg* %16, i64 %17)
  %19 = load i64, i64* %8, align 8
  %20 = and i64 %18, %19
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %15
  store i32 0, i32* %5, align 4
  br label %31

23:                                               ; preds = %15
  %24 = call i32 @udelay(i32 1)
  br label %25

25:                                               ; preds = %23
  %26 = load i64, i64* %10, align 8
  %27 = add nsw i64 %26, 1
  store i64 %27, i64* %10, align 8
  br label %11

28:                                               ; preds = %11
  %29 = load i32, i32* @ETIMEDOUT, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %5, align 4
  br label %31

31:                                               ; preds = %28, %22
  %32 = load i32, i32* %5, align 4
  ret i32 %32
}

declare dso_local i64 @dwc2_readl(%struct.dwc2_hsotg*, i64) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
