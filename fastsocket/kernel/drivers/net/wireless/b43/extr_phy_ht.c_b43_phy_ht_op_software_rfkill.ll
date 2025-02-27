; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_phy_ht.c_b43_phy_ht_op_software_rfkill.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_phy_ht.c_b43_phy_ht_op_software_rfkill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@B43_MMIO_MACCTL = common dso_local global i32 0, align 4
@B43_MACCTL_ENABLED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"MAC not suspended\0A\00", align 1
@B43_PHY_HT_RF_CTL1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b43_wldev*, i32)* @b43_phy_ht_op_software_rfkill to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @b43_phy_ht_op_software_rfkill(%struct.b43_wldev* %0, i32 %1) #0 {
  %3 = alloca %struct.b43_wldev*, align 8
  %4 = alloca i32, align 4
  store %struct.b43_wldev* %0, %struct.b43_wldev** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %6 = load i32, i32* @B43_MMIO_MACCTL, align 4
  %7 = call i32 @b43_read32(%struct.b43_wldev* %5, i32 %6)
  %8 = load i32, i32* @B43_MACCTL_ENABLED, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %2
  %12 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %13 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @b43err(i32 %14, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %16

16:                                               ; preds = %11, %2
  %17 = load i32, i32* %4, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %16
  %20 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %21 = load i32, i32* @B43_PHY_HT_RF_CTL1, align 4
  %22 = call i32 @b43_phy_mask(%struct.b43_wldev* %20, i32 %21, i32 0)
  br label %53

23:                                               ; preds = %16
  %24 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %25 = load i32, i32* @B43_PHY_HT_RF_CTL1, align 4
  %26 = call i32 @b43_phy_mask(%struct.b43_wldev* %24, i32 %25, i32 0)
  %27 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %28 = load i32, i32* @B43_PHY_HT_RF_CTL1, align 4
  %29 = call i32 @b43_phy_maskset(%struct.b43_wldev* %27, i32 %28, i32 0, i32 1)
  %30 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %31 = load i32, i32* @B43_PHY_HT_RF_CTL1, align 4
  %32 = call i32 @b43_phy_mask(%struct.b43_wldev* %30, i32 %31, i32 0)
  %33 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %34 = load i32, i32* @B43_PHY_HT_RF_CTL1, align 4
  %35 = call i32 @b43_phy_maskset(%struct.b43_wldev* %33, i32 %34, i32 0, i32 2)
  %36 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %37 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = icmp eq i32 %39, 8281
  br i1 %40, label %41, label %44

41:                                               ; preds = %23
  %42 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %43 = call i32 @b43_radio_2059_init(%struct.b43_wldev* %42)
  br label %46

44:                                               ; preds = %23
  %45 = call i32 @B43_WARN_ON(i32 1)
  br label %46

46:                                               ; preds = %44, %41
  %47 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %48 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %49 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @b43_switch_channel(%struct.b43_wldev* %47, i32 %51)
  br label %53

53:                                               ; preds = %46, %19
  ret void
}

declare dso_local i32 @b43_read32(%struct.b43_wldev*, i32) #1

declare dso_local i32 @b43err(i32, i8*) #1

declare dso_local i32 @b43_phy_mask(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @b43_phy_maskset(%struct.b43_wldev*, i32, i32, i32) #1

declare dso_local i32 @b43_radio_2059_init(%struct.b43_wldev*) #1

declare dso_local i32 @B43_WARN_ON(i32) #1

declare dso_local i32 @b43_switch_channel(%struct.b43_wldev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
