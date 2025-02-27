; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_phy_device.c_phy_validate_pause.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_phy_device.c_phy_validate_pause.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy_device = type { i32 }
%struct.ethtool_pauseparam = type { i64, i64 }

@ETHTOOL_LINK_MODE_Pause_BIT = common dso_local global i32 0, align 4
@ETHTOOL_LINK_MODE_Asym_Pause_BIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @phy_validate_pause(%struct.phy_device* %0, %struct.ethtool_pauseparam* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.phy_device*, align 8
  %5 = alloca %struct.ethtool_pauseparam*, align 8
  store %struct.phy_device* %0, %struct.phy_device** %4, align 8
  store %struct.ethtool_pauseparam* %1, %struct.ethtool_pauseparam** %5, align 8
  %6 = load i32, i32* @ETHTOOL_LINK_MODE_Pause_BIT, align 4
  %7 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %8 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @linkmode_test_bit(i32 %6, i32 %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %18, label %12

12:                                               ; preds = %2
  %13 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %5, align 8
  %14 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %12
  store i32 0, i32* %3, align 4
  br label %35

18:                                               ; preds = %12, %2
  %19 = load i32, i32* @ETHTOOL_LINK_MODE_Asym_Pause_BIT, align 4
  %20 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %21 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @linkmode_test_bit(i32 %19, i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %34, label %25

25:                                               ; preds = %18
  %26 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %5, align 8
  %27 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %5, align 8
  %30 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %28, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %25
  store i32 0, i32* %3, align 4
  br label %35

34:                                               ; preds = %25, %18
  store i32 1, i32* %3, align 4
  br label %35

35:                                               ; preds = %34, %33, %17
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local i32 @linkmode_test_bit(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
