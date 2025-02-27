; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_dev.c_netif_rx_internal.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_dev.c_netif_rx_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }

@netdev_tstamp_prequeue = common dso_local global i32 0, align 4
@rps_needed = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*)* @netif_rx_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @netif_rx_internal(%struct.sk_buff* %0) #0 {
  %2 = alloca %struct.sk_buff*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %2, align 8
  %5 = load i32, i32* @netdev_tstamp_prequeue, align 4
  %6 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %7 = call i32 @net_timestamp_check(i32 %5, %struct.sk_buff* %6)
  %8 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %9 = call i32 @trace_netif_rx(%struct.sk_buff* %8)
  %10 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %11 = call i32 (...) @get_cpu()
  %12 = call i32 @enqueue_to_backlog(%struct.sk_buff* %10, i32 %11, i32* %4)
  store i32 %12, i32* %3, align 4
  %13 = call i32 (...) @put_cpu()
  %14 = load i32, i32* %3, align 4
  ret i32 %14
}

declare dso_local i32 @net_timestamp_check(i32, %struct.sk_buff*) #1

declare dso_local i32 @trace_netif_rx(%struct.sk_buff*) #1

declare dso_local i32 @enqueue_to_backlog(%struct.sk_buff*, i32, i32*) #1

declare dso_local i32 @get_cpu(...) #1

declare dso_local i32 @put_cpu(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
