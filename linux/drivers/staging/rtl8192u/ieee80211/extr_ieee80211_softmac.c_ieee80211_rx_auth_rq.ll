; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8192u/ieee80211/extr_ieee80211_softmac.c_ieee80211_rx_auth_rq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8192u/ieee80211/extr_ieee80211_softmac.c_ieee80211_rx_auth_rq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.sk_buff = type { i32 }

@ETH_ALEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_device*, %struct.sk_buff*)* @ieee80211_rx_auth_rq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ieee80211_rx_auth_rq(%struct.ieee80211_device* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.ieee80211_device*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.ieee80211_device* %0, %struct.ieee80211_device** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %8 = load i32, i32* @ETH_ALEN, align 4
  %9 = zext i32 %8 to i64
  %10 = call i8* @llvm.stacksave()
  store i8* %10, i8** %5, align 8
  %11 = alloca i32, i64 %9, align 16
  store i64 %9, i64* %6, align 8
  %12 = load %struct.ieee80211_device*, %struct.ieee80211_device** %3, align 8
  %13 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* %14, align 4
  %17 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %18 = call i32 @auth_rq_parse(%struct.sk_buff* %17, i32* %11)
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp ne i32 %19, -1
  br i1 %20, label %21, label %25

21:                                               ; preds = %2
  %22 = load %struct.ieee80211_device*, %struct.ieee80211_device** %3, align 8
  %23 = load i32, i32* %7, align 4
  %24 = call i32 @ieee80211_resp_to_auth(%struct.ieee80211_device* %22, i32 %23, i32* %11)
  br label %25

25:                                               ; preds = %21, %2
  %26 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %26)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @auth_rq_parse(%struct.sk_buff*, i32*) #2

declare dso_local i32 @ieee80211_resp_to_auth(%struct.ieee80211_device*, i32, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
