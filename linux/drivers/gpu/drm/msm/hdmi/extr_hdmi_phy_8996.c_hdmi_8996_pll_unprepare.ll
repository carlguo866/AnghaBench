; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/hdmi/extr_hdmi_phy_8996.c_hdmi_8996_pll_unprepare.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/msm/hdmi/extr_hdmi_phy_8996.c_hdmi_8996_pll_unprepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk_hw = type { i32 }
%struct.hdmi_pll_8996 = type { i32 }
%struct.hdmi_phy = type { i32 }

@REG_HDMI_8996_PHY_CFG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.clk_hw*)* @hdmi_8996_pll_unprepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hdmi_8996_pll_unprepare(%struct.clk_hw* %0) #0 {
  %2 = alloca %struct.clk_hw*, align 8
  %3 = alloca %struct.hdmi_pll_8996*, align 8
  %4 = alloca %struct.hdmi_phy*, align 8
  store %struct.clk_hw* %0, %struct.clk_hw** %2, align 8
  %5 = load %struct.clk_hw*, %struct.clk_hw** %2, align 8
  %6 = call %struct.hdmi_pll_8996* @hw_clk_to_pll(%struct.clk_hw* %5)
  store %struct.hdmi_pll_8996* %6, %struct.hdmi_pll_8996** %3, align 8
  %7 = load %struct.hdmi_pll_8996*, %struct.hdmi_pll_8996** %3, align 8
  %8 = call %struct.hdmi_phy* @pll_get_phy(%struct.hdmi_pll_8996* %7)
  store %struct.hdmi_phy* %8, %struct.hdmi_phy** %4, align 8
  %9 = load %struct.hdmi_phy*, %struct.hdmi_phy** %4, align 8
  %10 = load i32, i32* @REG_HDMI_8996_PHY_CFG, align 4
  %11 = call i32 @hdmi_phy_write(%struct.hdmi_phy* %9, i32 %10, i32 6)
  %12 = call i32 @usleep_range(i32 100, i32 150)
  ret void
}

declare dso_local %struct.hdmi_pll_8996* @hw_clk_to_pll(%struct.clk_hw*) #1

declare dso_local %struct.hdmi_phy* @pll_get_phy(%struct.hdmi_pll_8996*) #1

declare dso_local i32 @hdmi_phy_write(%struct.hdmi_phy*, i32, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
