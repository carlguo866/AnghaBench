; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/phy/extr_phy_cmn.c_or_phy_reg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/brcm80211/brcmsmac/phy/extr_phy_cmn.c_or_phy_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcms_phy = type { i64, i32 }

@phyregaddr = common dso_local global i32 0, align 4
@phyregdata = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @or_phy_reg(%struct.brcms_phy* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.brcms_phy*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.brcms_phy* %0, %struct.brcms_phy** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %8 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @phyregaddr, align 4
  %11 = call i32 @D11REGOFFS(i32 %10)
  %12 = load i32, i32* %5, align 4
  %13 = call i32 @bcma_wflush16(i32 %9, i32 %11, i32 %12)
  %14 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %15 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @phyregdata, align 4
  %18 = call i32 @D11REGOFFS(i32 %17)
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @bcma_set16(i32 %16, i32 %18, i32 %19)
  %21 = load %struct.brcms_phy*, %struct.brcms_phy** %4, align 8
  %22 = getelementptr inbounds %struct.brcms_phy, %struct.brcms_phy* %21, i32 0, i32 0
  store i64 0, i64* %22, align 8
  ret void
}

declare dso_local i32 @bcma_wflush16(i32, i32, i32) #1

declare dso_local i32 @D11REGOFFS(i32) #1

declare dso_local i32 @bcma_set16(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
