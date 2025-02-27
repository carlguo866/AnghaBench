; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/phy/extr_mdio_bus.c_mdiobus_free.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/phy/extr_mdio_bus.c_mdiobus_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mii_bus = type { i64, i32 }

@MDIOBUS_ALLOCATED = common dso_local global i64 0, align 8
@MDIOBUS_UNREGISTERED = common dso_local global i64 0, align 8
@MDIOBUS_RELEASED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mdiobus_free(%struct.mii_bus* %0) #0 {
  %2 = alloca %struct.mii_bus*, align 8
  store %struct.mii_bus* %0, %struct.mii_bus** %2, align 8
  %3 = load %struct.mii_bus*, %struct.mii_bus** %2, align 8
  %4 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @MDIOBUS_ALLOCATED, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = load %struct.mii_bus*, %struct.mii_bus** %2, align 8
  %10 = call i32 @kfree(%struct.mii_bus* %9)
  br label %25

11:                                               ; preds = %1
  %12 = load %struct.mii_bus*, %struct.mii_bus** %2, align 8
  %13 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @MDIOBUS_UNREGISTERED, align 8
  %16 = icmp ne i64 %14, %15
  %17 = zext i1 %16 to i32
  %18 = call i32 @BUG_ON(i32 %17)
  %19 = load i64, i64* @MDIOBUS_RELEASED, align 8
  %20 = load %struct.mii_bus*, %struct.mii_bus** %2, align 8
  %21 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %20, i32 0, i32 0
  store i64 %19, i64* %21, align 8
  %22 = load %struct.mii_bus*, %struct.mii_bus** %2, align 8
  %23 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %22, i32 0, i32 1
  %24 = call i32 @put_device(i32* %23)
  br label %25

25:                                               ; preds = %11, %8
  ret void
}

declare dso_local i32 @kfree(%struct.mii_bus*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @put_device(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
