; ModuleID = '/home/carl/AnghaBench/openwrt/target/linux/ar71xx/files/drivers/net/ethernet/atheros/ag71xx/extr_ag71xx_phy.c_dev_to_mii_bus.c'
source_filename = "/home/carl/AnghaBench/openwrt/target/linux/ar71xx/files/drivers/net/ethernet/atheros/ag71xx/extr_ag71xx_phy.c_dev_to_mii_bus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mii_bus = type { i32 }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"mdio_bus\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mii_bus* (%struct.device*)* @dev_to_mii_bus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mii_bus* @dev_to_mii_bus(%struct.device* %0) #0 {
  %2 = alloca %struct.mii_bus*, align 8
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.mii_bus*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  %6 = load %struct.device*, %struct.device** %3, align 8
  %7 = call %struct.device* @dev_find_class(%struct.device* %6, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  store %struct.device* %7, %struct.device** %4, align 8
  %8 = load %struct.device*, %struct.device** %4, align 8
  %9 = icmp ne %struct.device* %8, null
  br i1 %9, label %10, label %16

10:                                               ; preds = %1
  %11 = load %struct.device*, %struct.device** %4, align 8
  %12 = call %struct.mii_bus* @to_mii_bus(%struct.device* %11)
  store %struct.mii_bus* %12, %struct.mii_bus** %5, align 8
  %13 = load %struct.device*, %struct.device** %4, align 8
  %14 = call i32 @put_device(%struct.device* %13)
  %15 = load %struct.mii_bus*, %struct.mii_bus** %5, align 8
  store %struct.mii_bus* %15, %struct.mii_bus** %2, align 8
  br label %17

16:                                               ; preds = %1
  store %struct.mii_bus* null, %struct.mii_bus** %2, align 8
  br label %17

17:                                               ; preds = %16, %10
  %18 = load %struct.mii_bus*, %struct.mii_bus** %2, align 8
  ret %struct.mii_bus* %18
}

declare dso_local %struct.device* @dev_find_class(%struct.device*, i8*) #1

declare dso_local %struct.mii_bus* @to_mii_bus(%struct.device*) #1

declare dso_local i32 @put_device(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
