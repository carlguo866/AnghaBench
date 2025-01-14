; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_ip6_tunnel.c_ip6_tnl_dev_init.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_ip6_tunnel.c_ip6_tnl_dev_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ip6_tnl = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@NETIF_F_NETNS_LOCAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @ip6_tnl_dev_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ip6_tnl_dev_init(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ip6_tnl*, align 8
  %5 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = call %struct.ip6_tnl* @netdev_priv(%struct.net_device* %6)
  store %struct.ip6_tnl* %7, %struct.ip6_tnl** %4, align 8
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = call i32 @ip6_tnl_dev_init_gen(%struct.net_device* %8)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* %5, align 4
  store i32 %13, i32* %2, align 4
  br label %31

14:                                               ; preds = %1
  %15 = load %struct.ip6_tnl*, %struct.ip6_tnl** %4, align 8
  %16 = call i32 @ip6_tnl_link_config(%struct.ip6_tnl* %15)
  %17 = load %struct.ip6_tnl*, %struct.ip6_tnl** %4, align 8
  %18 = getelementptr inbounds %struct.ip6_tnl, %struct.ip6_tnl* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %30

22:                                               ; preds = %14
  %23 = load i32, i32* @NETIF_F_NETNS_LOCAL, align 4
  %24 = load %struct.net_device*, %struct.net_device** %3, align 8
  %25 = getelementptr inbounds %struct.net_device, %struct.net_device* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = or i32 %26, %23
  store i32 %27, i32* %25, align 4
  %28 = load %struct.net_device*, %struct.net_device** %3, align 8
  %29 = call i32 @netif_keep_dst(%struct.net_device* %28)
  br label %30

30:                                               ; preds = %22, %14
  store i32 0, i32* %2, align 4
  br label %31

31:                                               ; preds = %30, %12
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

declare dso_local %struct.ip6_tnl* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @ip6_tnl_dev_init_gen(%struct.net_device*) #1

declare dso_local i32 @ip6_tnl_link_config(%struct.ip6_tnl*) #1

declare dso_local i32 @netif_keep_dst(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
