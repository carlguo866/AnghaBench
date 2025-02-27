; ModuleID = '/home/carl/AnghaBench/linux/net/tls/extr_tls_device_fallback.c_tls_validate_xmit_skb.c'
source_filename = "/home/carl/AnghaBench/linux/net/tls/extr_tls_device_fallback.c_tls_validate_xmit_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.net_device = type { i32 }
%struct.sk_buff = type { i32 }
%struct.TYPE_2__ = type { %struct.net_device* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sk_buff* @tls_validate_xmit_skb(%struct.sock* %0, %struct.net_device* %1, %struct.sk_buff* %2) #0 {
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.sock*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  store %struct.sock* %0, %struct.sock** %5, align 8
  store %struct.net_device* %1, %struct.net_device** %6, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %7, align 8
  %8 = load %struct.net_device*, %struct.net_device** %6, align 8
  %9 = load %struct.sock*, %struct.sock** %5, align 8
  %10 = call %struct.TYPE_2__* @tls_get_ctx(%struct.sock* %9)
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.net_device*, %struct.net_device** %11, align 8
  %13 = icmp eq %struct.net_device* %8, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %3
  %15 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  store %struct.sk_buff* %15, %struct.sk_buff** %4, align 8
  br label %20

16:                                               ; preds = %3
  %17 = load %struct.sock*, %struct.sock** %5, align 8
  %18 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %19 = call %struct.sk_buff* @tls_sw_fallback(%struct.sock* %17, %struct.sk_buff* %18)
  store %struct.sk_buff* %19, %struct.sk_buff** %4, align 8
  br label %20

20:                                               ; preds = %16, %14
  %21 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  ret %struct.sk_buff* %21
}

declare dso_local %struct.TYPE_2__* @tls_get_ctx(%struct.sock*) #1

declare dso_local %struct.sk_buff* @tls_sw_fallback(%struct.sock*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
