; ModuleID = '/home/carl/AnghaBench/linux/net/batman-adv/extr_multicast.c_batadv_mcast_forw_want_all.c'
source_filename = "/home/carl/AnghaBench/linux/net/batman-adv/extr_multicast.c_batadv_mcast_forw_want_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.batadv_priv = type { i32 }
%struct.sk_buff = type { i32 }
%struct.TYPE_2__ = type { i32 }

@NET_XMIT_DROP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.batadv_priv*, %struct.sk_buff*, i16)* @batadv_mcast_forw_want_all to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @batadv_mcast_forw_want_all(%struct.batadv_priv* %0, %struct.sk_buff* %1, i16 zeroext %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.batadv_priv*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i16, align 2
  store %struct.batadv_priv* %0, %struct.batadv_priv** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store i16 %2, i16* %7, align 2
  %8 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %9 = call %struct.TYPE_2__* @eth_hdr(%struct.sk_buff* %8)
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @ntohs(i32 %11)
  switch i32 %12, label %23 [
    i32 129, label %13
    i32 128, label %18
  ]

13:                                               ; preds = %3
  %14 = load %struct.batadv_priv*, %struct.batadv_priv** %5, align 8
  %15 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %16 = load i16, i16* %7, align 2
  %17 = call i32 @batadv_mcast_forw_want_all_ipv4(%struct.batadv_priv* %14, %struct.sk_buff* %15, i16 zeroext %16)
  store i32 %17, i32* %4, align 4
  br label %25

18:                                               ; preds = %3
  %19 = load %struct.batadv_priv*, %struct.batadv_priv** %5, align 8
  %20 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %21 = load i16, i16* %7, align 2
  %22 = call i32 @batadv_mcast_forw_want_all_ipv6(%struct.batadv_priv* %19, %struct.sk_buff* %20, i16 zeroext %21)
  store i32 %22, i32* %4, align 4
  br label %25

23:                                               ; preds = %3
  %24 = load i32, i32* @NET_XMIT_DROP, align 4
  store i32 %24, i32* %4, align 4
  br label %25

25:                                               ; preds = %23, %18, %13
  %26 = load i32, i32* %4, align 4
  ret i32 %26
}

declare dso_local i32 @ntohs(i32) #1

declare dso_local %struct.TYPE_2__* @eth_hdr(%struct.sk_buff*) #1

declare dso_local i32 @batadv_mcast_forw_want_all_ipv4(%struct.batadv_priv*, %struct.sk_buff*, i16 zeroext) #1

declare dso_local i32 @batadv_mcast_forw_want_all_ipv6(%struct.batadv_priv*, %struct.sk_buff*, i16 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
