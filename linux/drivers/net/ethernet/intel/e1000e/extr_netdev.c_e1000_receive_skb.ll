; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_netdev.c_e1000_receive_skb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_netdev.c_e1000_receive_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_adapter = type { i32 }
%struct.net_device = type { i32 }
%struct.sk_buff = type { i32 }

@E1000_RXD_STAT_VP = common dso_local global i32 0, align 4
@ETH_P_8021Q = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.e1000_adapter*, %struct.net_device*, %struct.sk_buff*, i32, i32)* @e1000_receive_skb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @e1000_receive_skb(%struct.e1000_adapter* %0, %struct.net_device* %1, %struct.sk_buff* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.e1000_adapter*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.e1000_adapter* %0, %struct.e1000_adapter** %6, align 8
  store %struct.net_device* %1, %struct.net_device** %7, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %12 = load i32, i32* %10, align 4
  %13 = call i32 @le16_to_cpu(i32 %12)
  store i32 %13, i32* %11, align 4
  %14 = load %struct.e1000_adapter*, %struct.e1000_adapter** %6, align 8
  %15 = load i32, i32* %9, align 4
  %16 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %17 = call i32 @e1000e_rx_hwtstamp(%struct.e1000_adapter* %14, i32 %15, %struct.sk_buff* %16)
  %18 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %19 = load %struct.net_device*, %struct.net_device** %7, align 8
  %20 = call i32 @eth_type_trans(%struct.sk_buff* %18, %struct.net_device* %19)
  %21 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %22 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 4
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* @E1000_RXD_STAT_VP, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %5
  %28 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %29 = load i32, i32* @ETH_P_8021Q, align 4
  %30 = call i32 @htons(i32 %29)
  %31 = load i32, i32* %11, align 4
  %32 = call i32 @__vlan_hwaccel_put_tag(%struct.sk_buff* %28, i32 %30, i32 %31)
  br label %33

33:                                               ; preds = %27, %5
  %34 = load %struct.e1000_adapter*, %struct.e1000_adapter** %6, align 8
  %35 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %34, i32 0, i32 0
  %36 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %37 = call i32 @napi_gro_receive(i32* %35, %struct.sk_buff* %36)
  ret void
}

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @e1000e_rx_hwtstamp(%struct.e1000_adapter*, i32, %struct.sk_buff*) #1

declare dso_local i32 @eth_type_trans(%struct.sk_buff*, %struct.net_device*) #1

declare dso_local i32 @__vlan_hwaccel_put_tag(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @napi_gro_receive(i32*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
