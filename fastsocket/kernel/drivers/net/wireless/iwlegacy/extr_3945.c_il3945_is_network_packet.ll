; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlegacy/extr_3945.c_il3945_is_network_packet.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlegacy/extr_3945.c_il3945_is_network_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.il_priv = type { i32, i32 }
%struct.ieee80211_hdr = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.il_priv*, %struct.ieee80211_hdr*)* @il3945_is_network_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @il3945_is_network_packet(%struct.il_priv* %0, %struct.ieee80211_hdr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.il_priv*, align 8
  %5 = alloca %struct.ieee80211_hdr*, align 8
  store %struct.il_priv* %0, %struct.il_priv** %4, align 8
  store %struct.ieee80211_hdr* %1, %struct.ieee80211_hdr** %5, align 8
  %6 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %7 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %25 [
    i32 129, label %9
    i32 128, label %17
  ]

9:                                                ; preds = %2
  %10 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %5, align 8
  %11 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %14 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @ether_addr_equal(i32 %12, i32 %15)
  store i32 %16, i32* %3, align 4
  br label %26

17:                                               ; preds = %2
  %18 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %5, align 8
  %19 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.il_priv*, %struct.il_priv** %4, align 8
  %22 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @ether_addr_equal(i32 %20, i32 %23)
  store i32 %24, i32* %3, align 4
  br label %26

25:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %26

26:                                               ; preds = %25, %17, %9
  %27 = load i32, i32* %3, align 4
  ret i32 %27
}

declare dso_local i32 @ether_addr_equal(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
