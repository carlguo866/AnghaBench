; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_phy.c_ixgbe_get_phy_firmware_version_tnx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_phy.c_ixgbe_get_phy_firmware_version_tnx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 (%struct.ixgbe_hw.0*, i32, i32, i32*)* }
%struct.ixgbe_hw.0 = type opaque

@TNX_FW_REV = common dso_local global i32 0, align 4
@MDIO_MMD_VEND1 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ixgbe_get_phy_firmware_version_tnx(%struct.ixgbe_hw* %0, i32* %1) #0 {
  %3 = alloca %struct.ixgbe_hw*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %7 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i32 (%struct.ixgbe_hw.0*, i32, i32, i32*)*, i32 (%struct.ixgbe_hw.0*, i32, i32, i32*)** %9, align 8
  %11 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %3, align 8
  %12 = bitcast %struct.ixgbe_hw* %11 to %struct.ixgbe_hw.0*
  %13 = load i32, i32* @TNX_FW_REV, align 4
  %14 = load i32, i32* @MDIO_MMD_VEND1, align 4
  %15 = load i32*, i32** %4, align 8
  %16 = call i32 %10(%struct.ixgbe_hw.0* %12, i32 %13, i32 %14, i32* %15)
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  ret i32 %17
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
