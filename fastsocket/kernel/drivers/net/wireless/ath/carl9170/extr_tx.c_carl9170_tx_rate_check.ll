; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/carl9170/extr_tx.c_carl9170_tx_rate_check.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/carl9170/extr_tx.c_carl9170_tx_rate_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ar9170 = type { i32 }
%struct.sk_buff = type { i64 }
%struct._carl9170_tx_superframe = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ar9170*, %struct.sk_buff*, %struct.sk_buff*)* @carl9170_tx_rate_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @carl9170_tx_rate_check(%struct.ar9170* %0, %struct.sk_buff* %1, %struct.sk_buff* %2) #0 {
  %4 = alloca %struct.ar9170*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct._carl9170_tx_superframe*, align 8
  %8 = alloca %struct._carl9170_tx_superframe*, align 8
  store %struct.ar9170* %0, %struct.ar9170** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %6, align 8
  %9 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %10 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to i8*
  %13 = bitcast i8* %12 to %struct._carl9170_tx_superframe*
  store %struct._carl9170_tx_superframe* %13, %struct._carl9170_tx_superframe** %7, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %15 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to i8*
  %18 = bitcast i8* %17 to %struct._carl9170_tx_superframe*
  store %struct._carl9170_tx_superframe* %18, %struct._carl9170_tx_superframe** %8, align 8
  %19 = load %struct._carl9170_tx_superframe*, %struct._carl9170_tx_superframe** %7, align 8
  %20 = getelementptr inbounds %struct._carl9170_tx_superframe, %struct._carl9170_tx_superframe* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load %struct._carl9170_tx_superframe*, %struct._carl9170_tx_superframe** %8, align 8
  %24 = getelementptr inbounds %struct._carl9170_tx_superframe, %struct._carl9170_tx_superframe* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp eq i64 %22, %26
  %28 = zext i1 %27 to i32
  ret i32 %28
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
