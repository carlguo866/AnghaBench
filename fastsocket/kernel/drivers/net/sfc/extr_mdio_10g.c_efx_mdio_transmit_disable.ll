; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_mdio_10g.c_efx_mdio_transmit_disable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/sfc/extr_mdio_10g.c_efx_mdio_transmit_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_nic = type { i32 }

@MDIO_MMD_PMAPMD = common dso_local global i32 0, align 4
@MDIO_PMA_TXDIS = common dso_local global i32 0, align 4
@MDIO_PMD_TXDIS_GLOBAL = common dso_local global i32 0, align 4
@PHY_MODE_TX_DISABLED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @efx_mdio_transmit_disable(%struct.efx_nic* %0) #0 {
  %2 = alloca %struct.efx_nic*, align 8
  store %struct.efx_nic* %0, %struct.efx_nic** %2, align 8
  %3 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %4 = load i32, i32* @MDIO_MMD_PMAPMD, align 4
  %5 = load i32, i32* @MDIO_PMA_TXDIS, align 4
  %6 = load i32, i32* @MDIO_PMD_TXDIS_GLOBAL, align 4
  %7 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %8 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @PHY_MODE_TX_DISABLED, align 4
  %11 = and i32 %9, %10
  %12 = call i32 @efx_mdio_set_flag(%struct.efx_nic* %3, i32 %4, i32 %5, i32 %6, i32 %11)
  ret void
}

declare dso_local i32 @efx_mdio_set_flag(%struct.efx_nic*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
