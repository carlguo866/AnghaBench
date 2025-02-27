; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe_elink.c_elink_54618se_specific_func.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe_elink.c_elink_54618se_specific_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elink_phy = type { i32 }
%struct.elink_params = type { %struct.bxe_softc* }
%struct.bxe_softc = type { i32 }

@MDIO_REG_GPHY_SHADOW = common dso_local global i32 0, align 4
@MDIO_REG_GPHY_SHADOW_LED_SEL2 = common dso_local global i32 0, align 4
@MDIO_REG_GPHY_SHADOW_WR_ENA = common dso_local global i32 0, align 4
@MDIO_REG_INTR_MASK = common dso_local global i32 0, align 4
@MDIO_REG_INTR_MASK_LINK_STATUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.elink_phy*, %struct.elink_params*, i32)* @elink_54618se_specific_func to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @elink_54618se_specific_func(%struct.elink_phy* %0, %struct.elink_params* %1, i32 %2) #0 {
  %4 = alloca %struct.elink_phy*, align 8
  %5 = alloca %struct.elink_params*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.bxe_softc*, align 8
  %8 = alloca i32, align 4
  store %struct.elink_phy* %0, %struct.elink_phy** %4, align 8
  store %struct.elink_params* %1, %struct.elink_params** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.elink_params*, %struct.elink_params** %5, align 8
  %10 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %9, i32 0, i32 0
  %11 = load %struct.bxe_softc*, %struct.bxe_softc** %10, align 8
  store %struct.bxe_softc* %11, %struct.bxe_softc** %7, align 8
  %12 = load i32, i32* %6, align 4
  switch i32 %12, label %40 [
    i32 128, label %13
  ]

13:                                               ; preds = %3
  %14 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %15 = load %struct.elink_phy*, %struct.elink_phy** %4, align 8
  %16 = load i32, i32* @MDIO_REG_GPHY_SHADOW, align 4
  %17 = load i32, i32* @MDIO_REG_GPHY_SHADOW_LED_SEL2, align 4
  %18 = call i32 @elink_cl22_write(%struct.bxe_softc* %14, %struct.elink_phy* %15, i32 %16, i32 %17)
  %19 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %20 = load %struct.elink_phy*, %struct.elink_phy** %4, align 8
  %21 = load i32, i32* @MDIO_REG_GPHY_SHADOW, align 4
  %22 = call i32 @elink_cl22_read(%struct.bxe_softc* %19, %struct.elink_phy* %20, i32 %21, i32* %8)
  %23 = load i32, i32* %8, align 4
  %24 = and i32 %23, -241
  store i32 %24, i32* %8, align 4
  %25 = load i32, i32* %8, align 4
  %26 = or i32 %25, 96
  store i32 %26, i32* %8, align 4
  %27 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %28 = load %struct.elink_phy*, %struct.elink_phy** %4, align 8
  %29 = load i32, i32* @MDIO_REG_GPHY_SHADOW, align 4
  %30 = load i32, i32* @MDIO_REG_GPHY_SHADOW_WR_ENA, align 4
  %31 = load i32, i32* %8, align 4
  %32 = or i32 %30, %31
  %33 = call i32 @elink_cl22_write(%struct.bxe_softc* %27, %struct.elink_phy* %28, i32 %29, i32 %32)
  %34 = load %struct.bxe_softc*, %struct.bxe_softc** %7, align 8
  %35 = load %struct.elink_phy*, %struct.elink_phy** %4, align 8
  %36 = load i32, i32* @MDIO_REG_INTR_MASK, align 4
  %37 = load i32, i32* @MDIO_REG_INTR_MASK_LINK_STATUS, align 4
  %38 = xor i32 %37, -1
  %39 = call i32 @elink_cl22_write(%struct.bxe_softc* %34, %struct.elink_phy* %35, i32 %36, i32 %38)
  br label %40

40:                                               ; preds = %3, %13
  ret void
}

declare dso_local i32 @elink_cl22_write(%struct.bxe_softc*, %struct.elink_phy*, i32, i32) #1

declare dso_local i32 @elink_cl22_read(%struct.bxe_softc*, %struct.elink_phy*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
