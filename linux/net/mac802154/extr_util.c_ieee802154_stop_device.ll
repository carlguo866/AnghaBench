; ModuleID = '/home/carl/AnghaBench/linux/net/mac802154/extr_util.c_ieee802154_stop_device.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac802154/extr_util.c_ieee802154_stop_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee802154_local = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ieee802154_stop_device(%struct.ieee802154_local* %0) #0 {
  %2 = alloca %struct.ieee802154_local*, align 8
  store %struct.ieee802154_local* %0, %struct.ieee802154_local** %2, align 8
  %3 = load %struct.ieee802154_local*, %struct.ieee802154_local** %2, align 8
  %4 = getelementptr inbounds %struct.ieee802154_local, %struct.ieee802154_local* %3, i32 0, i32 1
  %5 = load i32, i32* %4, align 4
  %6 = call i32 @flush_workqueue(i32 %5)
  %7 = load %struct.ieee802154_local*, %struct.ieee802154_local** %2, align 8
  %8 = getelementptr inbounds %struct.ieee802154_local, %struct.ieee802154_local* %7, i32 0, i32 0
  %9 = call i32 @hrtimer_cancel(i32* %8)
  %10 = load %struct.ieee802154_local*, %struct.ieee802154_local** %2, align 8
  %11 = call i32 @drv_stop(%struct.ieee802154_local* %10)
  ret void
}

declare dso_local i32 @flush_workqueue(i32) #1

declare dso_local i32 @hrtimer_cancel(i32*) #1

declare dso_local i32 @drv_stop(%struct.ieee802154_local*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
