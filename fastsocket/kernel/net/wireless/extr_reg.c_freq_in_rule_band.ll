; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_reg.c_freq_in_rule_band.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/wireless/extr_reg.c_freq_in_rule_band.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_freq_range = type { i64, i64 }

@ONE_GHZ_IN_KHZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_freq_range*, i32)* @freq_in_rule_band to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @freq_in_rule_band(%struct.ieee80211_freq_range* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ieee80211_freq_range*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ieee80211_freq_range* %0, %struct.ieee80211_freq_range** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = icmp sgt i32 %7, 45000000
  %9 = zext i1 %8 to i64
  %10 = select i1 %8, i32 10000000, i32 2000000
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %5, align 4
  %12 = sext i32 %11 to i64
  %13 = load %struct.ieee80211_freq_range*, %struct.ieee80211_freq_range** %4, align 8
  %14 = getelementptr inbounds %struct.ieee80211_freq_range, %struct.ieee80211_freq_range* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = sub nsw i64 %12, %15
  %17 = call i32 @abs(i64 %16)
  %18 = load i32, i32* %6, align 4
  %19 = icmp sle i32 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %33

21:                                               ; preds = %2
  %22 = load i32, i32* %5, align 4
  %23 = sext i32 %22 to i64
  %24 = load %struct.ieee80211_freq_range*, %struct.ieee80211_freq_range** %4, align 8
  %25 = getelementptr inbounds %struct.ieee80211_freq_range, %struct.ieee80211_freq_range* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = sub nsw i64 %23, %26
  %28 = call i32 @abs(i64 %27)
  %29 = load i32, i32* %6, align 4
  %30 = icmp sle i32 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %21
  store i32 1, i32* %3, align 4
  br label %33

32:                                               ; preds = %21
  store i32 0, i32* %3, align 4
  br label %33

33:                                               ; preds = %32, %31, %20
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local i32 @abs(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
