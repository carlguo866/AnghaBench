; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8187se/ieee80211/extr_ieee80211_softmac.c_ieee80211_associate_step2.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8187se/ieee80211/extr_ieee80211_softmac.c_ieee80211_associate_step2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_device = type { %struct.TYPE_6__, %struct.TYPE_5__, %struct.ieee80211_network }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i32 }
%struct.ieee80211_network = type { i32 }
%struct.sk_buff = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"Sending association request\0A\00", align 1
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ieee80211_associate_step2(%struct.ieee80211_device* %0) #0 {
  %2 = alloca %struct.ieee80211_device*, align 8
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.ieee80211_network*, align 8
  store %struct.ieee80211_device* %0, %struct.ieee80211_device** %2, align 8
  %5 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %6 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %5, i32 0, i32 2
  store %struct.ieee80211_network* %6, %struct.ieee80211_network** %4, align 8
  %7 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %8 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %7, i32 0, i32 0
  %9 = call i32 @del_timer_sync(%struct.TYPE_6__* %8)
  %10 = call i32 @IEEE80211_DEBUG_MGMT(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %12 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %13, align 8
  %16 = load %struct.ieee80211_network*, %struct.ieee80211_network** %4, align 8
  %17 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %18 = call %struct.sk_buff* @ieee80211_association_req(%struct.ieee80211_network* %16, %struct.ieee80211_device* %17)
  store %struct.sk_buff* %18, %struct.sk_buff** %3, align 8
  %19 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %20 = icmp ne %struct.sk_buff* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %1
  %22 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %23 = call i32 @ieee80211_associate_abort(%struct.ieee80211_device* %22)
  br label %45

24:                                               ; preds = %1
  %25 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %26 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %27 = call i32 @softmac_mgmt_xmit(%struct.sk_buff* %25, %struct.ieee80211_device* %26)
  %28 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %29 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %28, i32 0, i32 0
  %30 = call i32 @timer_pending(%struct.TYPE_6__* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %44, label %32

32:                                               ; preds = %24
  %33 = load i64, i64* @jiffies, align 8
  %34 = load i32, i32* @HZ, align 4
  %35 = sdiv i32 %34, 2
  %36 = sext i32 %35 to i64
  %37 = add nsw i64 %33, %36
  %38 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %39 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  store i64 %37, i64* %40, align 8
  %41 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %42 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %41, i32 0, i32 0
  %43 = call i32 @add_timer(%struct.TYPE_6__* %42)
  br label %44

44:                                               ; preds = %32, %24
  br label %45

45:                                               ; preds = %44, %21
  ret void
}

declare dso_local i32 @del_timer_sync(%struct.TYPE_6__*) #1

declare dso_local i32 @IEEE80211_DEBUG_MGMT(i8*) #1

declare dso_local %struct.sk_buff* @ieee80211_association_req(%struct.ieee80211_network*, %struct.ieee80211_device*) #1

declare dso_local i32 @ieee80211_associate_abort(%struct.ieee80211_device*) #1

declare dso_local i32 @softmac_mgmt_xmit(%struct.sk_buff*, %struct.ieee80211_device*) #1

declare dso_local i32 @timer_pending(%struct.TYPE_6__*) #1

declare dso_local i32 @add_timer(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
