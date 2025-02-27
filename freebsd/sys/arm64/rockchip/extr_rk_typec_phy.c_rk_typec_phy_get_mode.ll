; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm64/rockchip/extr_rk_typec_phy.c_rk_typec_phy_get_mode.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm64/rockchip/extr_rk_typec_phy.c_rk_typec_phy_get_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phynode = type { i32 }
%struct.rk_typec_phy_softc = type { i32 }

@RK3399_TYPEC_PHY_USB3 = common dso_local global i64 0, align 8
@ERANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phynode*, i32*)* @rk_typec_phy_get_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rk_typec_phy_get_mode(%struct.phynode* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.phynode*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.rk_typec_phy_softc*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.phynode* %0, %struct.phynode** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load %struct.phynode*, %struct.phynode** %4, align 8
  %10 = call i32 @phynode_get_device(%struct.phynode* %9)
  store i32 %10, i32* %8, align 4
  %11 = load %struct.phynode*, %struct.phynode** %4, align 8
  %12 = call i64 @phynode_get_id(%struct.phynode* %11)
  store i64 %12, i64* %7, align 8
  %13 = load i32, i32* %8, align 4
  %14 = call %struct.rk_typec_phy_softc* @device_get_softc(i32 %13)
  store %struct.rk_typec_phy_softc* %14, %struct.rk_typec_phy_softc** %6, align 8
  %15 = load i64, i64* %7, align 8
  %16 = load i64, i64* @RK3399_TYPEC_PHY_USB3, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %2
  %19 = load i32, i32* @ERANGE, align 4
  store i32 %19, i32* %3, align 4
  br label %25

20:                                               ; preds = %2
  %21 = load %struct.rk_typec_phy_softc*, %struct.rk_typec_phy_softc** %6, align 8
  %22 = getelementptr inbounds %struct.rk_typec_phy_softc, %struct.rk_typec_phy_softc* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32*, i32** %5, align 8
  store i32 %23, i32* %24, align 4
  store i32 0, i32* %3, align 4
  br label %25

25:                                               ; preds = %20, %18
  %26 = load i32, i32* %3, align 4
  ret i32 %26
}

declare dso_local i32 @phynode_get_device(%struct.phynode*) #1

declare dso_local i64 @phynode_get_id(%struct.phynode*) #1

declare dso_local %struct.rk_typec_phy_softc* @device_get_softc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
