; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_mdio_bus.c_mdiobus_write_nested.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_mdio_bus.c_mdiobus_write_nested.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mii_bus = type { i32 }

@MDIO_MUTEX_NESTED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mdiobus_write_nested(%struct.mii_bus* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.mii_bus*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.mii_bus* %0, %struct.mii_bus** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = call i32 (...) @in_interrupt()
  %11 = call i32 @BUG_ON(i32 %10)
  %12 = load %struct.mii_bus*, %struct.mii_bus** %5, align 8
  %13 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %12, i32 0, i32 0
  %14 = load i32, i32* @MDIO_MUTEX_NESTED, align 4
  %15 = call i32 @mutex_lock_nested(i32* %13, i32 %14)
  %16 = load %struct.mii_bus*, %struct.mii_bus** %5, align 8
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* %8, align 4
  %20 = call i32 @__mdiobus_write(%struct.mii_bus* %16, i32 %17, i32 %18, i32 %19)
  store i32 %20, i32* %9, align 4
  %21 = load %struct.mii_bus*, %struct.mii_bus** %5, align 8
  %22 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %21, i32 0, i32 0
  %23 = call i32 @mutex_unlock(i32* %22)
  %24 = load i32, i32* %9, align 4
  ret i32 %24
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @in_interrupt(...) #1

declare dso_local i32 @mutex_lock_nested(i32*, i32) #1

declare dso_local i32 @__mdiobus_write(%struct.mii_bus*, i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
