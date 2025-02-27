; ModuleID = '/home/carl/AnghaBench/linux/net/dccp/ccids/extr_ccid2.c_ccid2_hc_tx_send_packet.c'
source_filename = "/home/carl/AnghaBench/linux/net/dccp/ccids/extr_ccid2.c_ccid2_hc_tx_send_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sk_buff = type { i32 }

@CCID_PACKET_WILL_DEQUEUE_LATER = common dso_local global i32 0, align 4
@CCID_PACKET_SEND_AT_ONCE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.sk_buff*)* @ccid2_hc_tx_send_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ccid2_hc_tx_send_packet(%struct.sock* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sock*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  store %struct.sock* %0, %struct.sock** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %6 = load %struct.sock*, %struct.sock** %4, align 8
  %7 = call i32 @ccid2_hc_tx_sk(%struct.sock* %6)
  %8 = call i64 @ccid2_cwnd_network_limited(i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  %11 = load i32, i32* @CCID_PACKET_WILL_DEQUEUE_LATER, align 4
  store i32 %11, i32* %3, align 4
  br label %14

12:                                               ; preds = %2
  %13 = load i32, i32* @CCID_PACKET_SEND_AT_ONCE, align 4
  store i32 %13, i32* %3, align 4
  br label %14

14:                                               ; preds = %12, %10
  %15 = load i32, i32* %3, align 4
  ret i32 %15
}

declare dso_local i64 @ccid2_cwnd_network_limited(i32) #1

declare dso_local i32 @ccid2_hc_tx_sk(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
