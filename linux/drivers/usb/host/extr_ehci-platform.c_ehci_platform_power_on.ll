; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_ehci-platform.c_ehci_platform_power_on.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_ehci-platform.c_ehci_platform_power_on.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.usb_hcd = type { i32 }
%struct.ehci_platform_priv = type { i64* }

@EHCI_MAX_CLKS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @ehci_platform_power_on to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ehci_platform_power_on(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.usb_hcd*, align 8
  %5 = alloca %struct.ehci_platform_priv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = call %struct.usb_hcd* @platform_get_drvdata(%struct.platform_device* %8)
  store %struct.usb_hcd* %9, %struct.usb_hcd** %4, align 8
  %10 = load %struct.usb_hcd*, %struct.usb_hcd** %4, align 8
  %11 = call %struct.ehci_platform_priv* @hcd_to_ehci_priv(%struct.usb_hcd* %10)
  store %struct.ehci_platform_priv* %11, %struct.ehci_platform_priv** %5, align 8
  store i32 0, i32* %6, align 4
  br label %12

12:                                               ; preds = %40, %1
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* @EHCI_MAX_CLKS, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %25

16:                                               ; preds = %12
  %17 = load %struct.ehci_platform_priv*, %struct.ehci_platform_priv** %5, align 8
  %18 = getelementptr inbounds %struct.ehci_platform_priv, %struct.ehci_platform_priv* %17, i32 0, i32 0
  %19 = load i64*, i64** %18, align 8
  %20 = load i32, i32* %6, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i64, i64* %19, i64 %21
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br label %25

25:                                               ; preds = %16, %12
  %26 = phi i1 [ false, %12 ], [ %24, %16 ]
  br i1 %26, label %27, label %43

27:                                               ; preds = %25
  %28 = load %struct.ehci_platform_priv*, %struct.ehci_platform_priv** %5, align 8
  %29 = getelementptr inbounds %struct.ehci_platform_priv, %struct.ehci_platform_priv* %28, i32 0, i32 0
  %30 = load i64*, i64** %29, align 8
  %31 = load i32, i32* %6, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i64, i64* %30, i64 %32
  %34 = load i64, i64* %33, align 8
  %35 = call i32 @clk_prepare_enable(i64 %34)
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %7, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %27
  br label %44

39:                                               ; preds = %27
  br label %40

40:                                               ; preds = %39
  %41 = load i32, i32* %6, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %6, align 4
  br label %12

43:                                               ; preds = %25
  store i32 0, i32* %2, align 4
  br label %60

44:                                               ; preds = %38
  br label %45

45:                                               ; preds = %49, %44
  %46 = load i32, i32* %6, align 4
  %47 = add nsw i32 %46, -1
  store i32 %47, i32* %6, align 4
  %48 = icmp sge i32 %47, 0
  br i1 %48, label %49, label %58

49:                                               ; preds = %45
  %50 = load %struct.ehci_platform_priv*, %struct.ehci_platform_priv** %5, align 8
  %51 = getelementptr inbounds %struct.ehci_platform_priv, %struct.ehci_platform_priv* %50, i32 0, i32 0
  %52 = load i64*, i64** %51, align 8
  %53 = load i32, i32* %6, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i64, i64* %52, i64 %54
  %56 = load i64, i64* %55, align 8
  %57 = call i32 @clk_disable_unprepare(i64 %56)
  br label %45

58:                                               ; preds = %45
  %59 = load i32, i32* %7, align 4
  store i32 %59, i32* %2, align 4
  br label %60

60:                                               ; preds = %58, %43
  %61 = load i32, i32* %2, align 4
  ret i32 %61
}

declare dso_local %struct.usb_hcd* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local %struct.ehci_platform_priv* @hcd_to_ehci_priv(%struct.usb_hcd*) #1

declare dso_local i32 @clk_prepare_enable(i64) #1

declare dso_local i32 @clk_disable_unprepare(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
