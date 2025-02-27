; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/phy/extr_phy_lcn.c_wlc_lcnphy_tx_iqlo_loopback_cleanup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/brcm80211/brcmsmac/phy/extr_phy_lcn.c_wlc_lcnphy_tx_iqlo_loopback_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_phy = type { i32 }

@iqlo_loopback_rf_regs = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.brcms_phy*, i32*)* @wlc_lcnphy_tx_iqlo_loopback_cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wlc_lcnphy_tx_iqlo_loopback_cleanup(%struct.brcms_phy* %0, i32* %1) #0 {
  %3 = alloca %struct.brcms_phy*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store %struct.brcms_phy* %0, %struct.brcms_phy** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %7 = call i32 @and_phy_reg(%struct.brcms_phy* %6, i32 1100, i32 0)
  %8 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %9 = call i32 @and_phy_reg(%struct.brcms_phy* %8, i32 1083, i32 12)
  store i32 0, i32* %5, align 4
  br label %10

10:                                               ; preds = %26, %2
  %11 = load i32, i32* %5, align 4
  %12 = icmp slt i32 %11, 20
  br i1 %12, label %13, label %29

13:                                               ; preds = %10
  %14 = load %struct.brcms_phy*, %struct.brcms_phy** %3, align 8
  %15 = load i32*, i32** @iqlo_loopback_rf_regs, align 8
  %16 = load i32, i32* %5, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %15, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = load i32*, i32** %4, align 8
  %21 = load i32, i32* %5, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @write_radio_reg(%struct.brcms_phy* %14, i32 %19, i32 %24)
  br label %26

26:                                               ; preds = %13
  %27 = load i32, i32* %5, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %5, align 4
  br label %10

29:                                               ; preds = %10
  ret void
}

declare dso_local i32 @and_phy_reg(%struct.brcms_phy*, i32, i32) #1

declare dso_local i32 @write_radio_reg(%struct.brcms_phy*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
