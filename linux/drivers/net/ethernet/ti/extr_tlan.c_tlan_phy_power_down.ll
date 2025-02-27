; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_tlan.c_tlan_phy_power_down.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_tlan.c_tlan_phy_power_down.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32 }
%struct.tlan_priv = type { i64*, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@TLAN_DEBUG_GNRL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"%s: Powering down PHY(s).\0A\00", align 1
@MII_GC_PDOWN = common dso_local global i32 0, align 4
@MII_GC_LOOPBK = common dso_local global i32 0, align 4
@MII_GC_ISOLATE = common dso_local global i32 0, align 4
@MII_GEN_CTL = common dso_local global i32 0, align 4
@TLAN_PHY_NONE = common dso_local global i64 0, align 8
@TLAN_ADAPTER_USE_INTERN_10 = common dso_local global i32 0, align 4
@TLAN_TIMER_PHY_PUP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @tlan_phy_power_down to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tlan_phy_power_down(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.tlan_priv*, align 8
  %4 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %5 = load %struct.net_device*, %struct.net_device** %2, align 8
  %6 = call %struct.tlan_priv* @netdev_priv(%struct.net_device* %5)
  store %struct.tlan_priv* %6, %struct.tlan_priv** %3, align 8
  %7 = load i32, i32* @TLAN_DEBUG_GNRL, align 4
  %8 = load %struct.net_device*, %struct.net_device** %2, align 8
  %9 = getelementptr inbounds %struct.net_device, %struct.net_device* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @TLAN_DBG(i32 %7, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %10)
  %12 = load i32, i32* @MII_GC_PDOWN, align 4
  %13 = load i32, i32* @MII_GC_LOOPBK, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @MII_GC_ISOLATE, align 4
  %16 = or i32 %14, %15
  store i32 %16, i32* %4, align 4
  %17 = load %struct.net_device*, %struct.net_device** %2, align 8
  %18 = getelementptr inbounds %struct.net_device, %struct.net_device* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @tlan_mii_sync(i32 %19)
  %21 = load %struct.net_device*, %struct.net_device** %2, align 8
  %22 = load %struct.tlan_priv*, %struct.tlan_priv** %3, align 8
  %23 = getelementptr inbounds %struct.tlan_priv, %struct.tlan_priv* %22, i32 0, i32 0
  %24 = load i64*, i64** %23, align 8
  %25 = load %struct.tlan_priv*, %struct.tlan_priv** %3, align 8
  %26 = getelementptr inbounds %struct.tlan_priv, %struct.tlan_priv* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = getelementptr inbounds i64, i64* %24, i64 %27
  %29 = load i64, i64* %28, align 8
  %30 = load i32, i32* @MII_GEN_CTL, align 4
  %31 = load i32, i32* %4, align 4
  %32 = call i32 @tlan_mii_write_reg(%struct.net_device* %21, i64 %29, i32 %30, i32 %31)
  %33 = load %struct.tlan_priv*, %struct.tlan_priv** %3, align 8
  %34 = getelementptr inbounds %struct.tlan_priv, %struct.tlan_priv* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp eq i64 %35, 0
  br i1 %36, label %37, label %70

37:                                               ; preds = %1
  %38 = load %struct.tlan_priv*, %struct.tlan_priv** %3, align 8
  %39 = getelementptr inbounds %struct.tlan_priv, %struct.tlan_priv* %38, i32 0, i32 0
  %40 = load i64*, i64** %39, align 8
  %41 = getelementptr inbounds i64, i64* %40, i64 1
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @TLAN_PHY_NONE, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %45, label %70

45:                                               ; preds = %37
  %46 = load %struct.tlan_priv*, %struct.tlan_priv** %3, align 8
  %47 = getelementptr inbounds %struct.tlan_priv, %struct.tlan_priv* %46, i32 0, i32 2
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @TLAN_ADAPTER_USE_INTERN_10, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %45
  %55 = load i32, i32* @MII_GC_ISOLATE, align 4
  store i32 %55, i32* %4, align 4
  br label %56

56:                                               ; preds = %54, %45
  %57 = load %struct.net_device*, %struct.net_device** %2, align 8
  %58 = getelementptr inbounds %struct.net_device, %struct.net_device* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @tlan_mii_sync(i32 %59)
  %61 = load %struct.net_device*, %struct.net_device** %2, align 8
  %62 = load %struct.tlan_priv*, %struct.tlan_priv** %3, align 8
  %63 = getelementptr inbounds %struct.tlan_priv, %struct.tlan_priv* %62, i32 0, i32 0
  %64 = load i64*, i64** %63, align 8
  %65 = getelementptr inbounds i64, i64* %64, i64 1
  %66 = load i64, i64* %65, align 8
  %67 = load i32, i32* @MII_GEN_CTL, align 4
  %68 = load i32, i32* %4, align 4
  %69 = call i32 @tlan_mii_write_reg(%struct.net_device* %61, i64 %66, i32 %67, i32 %68)
  br label %70

70:                                               ; preds = %56, %37, %1
  %71 = load %struct.net_device*, %struct.net_device** %2, align 8
  %72 = call i32 @msecs_to_jiffies(i32 50)
  %73 = load i32, i32* @TLAN_TIMER_PHY_PUP, align 4
  %74 = call i32 @tlan_set_timer(%struct.net_device* %71, i32 %72, i32 %73)
  ret void
}

declare dso_local %struct.tlan_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @TLAN_DBG(i32, i8*, i32) #1

declare dso_local i32 @tlan_mii_sync(i32) #1

declare dso_local i32 @tlan_mii_write_reg(%struct.net_device*, i64, i32, i32) #1

declare dso_local i32 @tlan_set_timer(%struct.net_device*, i32, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
