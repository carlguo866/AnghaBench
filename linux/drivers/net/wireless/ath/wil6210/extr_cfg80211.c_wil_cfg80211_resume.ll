; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_cfg80211.c_wil_cfg80211_resume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_cfg80211.c_wil_cfg80211_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiphy = type { i32 }
%struct.wil6210_priv = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"resuming\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wiphy*)* @wil_cfg80211_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wil_cfg80211_resume(%struct.wiphy* %0) #0 {
  %2 = alloca %struct.wiphy*, align 8
  %3 = alloca %struct.wil6210_priv*, align 8
  store %struct.wiphy* %0, %struct.wiphy** %2, align 8
  %4 = load %struct.wiphy*, %struct.wiphy** %2, align 8
  %5 = call %struct.wil6210_priv* @wiphy_to_wil(%struct.wiphy* %4)
  store %struct.wil6210_priv* %5, %struct.wil6210_priv** %3, align 8
  %6 = load %struct.wil6210_priv*, %struct.wil6210_priv** %3, align 8
  %7 = call i32 @wil_dbg_pm(%struct.wil6210_priv* %6, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  ret i32 0
}

declare dso_local %struct.wil6210_priv* @wiphy_to_wil(%struct.wiphy*) #1

declare dso_local i32 @wil_dbg_pm(%struct.wil6210_priv*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
