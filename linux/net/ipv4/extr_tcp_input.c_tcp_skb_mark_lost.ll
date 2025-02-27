; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_input.c_tcp_skb_mark_lost.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_input.c_tcp_skb_mark_lost.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcp_sock = type { i32 }
%struct.sk_buff = type { i32 }
%struct.TYPE_2__ = type { i32 }

@TCPCB_LOST = common dso_local global i32 0, align 4
@TCPCB_SACKED_ACKED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tcp_sock*, %struct.sk_buff*)* @tcp_skb_mark_lost to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tcp_skb_mark_lost(%struct.tcp_sock* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.tcp_sock*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  store %struct.tcp_sock* %0, %struct.tcp_sock** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %5 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %6 = call %struct.TYPE_2__* @TCP_SKB_CB(%struct.sk_buff* %5)
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @TCPCB_LOST, align 4
  %10 = load i32, i32* @TCPCB_SACKED_ACKED, align 4
  %11 = or i32 %9, %10
  %12 = and i32 %8, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %35, label %14

14:                                               ; preds = %2
  %15 = load %struct.tcp_sock*, %struct.tcp_sock** %3, align 8
  %16 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %17 = call i32 @tcp_verify_retransmit_hint(%struct.tcp_sock* %15, %struct.sk_buff* %16)
  %18 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %19 = call i64 @tcp_skb_pcount(%struct.sk_buff* %18)
  %20 = load %struct.tcp_sock*, %struct.tcp_sock** %3, align 8
  %21 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = sext i32 %22 to i64
  %24 = add nsw i64 %23, %19
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* %21, align 4
  %26 = load %struct.tcp_sock*, %struct.tcp_sock** %3, align 8
  %27 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %28 = call i32 @tcp_sum_lost(%struct.tcp_sock* %26, %struct.sk_buff* %27)
  %29 = load i32, i32* @TCPCB_LOST, align 4
  %30 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %31 = call %struct.TYPE_2__* @TCP_SKB_CB(%struct.sk_buff* %30)
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = or i32 %33, %29
  store i32 %34, i32* %32, align 4
  br label %35

35:                                               ; preds = %14, %2
  ret void
}

declare dso_local %struct.TYPE_2__* @TCP_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32 @tcp_verify_retransmit_hint(%struct.tcp_sock*, %struct.sk_buff*) #1

declare dso_local i64 @tcp_skb_pcount(%struct.sk_buff*) #1

declare dso_local i32 @tcp_sum_lost(%struct.tcp_sock*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
