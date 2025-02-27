; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192su/ieee80211/extr_ieee80211_softmac.c_ieee80211_associate_abort.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192su/ieee80211/extr_ieee80211_softmac.c_ieee80211_associate_abort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_device = type { i64, i32, i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@IEEE80211_ASSOCIATING_AUTHENTICATING = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [23 x i8] c"Authentication failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"Association failed\0A\00", align 1
@IEEE80211_ASSOCIATING_RETRY = common dso_local global i64 0, align 8
@IEEE80211_SOFTMAC_ASSOC_RETRY_TIME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ieee80211_associate_abort(%struct.ieee80211_device* %0) #0 {
  %2 = alloca %struct.ieee80211_device*, align 8
  %3 = alloca i64, align 8
  store %struct.ieee80211_device* %0, %struct.ieee80211_device** %2, align 8
  %4 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %5 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %4, i32 0, i32 1
  %6 = load i64, i64* %3, align 8
  %7 = call i32 @spin_lock_irqsave(i32* %5, i64 %6)
  %8 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %9 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %8, i32 0, i32 5
  %10 = load i32, i32* %9, align 4
  %11 = add nsw i32 %10, 1
  store i32 %11, i32* %9, align 4
  %12 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %13 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @IEEE80211_ASSOCIATING_AUTHENTICATING, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %24

17:                                               ; preds = %1
  %18 = call i32 @IEEE80211_DEBUG_MGMT(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %19 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %20 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %19, i32 0, i32 4
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %21, align 4
  br label %31

24:                                               ; preds = %1
  %25 = call i32 @IEEE80211_DEBUG_MGMT(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %26 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %27 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %26, i32 0, i32 4
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %28, align 4
  br label %31

31:                                               ; preds = %24, %17
  %32 = load i64, i64* @IEEE80211_ASSOCIATING_RETRY, align 8
  %33 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %34 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %33, i32 0, i32 0
  store i64 %32, i64* %34, align 8
  %35 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %36 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %39 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %38, i32 0, i32 2
  %40 = load i32, i32* @IEEE80211_SOFTMAC_ASSOC_RETRY_TIME, align 4
  %41 = call i32 @queue_delayed_work(i32 %37, i32* %39, i32 %40)
  %42 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %43 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %42, i32 0, i32 1
  %44 = load i64, i64* %3, align 8
  %45 = call i32 @spin_unlock_irqrestore(i32* %43, i64 %44)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @IEEE80211_DEBUG_MGMT(i8*) #1

declare dso_local i32 @queue_delayed_work(i32, i32*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
