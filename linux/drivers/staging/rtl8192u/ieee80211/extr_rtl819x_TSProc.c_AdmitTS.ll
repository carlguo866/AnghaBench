; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8192u/ieee80211/extr_rtl819x_TSProc.c_AdmitTS.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8192u/ieee80211/extr_rtl819x_TSProc.c_AdmitTS.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_device = type { i32 }
%struct.ts_common_info = type { i32, i32 }

@jiffies = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_device*, %struct.ts_common_info*, i64)* @AdmitTS to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @AdmitTS(%struct.ieee80211_device* %0, %struct.ts_common_info* %1, i64 %2) #0 {
  %4 = alloca %struct.ieee80211_device*, align 8
  %5 = alloca %struct.ts_common_info*, align 8
  %6 = alloca i64, align 8
  store %struct.ieee80211_device* %0, %struct.ieee80211_device** %4, align 8
  store %struct.ts_common_info* %1, %struct.ts_common_info** %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load %struct.ts_common_info*, %struct.ts_common_info** %5, align 8
  %8 = getelementptr inbounds %struct.ts_common_info, %struct.ts_common_info* %7, i32 0, i32 1
  %9 = call i32 @del_timer_sync(i32* %8)
  %10 = load %struct.ts_common_info*, %struct.ts_common_info** %5, align 8
  %11 = getelementptr inbounds %struct.ts_common_info, %struct.ts_common_info* %10, i32 0, i32 0
  %12 = call i32 @del_timer_sync(i32* %11)
  %13 = load i64, i64* %6, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %23

15:                                               ; preds = %3
  %16 = load %struct.ts_common_info*, %struct.ts_common_info** %5, align 8
  %17 = getelementptr inbounds %struct.ts_common_info, %struct.ts_common_info* %16, i32 0, i32 0
  %18 = load i64, i64* @jiffies, align 8
  %19 = load i64, i64* %6, align 8
  %20 = call i64 @msecs_to_jiffies(i64 %19)
  %21 = add nsw i64 %18, %20
  %22 = call i32 @mod_timer(i32* %17, i64 %21)
  br label %23

23:                                               ; preds = %15, %3
  ret void
}

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i64 @msecs_to_jiffies(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
