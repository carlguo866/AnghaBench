; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/can/extr_dev.c_can_bus_off.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/can/extr_dev.c_can_bus_off.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.can_priv = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"bus-off\0A\00", align 1
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @can_bus_off(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.can_priv*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %4 = load %struct.net_device*, %struct.net_device** %2, align 8
  %5 = call %struct.can_priv* @netdev_priv(%struct.net_device* %4)
  store %struct.can_priv* %5, %struct.can_priv** %3, align 8
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = getelementptr inbounds %struct.net_device, %struct.net_device* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @dev_dbg(i32 %9, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.net_device*, %struct.net_device** %2, align 8
  %12 = call i32 @netif_carrier_off(%struct.net_device* %11)
  %13 = load %struct.can_priv*, %struct.can_priv** %3, align 8
  %14 = getelementptr inbounds %struct.can_priv, %struct.can_priv* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %15, align 4
  %18 = load %struct.can_priv*, %struct.can_priv** %3, align 8
  %19 = getelementptr inbounds %struct.can_priv, %struct.can_priv* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %35

22:                                               ; preds = %1
  %23 = load %struct.can_priv*, %struct.can_priv** %3, align 8
  %24 = getelementptr inbounds %struct.can_priv, %struct.can_priv* %23, i32 0, i32 1
  %25 = load i64, i64* @jiffies, align 8
  %26 = load %struct.can_priv*, %struct.can_priv** %3, align 8
  %27 = getelementptr inbounds %struct.can_priv, %struct.can_priv* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @HZ, align 4
  %30 = mul nsw i32 %28, %29
  %31 = sdiv i32 %30, 1000
  %32 = sext i32 %31 to i64
  %33 = add nsw i64 %25, %32
  %34 = call i32 @mod_timer(i32* %24, i64 %33)
  br label %35

35:                                               ; preds = %22, %1
  ret void
}

declare dso_local %struct.can_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @netif_carrier_off(%struct.net_device*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
