; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_cfg.c_ieee80211_tdls_add_ext_capab.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_cfg.c_ieee80211_tdls_add_ext_capab.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }

@WLAN_EID_EXT_CAPABILITY = common dso_local global i32 0, align 4
@WLAN_EXT_CAPA5_TDLS_ENABLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sk_buff*)* @ieee80211_tdls_add_ext_capab to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ieee80211_tdls_add_ext_capab(%struct.sk_buff* %0) #0 {
  %2 = alloca %struct.sk_buff*, align 8
  %3 = alloca i32*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %2, align 8
  %4 = load %struct.sk_buff*, %struct.sk_buff** %2, align 8
  %5 = call i64 @skb_put(%struct.sk_buff* %4, i32 7)
  %6 = inttoptr i64 %5 to i8*
  %7 = bitcast i8* %6 to i32*
  store i32* %7, i32** %3, align 8
  %8 = load i32, i32* @WLAN_EID_EXT_CAPABILITY, align 4
  %9 = load i32*, i32** %3, align 8
  %10 = getelementptr inbounds i32, i32* %9, i32 1
  store i32* %10, i32** %3, align 8
  store i32 %8, i32* %9, align 4
  %11 = load i32*, i32** %3, align 8
  %12 = getelementptr inbounds i32, i32* %11, i32 1
  store i32* %12, i32** %3, align 8
  store i32 5, i32* %11, align 4
  %13 = load i32*, i32** %3, align 8
  %14 = getelementptr inbounds i32, i32* %13, i32 1
  store i32* %14, i32** %3, align 8
  store i32 0, i32* %13, align 4
  %15 = load i32*, i32** %3, align 8
  %16 = getelementptr inbounds i32, i32* %15, i32 1
  store i32* %16, i32** %3, align 8
  store i32 0, i32* %15, align 4
  %17 = load i32*, i32** %3, align 8
  %18 = getelementptr inbounds i32, i32* %17, i32 1
  store i32* %18, i32** %3, align 8
  store i32 0, i32* %17, align 4
  %19 = load i32*, i32** %3, align 8
  %20 = getelementptr inbounds i32, i32* %19, i32 1
  store i32* %20, i32** %3, align 8
  store i32 0, i32* %19, align 4
  %21 = load i32, i32* @WLAN_EXT_CAPA5_TDLS_ENABLED, align 4
  %22 = load i32*, i32** %3, align 8
  %23 = getelementptr inbounds i32, i32* %22, i32 1
  store i32* %23, i32** %3, align 8
  store i32 %21, i32* %22, align 4
  ret void
}

declare dso_local i64 @skb_put(%struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
