; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/falcon/extr_ethtool.c_ef4_ethtool_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/falcon/extr_ethtool.c_ef4_ethtool_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ef4_nic = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (i32*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32*)* @ef4_ethtool_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ef4_ethtool_reset(%struct.net_device* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.ef4_nic*, align 8
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load %struct.net_device*, %struct.net_device** %4, align 8
  %9 = call %struct.ef4_nic* @netdev_priv(%struct.net_device* %8)
  store %struct.ef4_nic* %9, %struct.ef4_nic** %6, align 8
  %10 = load %struct.ef4_nic*, %struct.ef4_nic** %6, align 8
  %11 = getelementptr inbounds %struct.ef4_nic, %struct.ef4_nic* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32 (i32*)*, i32 (i32*)** %13, align 8
  %15 = load i32*, i32** %5, align 8
  %16 = call i32 %14(i32* %15)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = load i32, i32* %7, align 4
  store i32 %20, i32* %3, align 4
  br label %25

21:                                               ; preds = %2
  %22 = load %struct.ef4_nic*, %struct.ef4_nic** %6, align 8
  %23 = load i32, i32* %7, align 4
  %24 = call i32 @ef4_reset(%struct.ef4_nic* %22, i32 %23)
  store i32 %24, i32* %3, align 4
  br label %25

25:                                               ; preds = %21, %19
  %26 = load i32, i32* %3, align 4
  ret i32 %26
}

declare dso_local %struct.ef4_nic* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @ef4_reset(%struct.ef4_nic*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
