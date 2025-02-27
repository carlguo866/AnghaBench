; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/p54/extr_main.c_p54_unregister_common.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/p54/extr_main.c_p54_unregister_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.p54_common* }
%struct.p54_common = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @p54_unregister_common(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca %struct.ieee80211_hw*, align 8
  %3 = alloca %struct.p54_common*, align 8
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %2, align 8
  %4 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %5 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %4, i32 0, i32 0
  %6 = load %struct.p54_common*, %struct.p54_common** %5, align 8
  store %struct.p54_common* %6, %struct.p54_common** %3, align 8
  %7 = load %struct.p54_common*, %struct.p54_common** %3, align 8
  %8 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %1
  %12 = load %struct.p54_common*, %struct.p54_common** %3, align 8
  %13 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %12, i32 0, i32 0
  store i32 0, i32* %13, align 4
  %14 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %2, align 8
  %15 = call i32 @ieee80211_unregister_hw(%struct.ieee80211_hw* %14)
  br label %16

16:                                               ; preds = %11, %1
  %17 = load %struct.p54_common*, %struct.p54_common** %3, align 8
  %18 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %17, i32 0, i32 2
  %19 = call i32 @mutex_destroy(i32* %18)
  %20 = load %struct.p54_common*, %struct.p54_common** %3, align 8
  %21 = getelementptr inbounds %struct.p54_common, %struct.p54_common* %20, i32 0, i32 1
  %22 = call i32 @mutex_destroy(i32* %21)
  ret void
}

declare dso_local i32 @ieee80211_unregister_hw(%struct.ieee80211_hw*) #1

declare dso_local i32 @mutex_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
