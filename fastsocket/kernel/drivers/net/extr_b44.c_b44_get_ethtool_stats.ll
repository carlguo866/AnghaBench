; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_b44.c_b44_get_ethtool_stats.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_b44.c_b44_get_ethtool_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_stats = type { i32 }
%struct.b44 = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@b44_gstrings = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.ethtool_stats*, i32*)* @b44_get_ethtool_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @b44_get_ethtool_stats(%struct.net_device* %0, %struct.ethtool_stats* %1, i32* %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_stats*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.b44*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_stats* %1, %struct.ethtool_stats** %5, align 8
  store i32* %2, i32** %6, align 8
  %10 = load %struct.net_device*, %struct.net_device** %4, align 8
  %11 = call %struct.b44* @netdev_priv(%struct.net_device* %10)
  store %struct.b44* %11, %struct.b44** %7, align 8
  %12 = load %struct.b44*, %struct.b44** %7, align 8
  %13 = getelementptr inbounds %struct.b44, %struct.b44* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  store i64* %14, i64** %8, align 8
  %15 = load %struct.b44*, %struct.b44** %7, align 8
  %16 = getelementptr inbounds %struct.b44, %struct.b44* %15, i32 0, i32 0
  %17 = call i32 @spin_lock_irq(i32* %16)
  %18 = load %struct.b44*, %struct.b44** %7, align 8
  %19 = call i32 @b44_stats_update(%struct.b44* %18)
  store i64 0, i64* %9, align 8
  br label %20

20:                                               ; preds = %32, %3
  %21 = load i64, i64* %9, align 8
  %22 = load i32, i32* @b44_gstrings, align 4
  %23 = call i64 @ARRAY_SIZE(i32 %22)
  %24 = icmp slt i64 %21, %23
  br i1 %24, label %25, label %35

25:                                               ; preds = %20
  %26 = load i64*, i64** %8, align 8
  %27 = getelementptr inbounds i64, i64* %26, i32 1
  store i64* %27, i64** %8, align 8
  %28 = load i64, i64* %26, align 8
  %29 = trunc i64 %28 to i32
  %30 = load i32*, i32** %6, align 8
  %31 = getelementptr inbounds i32, i32* %30, i32 1
  store i32* %31, i32** %6, align 8
  store i32 %29, i32* %30, align 4
  br label %32

32:                                               ; preds = %25
  %33 = load i64, i64* %9, align 8
  %34 = add nsw i64 %33, 1
  store i64 %34, i64* %9, align 8
  br label %20

35:                                               ; preds = %20
  %36 = load %struct.b44*, %struct.b44** %7, align 8
  %37 = getelementptr inbounds %struct.b44, %struct.b44* %36, i32 0, i32 0
  %38 = call i32 @spin_unlock_irq(i32* %37)
  ret void
}

declare dso_local %struct.b44* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @b44_stats_update(%struct.b44*) #1

declare dso_local i64 @ARRAY_SIZE(i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
