; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/spi/extr_mcp251x.c_mcp251x_error_skb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/spi/extr_mcp251x.c_mcp251x_error_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.sk_buff = type { i32 }
%struct.can_frame = type { i32, i32* }

@.str = private unnamed_addr constant [27 x i8] c"cannot allocate error skb\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, i32, i32)* @mcp251x_error_skb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mcp251x_error_skb(%struct.net_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.can_frame*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load %struct.net_device*, %struct.net_device** %4, align 8
  %10 = call %struct.sk_buff* @alloc_can_err_skb(%struct.net_device* %9, %struct.can_frame** %8)
  store %struct.sk_buff* %10, %struct.sk_buff** %7, align 8
  %11 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %12 = icmp ne %struct.sk_buff* %11, null
  br i1 %12, label %13, label %26

13:                                               ; preds = %3
  %14 = load i32, i32* %5, align 4
  %15 = load %struct.can_frame*, %struct.can_frame** %8, align 8
  %16 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = or i32 %17, %14
  store i32 %18, i32* %16, align 8
  %19 = load i32, i32* %6, align 4
  %20 = load %struct.can_frame*, %struct.can_frame** %8, align 8
  %21 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 1
  store i32 %19, i32* %23, align 4
  %24 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %25 = call i32 @netif_rx_ni(%struct.sk_buff* %24)
  br label %29

26:                                               ; preds = %3
  %27 = load %struct.net_device*, %struct.net_device** %4, align 8
  %28 = call i32 @netdev_err(%struct.net_device* %27, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %29

29:                                               ; preds = %26, %13
  ret void
}

declare dso_local %struct.sk_buff* @alloc_can_err_skb(%struct.net_device*, %struct.can_frame**) #1

declare dso_local i32 @netif_rx_ni(%struct.sk_buff*) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
