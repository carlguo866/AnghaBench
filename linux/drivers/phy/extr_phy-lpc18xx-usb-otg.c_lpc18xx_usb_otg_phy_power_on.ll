; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/extr_phy-lpc18xx-usb-otg.c_lpc18xx_usb_otg_phy_power_on.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/extr_phy-lpc18xx-usb-otg.c_lpc18xx_usb_otg_phy_power_on.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy = type { i32 }
%struct.lpc18xx_usb_otg_phy = type { i32, i32 }

@LPC18XX_CREG_CREG0 = common dso_local global i32 0, align 4
@LPC18XX_CREG_CREG0_USB0PHY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy*)* @lpc18xx_usb_otg_phy_power_on to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpc18xx_usb_otg_phy_power_on(%struct.phy* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.phy*, align 8
  %4 = alloca %struct.lpc18xx_usb_otg_phy*, align 8
  %5 = alloca i32, align 4
  store %struct.phy* %0, %struct.phy** %3, align 8
  %6 = load %struct.phy*, %struct.phy** %3, align 8
  %7 = call %struct.lpc18xx_usb_otg_phy* @phy_get_drvdata(%struct.phy* %6)
  store %struct.lpc18xx_usb_otg_phy* %7, %struct.lpc18xx_usb_otg_phy** %4, align 8
  %8 = load %struct.lpc18xx_usb_otg_phy*, %struct.lpc18xx_usb_otg_phy** %4, align 8
  %9 = getelementptr inbounds %struct.lpc18xx_usb_otg_phy, %struct.lpc18xx_usb_otg_phy* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @clk_enable(i32 %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load i32, i32* %5, align 4
  store i32 %15, i32* %2, align 4
  br label %32

16:                                               ; preds = %1
  %17 = load %struct.lpc18xx_usb_otg_phy*, %struct.lpc18xx_usb_otg_phy** %4, align 8
  %18 = getelementptr inbounds %struct.lpc18xx_usb_otg_phy, %struct.lpc18xx_usb_otg_phy* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @LPC18XX_CREG_CREG0, align 4
  %21 = load i32, i32* @LPC18XX_CREG_CREG0_USB0PHY, align 4
  %22 = call i32 @regmap_update_bits(i32 %19, i32 %20, i32 %21, i32 0)
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %16
  %26 = load %struct.lpc18xx_usb_otg_phy*, %struct.lpc18xx_usb_otg_phy** %4, align 8
  %27 = getelementptr inbounds %struct.lpc18xx_usb_otg_phy, %struct.lpc18xx_usb_otg_phy* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @clk_disable(i32 %28)
  %30 = load i32, i32* %5, align 4
  store i32 %30, i32* %2, align 4
  br label %32

31:                                               ; preds = %16
  store i32 0, i32* %2, align 4
  br label %32

32:                                               ; preds = %31, %25, %14
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

declare dso_local %struct.lpc18xx_usb_otg_phy* @phy_get_drvdata(%struct.phy*) #1

declare dso_local i32 @clk_enable(i32) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

declare dso_local i32 @clk_disable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
