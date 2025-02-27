; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/firmware/carl9170fw/carlfw/src/extr_wlan.c_wlan_assign_seq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/firmware/carl9170fw/carlfw/src/extr_wlan.c_wlan_assign_seq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.ieee80211_hdr = type { i32 }

@IEEE80211_SCTL_SEQ = common dso_local global i32 0, align 4
@fw = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_hdr*, i32)* @wlan_assign_seq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wlan_assign_seq(%struct.ieee80211_hdr* %0, i32 %1) #0 {
  %3 = alloca %struct.ieee80211_hdr*, align 8
  %4 = alloca i32, align 4
  store %struct.ieee80211_hdr* %0, %struct.ieee80211_hdr** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* @IEEE80211_SCTL_SEQ, align 4
  %6 = xor i32 %5, -1
  %7 = call i32 @cpu_to_le16(i32 %6)
  %8 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %3, align 8
  %9 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = and i32 %10, %7
  store i32 %11, i32* %9, align 4
  %12 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @fw, i32 0, i32 0, i32 0), align 8
  %13 = load i32, i32* %4, align 4
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds i32, i32* %12, i64 %14
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @cpu_to_le16(i32 %16)
  %18 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %3, align 8
  %19 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = or i32 %20, %17
  store i32 %21, i32* %19, align 4
  %22 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %3, align 8
  %23 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @ieee80211_is_first_frag(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %2
  %28 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @fw, i32 0, i32 0, i32 0), align 8
  %29 = load i32, i32* %4, align 4
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = add nsw i32 %32, 16
  store i32 %33, i32* %31, align 4
  br label %34

34:                                               ; preds = %27, %2
  ret void
}

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i64 @ieee80211_is_first_frag(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
