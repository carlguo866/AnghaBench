; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/generic/files/drivers/net/phy/b53/extr_b53_mdio.c_b53_mdio_write16.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/generic/files/drivers/net/phy/b53/extr_b53_mdio.c_b53_mdio_write16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b53_device = type { %struct.mii_bus* }
%struct.mii_bus = type { i32 }

@B53_PSEUDO_PHY = common dso_local global i32 0, align 4
@REG_MII_DATA0 = common dso_local global i32 0, align 4
@REG_MII_ADDR_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.b53_device*, i32, i32, i32)* @b53_mdio_write16 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @b53_mdio_write16(%struct.b53_device* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.b53_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.mii_bus*, align 8
  %11 = alloca i32, align 4
  store %struct.b53_device* %0, %struct.b53_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load %struct.b53_device*, %struct.b53_device** %6, align 8
  %13 = getelementptr inbounds %struct.b53_device, %struct.b53_device* %12, i32 0, i32 0
  %14 = load %struct.mii_bus*, %struct.mii_bus** %13, align 8
  store %struct.mii_bus* %14, %struct.mii_bus** %10, align 8
  %15 = load %struct.mii_bus*, %struct.mii_bus** %10, align 8
  %16 = load i32, i32* @B53_PSEUDO_PHY, align 4
  %17 = load i32, i32* @REG_MII_DATA0, align 4
  %18 = load i32, i32* %9, align 4
  %19 = call i32 @mdiobus_write(%struct.mii_bus* %15, i32 %16, i32 %17, i32 %18)
  store i32 %19, i32* %11, align 4
  %20 = load i32, i32* %11, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %4
  %23 = load i32, i32* %11, align 4
  store i32 %23, i32* %5, align 4
  br label %30

24:                                               ; preds = %4
  %25 = load %struct.b53_device*, %struct.b53_device** %6, align 8
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* @REG_MII_ADDR_WRITE, align 4
  %29 = call i32 @b53_mdio_op(%struct.b53_device* %25, i32 %26, i32 %27, i32 %28)
  store i32 %29, i32* %5, align 4
  br label %30

30:                                               ; preds = %24, %22
  %31 = load i32, i32* %5, align 4
  ret i32 %31
}

declare dso_local i32 @mdiobus_write(%struct.mii_bus*, i32, i32, i32) #1

declare dso_local i32 @b53_mdio_op(%struct.b53_device*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
