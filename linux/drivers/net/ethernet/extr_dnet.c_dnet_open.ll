; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/extr_dnet.c_dnet_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/extr_dnet.c_dnet_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.dnet = type { i32 }

@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @dnet_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dnet_open(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.dnet*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %5 = load %struct.net_device*, %struct.net_device** %3, align 8
  %6 = call %struct.dnet* @netdev_priv(%struct.net_device* %5)
  store %struct.dnet* %6, %struct.dnet** %4, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = getelementptr inbounds %struct.net_device, %struct.net_device* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @EAGAIN, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %30

14:                                               ; preds = %1
  %15 = load %struct.dnet*, %struct.dnet** %4, align 8
  %16 = getelementptr inbounds %struct.dnet, %struct.dnet* %15, i32 0, i32 0
  %17 = call i32 @napi_enable(i32* %16)
  %18 = load %struct.dnet*, %struct.dnet** %4, align 8
  %19 = call i32 @dnet_init_hw(%struct.dnet* %18)
  %20 = load %struct.net_device*, %struct.net_device** %3, align 8
  %21 = getelementptr inbounds %struct.net_device, %struct.net_device* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @phy_start_aneg(i32 %22)
  %24 = load %struct.net_device*, %struct.net_device** %3, align 8
  %25 = getelementptr inbounds %struct.net_device, %struct.net_device* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @phy_start(i32 %26)
  %28 = load %struct.net_device*, %struct.net_device** %3, align 8
  %29 = call i32 @netif_start_queue(%struct.net_device* %28)
  store i32 0, i32* %2, align 4
  br label %30

30:                                               ; preds = %14, %11
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

declare dso_local %struct.dnet* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @napi_enable(i32*) #1

declare dso_local i32 @dnet_init_hw(%struct.dnet*) #1

declare dso_local i32 @phy_start_aneg(i32) #1

declare dso_local i32 @phy_start(i32) #1

declare dso_local i32 @netif_start_queue(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
