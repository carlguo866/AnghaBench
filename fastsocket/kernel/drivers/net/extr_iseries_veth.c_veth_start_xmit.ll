; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_iseries_veth.c_veth_start_xmit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_iseries_veth.c_veth_start_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i8* }
%struct.net_device = type { i32 }
%struct.veth_port = type { i32 }

@NETDEV_TX_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*)* @veth_start_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @veth_start_xmit(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.veth_port*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %10 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %11 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %10, i32 0, i32 0
  %12 = load i8*, i8** %11, align 8
  store i8* %12, i8** %6, align 8
  %13 = load %struct.net_device*, %struct.net_device** %5, align 8
  %14 = call %struct.veth_port* @netdev_priv(%struct.net_device* %13)
  store %struct.veth_port* %14, %struct.veth_port** %7, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = getelementptr inbounds i8, i8* %15, i64 0
  %17 = load i8, i8* %16, align 1
  %18 = zext i8 %17 to i32
  %19 = and i32 %18, 1
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %40, label %21

21:                                               ; preds = %2
  %22 = load i8*, i8** %6, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 5
  %24 = load i8, i8* %23, align 1
  %25 = zext i8 %24 to i32
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %9, align 4
  %27 = shl i32 1, %26
  %28 = load %struct.veth_port*, %struct.veth_port** %7, align 8
  %29 = getelementptr inbounds %struct.veth_port, %struct.veth_port* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = and i32 %27, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %21
  %34 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %35 = call i32 @dev_kfree_skb(%struct.sk_buff* %34)
  %36 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %36, i32* %3, align 4
  br label %52

37:                                               ; preds = %21
  %38 = load i32, i32* %9, align 4
  %39 = shl i32 1, %38
  store i32 %39, i32* %8, align 4
  br label %44

40:                                               ; preds = %2
  %41 = load %struct.veth_port*, %struct.veth_port** %7, align 8
  %42 = getelementptr inbounds %struct.veth_port, %struct.veth_port* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %8, align 4
  br label %44

44:                                               ; preds = %40, %37
  %45 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %46 = load i32, i32* %8, align 4
  %47 = load %struct.net_device*, %struct.net_device** %5, align 8
  %48 = call i32 @veth_transmit_to_many(%struct.sk_buff* %45, i32 %46, %struct.net_device* %47)
  %49 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %50 = call i32 @dev_kfree_skb(%struct.sk_buff* %49)
  %51 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %51, i32* %3, align 4
  br label %52

52:                                               ; preds = %44, %33
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local %struct.veth_port* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @veth_transmit_to_many(%struct.sk_buff*, i32, %struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
