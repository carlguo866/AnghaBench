; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_tcp_input.c_tcp_skb_timedout.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/ipv4/extr_tcp_input.c_tcp_skb_timedout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sk_buff = type { i32 }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i64 }

@tcp_time_stamp = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.sk_buff*)* @tcp_skb_timedout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcp_skb_timedout(%struct.sock* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  store %struct.sock* %0, %struct.sock** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %5 = load i64, i64* @tcp_time_stamp, align 8
  %6 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %7 = call %struct.TYPE_4__* @TCP_SKB_CB(%struct.sk_buff* %6)
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = sub nsw i64 %5, %9
  %11 = load %struct.sock*, %struct.sock** %3, align 8
  %12 = call %struct.TYPE_3__* @inet_csk(%struct.sock* %11)
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp sgt i64 %10, %14
  %16 = zext i1 %15 to i32
  ret i32 %16
}

declare dso_local %struct.TYPE_4__* @TCP_SKB_CB(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_3__* @inet_csk(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
