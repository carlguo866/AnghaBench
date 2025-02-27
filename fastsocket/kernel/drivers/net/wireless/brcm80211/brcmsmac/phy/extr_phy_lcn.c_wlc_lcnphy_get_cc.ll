; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/phy/extr_phy_lcn.c_wlc_lcnphy_get_cc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/phy/extr_phy_lcn.c_wlc_lcnphy_get_cc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_phy = type { i32 }
%struct.lcnphy_unsign16_struct = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.brcms_phy*, i32)* @wlc_lcnphy_get_cc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @wlc_lcnphy_get_cc(%struct.brcms_phy* %0, i32 %1) #0 {
  %3 = alloca %struct.lcnphy_unsign16_struct, align 4
  %4 = alloca %struct.brcms_phy*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.brcms_phy* %0, %struct.brcms_phy** %4, align 8
  store i32 %1, i32* %5, align 4
  %15 = getelementptr inbounds %struct.lcnphy_unsign16_struct, %struct.lcnphy_unsign16_struct* %3, i32 0, i32 0
  store i32 0, i32* %15, align 4
  %16 = getelementptr inbounds %struct.lcnphy_unsign16_struct, %struct.lcnphy_unsign16_struct* %3, i32 0, i32 1
  store i32 0, i32* %16, align 4
  %17 = load i32, i32* %5, align 4
  switch i32 %17, label %54 [
    i32 0, label %18
    i32 2, label %25
    i32 3, label %40
    i32 4, label %47
  ]

18:                                               ; preds = %2
  %19 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %20 = call i32 @wlc_lcnphy_get_tx_iqcc(%struct.brcms_phy* %19, i32* %6, i32* %7)
  %21 = load i32, i32* %6, align 4
  %22 = getelementptr inbounds %struct.lcnphy_unsign16_struct, %struct.lcnphy_unsign16_struct* %3, i32 0, i32 0
  store i32 %21, i32* %22, align 4
  %23 = load i32, i32* %7, align 4
  %24 = getelementptr inbounds %struct.lcnphy_unsign16_struct, %struct.lcnphy_unsign16_struct* %3, i32 0, i32 1
  store i32 %23, i32* %24, align 4
  br label %54

25:                                               ; preds = %2
  %26 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %27 = call i32 @wlc_lcnphy_get_tx_locc(%struct.brcms_phy* %26)
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %8, align 4
  %29 = and i32 %28, 65280
  %30 = shl i32 %29, 16
  %31 = ashr i32 %30, 24
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %8, align 4
  %33 = and i32 %32, 255
  %34 = shl i32 %33, 24
  %35 = ashr i32 %34, 24
  store i32 %35, i32* %10, align 4
  %36 = load i32, i32* %9, align 4
  %37 = getelementptr inbounds %struct.lcnphy_unsign16_struct, %struct.lcnphy_unsign16_struct* %3, i32 0, i32 0
  store i32 %36, i32* %37, align 4
  %38 = load i32, i32* %10, align 4
  %39 = getelementptr inbounds %struct.lcnphy_unsign16_struct, %struct.lcnphy_unsign16_struct* %3, i32 0, i32 1
  store i32 %38, i32* %39, align 4
  br label %54

40:                                               ; preds = %2
  %41 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %42 = call i32 @wlc_lcnphy_get_radio_loft(%struct.brcms_phy* %41, i32* %11, i32* %12, i32* %13, i32* %14)
  %43 = load i32, i32* %11, align 4
  %44 = getelementptr inbounds %struct.lcnphy_unsign16_struct, %struct.lcnphy_unsign16_struct* %3, i32 0, i32 0
  store i32 %43, i32* %44, align 4
  %45 = load i32, i32* %12, align 4
  %46 = getelementptr inbounds %struct.lcnphy_unsign16_struct, %struct.lcnphy_unsign16_struct* %3, i32 0, i32 1
  store i32 %45, i32* %46, align 4
  br label %54

47:                                               ; preds = %2
  %48 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %49 = call i32 @wlc_lcnphy_get_radio_loft(%struct.brcms_phy* %48, i32* %11, i32* %12, i32* %13, i32* %14)
  %50 = load i32, i32* %13, align 4
  %51 = getelementptr inbounds %struct.lcnphy_unsign16_struct, %struct.lcnphy_unsign16_struct* %3, i32 0, i32 0
  store i32 %50, i32* %51, align 4
  %52 = load i32, i32* %14, align 4
  %53 = getelementptr inbounds %struct.lcnphy_unsign16_struct, %struct.lcnphy_unsign16_struct* %3, i32 0, i32 1
  store i32 %52, i32* %53, align 4
  br label %54

54:                                               ; preds = %2, %47, %40, %25, %18
  %55 = bitcast %struct.lcnphy_unsign16_struct* %3 to i64*
  %56 = load i64, i64* %55, align 4
  ret i64 %56
}

declare dso_local i32 @wlc_lcnphy_get_tx_iqcc(%struct.brcms_phy*, i32*, i32*) #1

declare dso_local i32 @wlc_lcnphy_get_tx_locc(%struct.brcms_phy*) #1

declare dso_local i32 @wlc_lcnphy_get_radio_loft(%struct.brcms_phy*, i32*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
