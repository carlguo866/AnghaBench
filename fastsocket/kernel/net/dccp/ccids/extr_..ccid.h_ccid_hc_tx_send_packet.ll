; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/dccp/ccids/extr_..ccid.h_ccid_hc_tx_send_packet.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/dccp/ccids/extr_..ccid.h_ccid_hc_tx_send_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccid = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.sock*, %struct.sk_buff*)* }
%struct.sock = type { i32 }
%struct.sk_buff = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ccid*, %struct.sock*, %struct.sk_buff*)* @ccid_hc_tx_send_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ccid_hc_tx_send_packet(%struct.ccid* %0, %struct.sock* %1, %struct.sk_buff* %2) #0 {
  %4 = alloca %struct.ccid*, align 8
  %5 = alloca %struct.sock*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  store %struct.ccid* %0, %struct.ccid** %4, align 8
  store %struct.sock* %1, %struct.sock** %5, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %6, align 8
  store i32 0, i32* %7, align 4
  %8 = load %struct.ccid*, %struct.ccid** %4, align 8
  %9 = getelementptr inbounds %struct.ccid, %struct.ccid* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32 (%struct.sock*, %struct.sk_buff*)*, i32 (%struct.sock*, %struct.sk_buff*)** %11, align 8
  %13 = icmp ne i32 (%struct.sock*, %struct.sk_buff*)* %12, null
  br i1 %13, label %14, label %23

14:                                               ; preds = %3
  %15 = load %struct.ccid*, %struct.ccid** %4, align 8
  %16 = getelementptr inbounds %struct.ccid, %struct.ccid* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32 (%struct.sock*, %struct.sk_buff*)*, i32 (%struct.sock*, %struct.sk_buff*)** %18, align 8
  %20 = load %struct.sock*, %struct.sock** %5, align 8
  %21 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %22 = call i32 %19(%struct.sock* %20, %struct.sk_buff* %21)
  store i32 %22, i32* %7, align 4
  br label %23

23:                                               ; preds = %14, %3
  %24 = load i32, i32* %7, align 4
  ret i32 %24
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
