; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/extr_fec_mpc52xx_phy.c_mpc52xx_fec_mdio_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/extr_fec_mpc52xx_phy.c_mpc52xx_fec_mdio_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.mii_bus = type { %struct.mpc52xx_fec_mdio_priv* }
%struct.mpc52xx_fec_mdio_priv = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @mpc52xx_fec_mdio_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpc52xx_fec_mdio_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.mii_bus*, align 8
  %4 = alloca %struct.mpc52xx_fec_mdio_priv*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %6 = call %struct.mii_bus* @platform_get_drvdata(%struct.platform_device* %5)
  store %struct.mii_bus* %6, %struct.mii_bus** %3, align 8
  %7 = load %struct.mii_bus*, %struct.mii_bus** %3, align 8
  %8 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %7, i32 0, i32 0
  %9 = load %struct.mpc52xx_fec_mdio_priv*, %struct.mpc52xx_fec_mdio_priv** %8, align 8
  store %struct.mpc52xx_fec_mdio_priv* %9, %struct.mpc52xx_fec_mdio_priv** %4, align 8
  %10 = load %struct.mii_bus*, %struct.mii_bus** %3, align 8
  %11 = call i32 @mdiobus_unregister(%struct.mii_bus* %10)
  %12 = load %struct.mpc52xx_fec_mdio_priv*, %struct.mpc52xx_fec_mdio_priv** %4, align 8
  %13 = getelementptr inbounds %struct.mpc52xx_fec_mdio_priv, %struct.mpc52xx_fec_mdio_priv* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @iounmap(i32 %14)
  %16 = load %struct.mpc52xx_fec_mdio_priv*, %struct.mpc52xx_fec_mdio_priv** %4, align 8
  %17 = call i32 @kfree(%struct.mpc52xx_fec_mdio_priv* %16)
  %18 = load %struct.mii_bus*, %struct.mii_bus** %3, align 8
  %19 = call i32 @mdiobus_free(%struct.mii_bus* %18)
  ret i32 0
}

declare dso_local %struct.mii_bus* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @mdiobus_unregister(%struct.mii_bus*) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local i32 @kfree(%struct.mpc52xx_fec_mdio_priv*) #1

declare dso_local i32 @mdiobus_free(%struct.mii_bus*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
