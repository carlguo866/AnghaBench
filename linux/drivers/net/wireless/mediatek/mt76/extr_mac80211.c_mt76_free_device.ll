; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/extr_mac80211.c_mt76_free_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt76/extr_mac80211.c_mt76_free_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt76_dev = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mt76_free_device(%struct.mt76_dev* %0) #0 {
  %2 = alloca %struct.mt76_dev*, align 8
  store %struct.mt76_dev* %0, %struct.mt76_dev** %2, align 8
  %3 = load %struct.mt76_dev*, %struct.mt76_dev** %2, align 8
  %4 = call i32 @mt76_tx_free(%struct.mt76_dev* %3)
  %5 = load %struct.mt76_dev*, %struct.mt76_dev** %2, align 8
  %6 = getelementptr inbounds %struct.mt76_dev, %struct.mt76_dev* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @ieee80211_free_hw(i32 %7)
  ret void
}

declare dso_local i32 @mt76_tx_free(%struct.mt76_dev*) #1

declare dso_local i32 @ieee80211_free_hw(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
