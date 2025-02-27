; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_nl80211.c_nl80211_leave_ocb.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_nl80211.c_nl80211_leave_ocb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.genl_info = type { %struct.net_device** }
%struct.net_device = type { i32 }
%struct.cfg80211_registered_device = type opaque

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.genl_info*)* @nl80211_leave_ocb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nl80211_leave_ocb(%struct.sk_buff* %0, %struct.genl_info* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.genl_info*, align 8
  %5 = alloca %struct.cfg80211_registered_device*, align 8
  %6 = alloca %struct.net_device*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store %struct.genl_info* %1, %struct.genl_info** %4, align 8
  %7 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %8 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %7, i32 0, i32 0
  %9 = load %struct.net_device**, %struct.net_device*** %8, align 8
  %10 = getelementptr inbounds %struct.net_device*, %struct.net_device** %9, i64 0
  %11 = load %struct.net_device*, %struct.net_device** %10, align 8
  %12 = bitcast %struct.net_device* %11 to %struct.cfg80211_registered_device*
  store %struct.cfg80211_registered_device* %12, %struct.cfg80211_registered_device** %5, align 8
  %13 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %14 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %13, i32 0, i32 0
  %15 = load %struct.net_device**, %struct.net_device*** %14, align 8
  %16 = getelementptr inbounds %struct.net_device*, %struct.net_device** %15, i64 1
  %17 = load %struct.net_device*, %struct.net_device** %16, align 8
  store %struct.net_device* %17, %struct.net_device** %6, align 8
  %18 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %5, align 8
  %19 = bitcast %struct.cfg80211_registered_device* %18 to %struct.net_device*
  %20 = load %struct.net_device*, %struct.net_device** %6, align 8
  %21 = call i32 @cfg80211_leave_ocb(%struct.net_device* %19, %struct.net_device* %20)
  ret i32 %21
}

declare dso_local i32 @cfg80211_leave_ocb(%struct.net_device*, %struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
