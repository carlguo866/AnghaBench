; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/extr_socket.c_sock_tx_timestamp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/extr_socket.c_sock_tx_timestamp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msghdr = type { i32 }
%struct.sock = type { i32 }
%union.skb_shared_tx = type { i64 }

@SOCK_TIMESTAMPING_TX_HARDWARE = common dso_local global i32 0, align 4
@SOCK_TIMESTAMPING_TX_SOFTWARE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sock_tx_timestamp(%struct.msghdr* %0, %struct.sock* %1, %union.skb_shared_tx* %2) #0 {
  %4 = alloca %struct.msghdr*, align 8
  %5 = alloca %struct.sock*, align 8
  %6 = alloca %union.skb_shared_tx*, align 8
  store %struct.msghdr* %0, %struct.msghdr** %4, align 8
  store %struct.sock* %1, %struct.sock** %5, align 8
  store %union.skb_shared_tx* %2, %union.skb_shared_tx** %6, align 8
  %7 = load %union.skb_shared_tx*, %union.skb_shared_tx** %6, align 8
  %8 = bitcast %union.skb_shared_tx* %7 to i64*
  store i64 0, i64* %8, align 8
  %9 = load %struct.sock*, %struct.sock** %5, align 8
  %10 = load i32, i32* @SOCK_TIMESTAMPING_TX_HARDWARE, align 4
  %11 = call i64 @sock_flag(%struct.sock* %9, i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %3
  %14 = load %union.skb_shared_tx*, %union.skb_shared_tx** %6, align 8
  %15 = bitcast %union.skb_shared_tx* %14 to i32*
  store i32 1, i32* %15, align 8
  br label %16

16:                                               ; preds = %13, %3
  %17 = load %struct.sock*, %struct.sock** %5, align 8
  %18 = load i32, i32* @SOCK_TIMESTAMPING_TX_SOFTWARE, align 4
  %19 = call i64 @sock_flag(%struct.sock* %17, i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %16
  %22 = load %union.skb_shared_tx*, %union.skb_shared_tx** %6, align 8
  %23 = bitcast %union.skb_shared_tx* %22 to i32*
  store i32 1, i32* %23, align 8
  br label %24

24:                                               ; preds = %21, %16
  ret i32 0
}

declare dso_local i64 @sock_flag(%struct.sock*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
