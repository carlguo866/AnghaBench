; ModuleID = '/home/carl/AnghaBench/linux/drivers/gpu/drm/sun4i/extr_sun8i_hdmi_phy.c_sun8i_hdmi_phy_disable_h3.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/gpu/drm/sun4i/extr_sun8i_hdmi_phy.c_sun8i_hdmi_phy_disable_h3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dw_hdmi = type { i32 }
%struct.sun8i_hdmi_phy = type { i32 }

@SUN8I_HDMI_PHY_ANA_CFG1_REG = common dso_local global i32 0, align 4
@SUN8I_HDMI_PHY_ANA_CFG1_LDOEN = common dso_local global i32 0, align 4
@SUN8I_HDMI_PHY_ANA_CFG1_ENVBS = common dso_local global i32 0, align 4
@SUN8I_HDMI_PHY_ANA_CFG1_ENBI = common dso_local global i32 0, align 4
@SUN8I_HDMI_PHY_PLL_CFG1_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dw_hdmi*, %struct.sun8i_hdmi_phy*)* @sun8i_hdmi_phy_disable_h3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sun8i_hdmi_phy_disable_h3(%struct.dw_hdmi* %0, %struct.sun8i_hdmi_phy* %1) #0 {
  %3 = alloca %struct.dw_hdmi*, align 8
  %4 = alloca %struct.sun8i_hdmi_phy*, align 8
  store %struct.dw_hdmi* %0, %struct.dw_hdmi** %3, align 8
  store %struct.sun8i_hdmi_phy* %1, %struct.sun8i_hdmi_phy** %4, align 8
  %5 = load %struct.sun8i_hdmi_phy*, %struct.sun8i_hdmi_phy** %4, align 8
  %6 = getelementptr inbounds %struct.sun8i_hdmi_phy, %struct.sun8i_hdmi_phy* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @SUN8I_HDMI_PHY_ANA_CFG1_REG, align 4
  %9 = load i32, i32* @SUN8I_HDMI_PHY_ANA_CFG1_LDOEN, align 4
  %10 = load i32, i32* @SUN8I_HDMI_PHY_ANA_CFG1_ENVBS, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* @SUN8I_HDMI_PHY_ANA_CFG1_ENBI, align 4
  %13 = or i32 %11, %12
  %14 = call i32 @regmap_write(i32 %7, i32 %8, i32 %13)
  %15 = load %struct.sun8i_hdmi_phy*, %struct.sun8i_hdmi_phy** %4, align 8
  %16 = getelementptr inbounds %struct.sun8i_hdmi_phy, %struct.sun8i_hdmi_phy* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @SUN8I_HDMI_PHY_PLL_CFG1_REG, align 4
  %19 = call i32 @regmap_write(i32 %17, i32 %18, i32 0)
  ret void
}

declare dso_local i32 @regmap_write(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
