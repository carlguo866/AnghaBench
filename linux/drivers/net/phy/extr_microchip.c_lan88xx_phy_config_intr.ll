; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_microchip.c_lan88xx_phy_config_intr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_microchip.c_lan88xx_phy_config_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy_device = type { i64 }

@PHY_INTERRUPT_ENABLED = common dso_local global i64 0, align 8
@LAN88XX_INT_MASK = common dso_local global i32 0, align 4
@LAN88XX_INT_STS = common dso_local global i32 0, align 4
@LAN88XX_INT_MASK_MDINTPIN_EN_ = common dso_local global i32 0, align 4
@LAN88XX_INT_MASK_LINK_CHANGE_ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy_device*)* @lan88xx_phy_config_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lan88xx_phy_config_intr(%struct.phy_device* %0) #0 {
  %2 = alloca %struct.phy_device*, align 8
  %3 = alloca i32, align 4
  store %struct.phy_device* %0, %struct.phy_device** %2, align 8
  %4 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %5 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @PHY_INTERRUPT_ENABLED, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %22

9:                                                ; preds = %1
  %10 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %11 = load i32, i32* @LAN88XX_INT_MASK, align 4
  %12 = call i32 @phy_write(%struct.phy_device* %10, i32 %11, i32 32767)
  store i32 %12, i32* %3, align 4
  %13 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %14 = load i32, i32* @LAN88XX_INT_STS, align 4
  %15 = call i32 @phy_read(%struct.phy_device* %13, i32 %14)
  store i32 %15, i32* %3, align 4
  %16 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %17 = load i32, i32* @LAN88XX_INT_MASK, align 4
  %18 = load i32, i32* @LAN88XX_INT_MASK_MDINTPIN_EN_, align 4
  %19 = load i32, i32* @LAN88XX_INT_MASK_LINK_CHANGE_, align 4
  %20 = or i32 %18, %19
  %21 = call i32 @phy_write(%struct.phy_device* %16, i32 %17, i32 %20)
  store i32 %21, i32* %3, align 4
  br label %26

22:                                               ; preds = %1
  %23 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %24 = load i32, i32* @LAN88XX_INT_MASK, align 4
  %25 = call i32 @phy_write(%struct.phy_device* %23, i32 %24, i32 0)
  store i32 %25, i32* %3, align 4
  br label %26

26:                                               ; preds = %22, %9
  %27 = load i32, i32* %3, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %26
  %30 = load i32, i32* %3, align 4
  br label %32

31:                                               ; preds = %26
  br label %32

32:                                               ; preds = %31, %29
  %33 = phi i32 [ %30, %29 ], [ 0, %31 ]
  ret i32 %33
}

declare dso_local i32 @phy_write(%struct.phy_device*, i32, i32) #1

declare dso_local i32 @phy_read(%struct.phy_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
