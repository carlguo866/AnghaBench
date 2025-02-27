; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_ip_vti.c_vti_tunnel_init.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_ip_vti.c_vti_tunnel_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32, i32, i32, i32 }
%struct.ip_tunnel = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.iphdr }
%struct.iphdr = type { i32, i32 }

@IFF_NOARP = common dso_local global i32 0, align 4
@NETIF_F_LLTX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @vti_tunnel_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vti_tunnel_init(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.ip_tunnel*, align 8
  %4 = alloca %struct.iphdr*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %5 = load %struct.net_device*, %struct.net_device** %2, align 8
  %6 = call %struct.ip_tunnel* @netdev_priv(%struct.net_device* %5)
  store %struct.ip_tunnel* %6, %struct.ip_tunnel** %3, align 8
  %7 = load %struct.ip_tunnel*, %struct.ip_tunnel** %3, align 8
  %8 = getelementptr inbounds %struct.ip_tunnel, %struct.ip_tunnel* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  store %struct.iphdr* %9, %struct.iphdr** %4, align 8
  %10 = load %struct.net_device*, %struct.net_device** %2, align 8
  %11 = getelementptr inbounds %struct.net_device, %struct.net_device* %10, i32 0, i32 4
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.iphdr*, %struct.iphdr** %4, align 8
  %14 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %13, i32 0, i32 1
  %15 = call i32 @memcpy(i32 %12, i32* %14, i32 4)
  %16 = load %struct.net_device*, %struct.net_device** %2, align 8
  %17 = getelementptr inbounds %struct.net_device, %struct.net_device* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.iphdr*, %struct.iphdr** %4, align 8
  %20 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %19, i32 0, i32 0
  %21 = call i32 @memcpy(i32 %18, i32* %20, i32 4)
  %22 = load i32, i32* @IFF_NOARP, align 4
  %23 = load %struct.net_device*, %struct.net_device** %2, align 8
  %24 = getelementptr inbounds %struct.net_device, %struct.net_device* %23, i32 0, i32 2
  store i32 %22, i32* %24, align 4
  %25 = load %struct.net_device*, %struct.net_device** %2, align 8
  %26 = getelementptr inbounds %struct.net_device, %struct.net_device* %25, i32 0, i32 0
  store i32 4, i32* %26, align 4
  %27 = load i32, i32* @NETIF_F_LLTX, align 4
  %28 = load %struct.net_device*, %struct.net_device** %2, align 8
  %29 = getelementptr inbounds %struct.net_device, %struct.net_device* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = or i32 %30, %27
  store i32 %31, i32* %29, align 4
  %32 = load %struct.net_device*, %struct.net_device** %2, align 8
  %33 = call i32 @netif_keep_dst(%struct.net_device* %32)
  %34 = load %struct.net_device*, %struct.net_device** %2, align 8
  %35 = call i32 @ip_tunnel_init(%struct.net_device* %34)
  ret i32 %35
}

declare dso_local %struct.ip_tunnel* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @netif_keep_dst(%struct.net_device*) #1

declare dso_local i32 @ip_tunnel_init(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
