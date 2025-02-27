; ModuleID = '/home/carl/AnghaBench/linux/drivers/phy/marvell/extr_phy-mvebu-a3700-comphy.c_mvebu_a3700_comphy_power_off.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/phy/marvell/extr_phy-mvebu-a3700-comphy.c_mvebu_a3700_comphy_power_off.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy = type { i32 }
%struct.mvebu_a3700_comphy_lane = type { i32 }

@COMPHY_SIP_POWER_OFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy*)* @mvebu_a3700_comphy_power_off to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mvebu_a3700_comphy_power_off(%struct.phy* %0) #0 {
  %2 = alloca %struct.phy*, align 8
  %3 = alloca %struct.mvebu_a3700_comphy_lane*, align 8
  store %struct.phy* %0, %struct.phy** %2, align 8
  %4 = load %struct.phy*, %struct.phy** %2, align 8
  %5 = call %struct.mvebu_a3700_comphy_lane* @phy_get_drvdata(%struct.phy* %4)
  store %struct.mvebu_a3700_comphy_lane* %5, %struct.mvebu_a3700_comphy_lane** %3, align 8
  %6 = load i32, i32* @COMPHY_SIP_POWER_OFF, align 4
  %7 = load %struct.mvebu_a3700_comphy_lane*, %struct.mvebu_a3700_comphy_lane** %3, align 8
  %8 = getelementptr inbounds %struct.mvebu_a3700_comphy_lane, %struct.mvebu_a3700_comphy_lane* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @mvebu_a3700_comphy_smc(i32 %6, i32 %9, i32 0)
  ret i32 %10
}

declare dso_local %struct.mvebu_a3700_comphy_lane* @phy_get_drvdata(%struct.phy*) #1

declare dso_local i32 @mvebu_a3700_comphy_smc(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
