; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_rc80211_minstrel_ht.c_minstrel_get_duration.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/net/mac80211/extr_rc80211_minstrel_ht.c_minstrel_get_duration.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mcs_group = type { i32* }

@minstrel_mcs_groups = common dso_local global %struct.mcs_group* null, align 8
@MCS_GROUP_RATES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @minstrel_get_duration to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @minstrel_get_duration(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mcs_group*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load %struct.mcs_group*, %struct.mcs_group** @minstrel_mcs_groups, align 8
  %5 = load i32, i32* %2, align 4
  %6 = load i32, i32* @MCS_GROUP_RATES, align 4
  %7 = sdiv i32 %5, %6
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds %struct.mcs_group, %struct.mcs_group* %4, i64 %8
  store %struct.mcs_group* %9, %struct.mcs_group** %3, align 8
  %10 = load %struct.mcs_group*, %struct.mcs_group** %3, align 8
  %11 = getelementptr inbounds %struct.mcs_group, %struct.mcs_group* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = load i32, i32* %2, align 4
  %14 = load i32, i32* @MCS_GROUP_RATES, align 4
  %15 = srem i32 %13, %14
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %12, i64 %16
  %18 = load i32, i32* %17, align 4
  ret i32 %18
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
