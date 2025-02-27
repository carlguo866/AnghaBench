; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/rsi/extr_rsi_91x_mac80211.c_rsi_indicate_tx_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/rsi/extr_rsi_91x_mac80211.c_rsi_indicate_tx_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rsi_hw = type { i32 }
%struct.sk_buff = type { i32 }
%struct.ieee80211_tx_info = type { i64, i32 }
%struct.skb_info = type { i32 }

@ERR_ZONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"##### No MAC #####\0A\00", align 1
@IEEE80211_TX_STAT_ACK = common dso_local global i32 0, align 4
@IEEE80211_TX_INFO_DRIVER_DATA_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rsi_indicate_tx_status(%struct.rsi_hw* %0, %struct.sk_buff* %1, i32 %2) #0 {
  %4 = alloca %struct.rsi_hw*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ieee80211_tx_info*, align 8
  %8 = alloca %struct.skb_info*, align 8
  store %struct.rsi_hw* %0, %struct.rsi_hw** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %10 = call %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff* %9)
  store %struct.ieee80211_tx_info* %10, %struct.ieee80211_tx_info** %7, align 8
  %11 = load %struct.rsi_hw*, %struct.rsi_hw** %4, align 8
  %12 = getelementptr inbounds %struct.rsi_hw, %struct.rsi_hw* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* @ERR_ZONE, align 4
  %17 = call i32 @rsi_dbg(i32 %16, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %47

18:                                               ; preds = %3
  %19 = load i32, i32* %6, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %27, label %21

21:                                               ; preds = %18
  %22 = load i32, i32* @IEEE80211_TX_STAT_ACK, align 4
  %23 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %7, align 8
  %24 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = or i32 %25, %22
  store i32 %26, i32* %24, align 8
  br label %27

27:                                               ; preds = %21, %18
  %28 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %7, align 8
  %29 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = inttoptr i64 %30 to %struct.skb_info*
  store %struct.skb_info* %31, %struct.skb_info** %8, align 8
  %32 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %33 = load %struct.skb_info*, %struct.skb_info** %8, align 8
  %34 = getelementptr inbounds %struct.skb_info, %struct.skb_info* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @skb_pull(%struct.sk_buff* %32, i32 %35)
  %37 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %7, align 8
  %38 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i32, i32* @IEEE80211_TX_INFO_DRIVER_DATA_SIZE, align 4
  %41 = call i32 @memset(i64 %39, i32 0, i32 %40)
  %42 = load %struct.rsi_hw*, %struct.rsi_hw** %4, align 8
  %43 = getelementptr inbounds %struct.rsi_hw, %struct.rsi_hw* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %46 = call i32 @ieee80211_tx_status_irqsafe(i32 %44, %struct.sk_buff* %45)
  br label %47

47:                                               ; preds = %27, %15
  ret void
}

declare dso_local %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32 @rsi_dbg(i32, i8*) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @memset(i64, i32, i32) #1

declare dso_local i32 @ieee80211_tx_status_irqsafe(i32, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
