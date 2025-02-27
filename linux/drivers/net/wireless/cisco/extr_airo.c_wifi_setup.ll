; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/cisco/extr_airo.c_wifi_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/cisco/extr_airo.c_wifi_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32*, i32* }

@airo11_netdev_ops = common dso_local global i32 0, align 4
@airo_header_ops = common dso_local global i32 0, align 4
@airo_handler_def = common dso_local global i32 0, align 4
@ARPHRD_IEEE80211 = common dso_local global i32 0, align 4
@ETH_HLEN = common dso_local global i32 0, align 4
@AIRO_DEF_MTU = common dso_local global i32 0, align 4
@MIC_MSGLEN_MAX = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@IFF_BROADCAST = common dso_local global i32 0, align 4
@IFF_MULTICAST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @wifi_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wifi_setup(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %3 = load %struct.net_device*, %struct.net_device** %2, align 8
  %4 = getelementptr inbounds %struct.net_device, %struct.net_device* %3, i32 0, i32 11
  store i32* @airo11_netdev_ops, i32** %4, align 8
  %5 = load %struct.net_device*, %struct.net_device** %2, align 8
  %6 = getelementptr inbounds %struct.net_device, %struct.net_device* %5, i32 0, i32 10
  store i32* @airo_header_ops, i32** %6, align 8
  %7 = load %struct.net_device*, %struct.net_device** %2, align 8
  %8 = getelementptr inbounds %struct.net_device, %struct.net_device* %7, i32 0, i32 9
  store i32* @airo_handler_def, i32** %8, align 8
  %9 = load i32, i32* @ARPHRD_IEEE80211, align 4
  %10 = load %struct.net_device*, %struct.net_device** %2, align 8
  %11 = getelementptr inbounds %struct.net_device, %struct.net_device* %10, i32 0, i32 8
  store i32 %9, i32* %11, align 8
  %12 = load i32, i32* @ETH_HLEN, align 4
  %13 = load %struct.net_device*, %struct.net_device** %2, align 8
  %14 = getelementptr inbounds %struct.net_device, %struct.net_device* %13, i32 0, i32 7
  store i32 %12, i32* %14, align 4
  %15 = load i32, i32* @AIRO_DEF_MTU, align 4
  %16 = load %struct.net_device*, %struct.net_device** %2, align 8
  %17 = getelementptr inbounds %struct.net_device, %struct.net_device* %16, i32 0, i32 6
  store i32 %15, i32* %17, align 8
  %18 = load %struct.net_device*, %struct.net_device** %2, align 8
  %19 = getelementptr inbounds %struct.net_device, %struct.net_device* %18, i32 0, i32 0
  store i32 68, i32* %19, align 8
  %20 = load i32, i32* @MIC_MSGLEN_MAX, align 4
  %21 = load %struct.net_device*, %struct.net_device** %2, align 8
  %22 = getelementptr inbounds %struct.net_device, %struct.net_device* %21, i32 0, i32 5
  store i32 %20, i32* %22, align 4
  %23 = load i32, i32* @ETH_ALEN, align 4
  %24 = load %struct.net_device*, %struct.net_device** %2, align 8
  %25 = getelementptr inbounds %struct.net_device, %struct.net_device* %24, i32 0, i32 4
  store i32 %23, i32* %25, align 8
  %26 = load %struct.net_device*, %struct.net_device** %2, align 8
  %27 = getelementptr inbounds %struct.net_device, %struct.net_device* %26, i32 0, i32 1
  store i32 100, i32* %27, align 4
  %28 = load %struct.net_device*, %struct.net_device** %2, align 8
  %29 = getelementptr inbounds %struct.net_device, %struct.net_device* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @eth_broadcast_addr(i32 %30)
  %32 = load i32, i32* @IFF_BROADCAST, align 4
  %33 = load i32, i32* @IFF_MULTICAST, align 4
  %34 = or i32 %32, %33
  %35 = load %struct.net_device*, %struct.net_device** %2, align 8
  %36 = getelementptr inbounds %struct.net_device, %struct.net_device* %35, i32 0, i32 2
  store i32 %34, i32* %36, align 8
  ret void
}

declare dso_local i32 @eth_broadcast_addr(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
