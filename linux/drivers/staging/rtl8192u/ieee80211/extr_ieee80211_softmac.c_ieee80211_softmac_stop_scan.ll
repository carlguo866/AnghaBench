; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8192u/ieee80211/extr_ieee80211_softmac.c_ieee80211_softmac_stop_scan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8192u/ieee80211/extr_ieee80211_softmac.c_ieee80211_softmac_stop_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_device = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_device*)* @ieee80211_softmac_stop_scan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ieee80211_softmac_stop_scan(%struct.ieee80211_device* %0) #0 {
  %2 = alloca %struct.ieee80211_device*, align 8
  store %struct.ieee80211_device* %0, %struct.ieee80211_device** %2, align 8
  %3 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %4 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %3, i32 0, i32 1
  %5 = call i32 @mutex_lock(i32* %4)
  %6 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %7 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = icmp eq i32 %8, 1
  br i1 %9, label %10, label %16

10:                                               ; preds = %1
  %11 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %12 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %11, i32 0, i32 0
  store i32 0, i32* %12, align 4
  %13 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %14 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %13, i32 0, i32 2
  %15 = call i32 @cancel_delayed_work(i32* %14)
  br label %16

16:                                               ; preds = %10, %1
  %17 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %18 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %17, i32 0, i32 1
  %19 = call i32 @mutex_unlock(i32* %18)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @cancel_delayed_work(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
