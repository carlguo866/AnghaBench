; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlegacy/extr_common.c_il_complete_scan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlegacy/extr_common.c_il_complete_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.il_priv = type { i32*, i32*, i32 }
%struct.cfg80211_scan_info = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"Complete scan in mac80211\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.il_priv*, i32)* @il_complete_scan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @il_complete_scan(%struct.il_priv* %0, i32 %1) #0 {
  %3 = alloca %struct.il_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.cfg80211_scan_info, align 4
  store %struct.il_priv* %0, %struct.il_priv** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = getelementptr inbounds %struct.cfg80211_scan_info, %struct.cfg80211_scan_info* %5, i32 0, i32 0
  %7 = load i32, i32* %4, align 4
  store i32 %7, i32* %6, align 4
  %8 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %9 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %12, label %18

12:                                               ; preds = %2
  %13 = call i32 @D_SCAN(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %15 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @ieee80211_scan_completed(i32 %16, %struct.cfg80211_scan_info* %5)
  br label %18

18:                                               ; preds = %12, %2
  %19 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %20 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %19, i32 0, i32 1
  store i32* null, i32** %20, align 8
  %21 = load %struct.il_priv*, %struct.il_priv** %3, align 8
  %22 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %21, i32 0, i32 0
  store i32* null, i32** %22, align 8
  ret void
}

declare dso_local i32 @D_SCAN(i8*) #1

declare dso_local i32 @ieee80211_scan_completed(i32, %struct.cfg80211_scan_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
