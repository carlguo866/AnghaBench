; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192e/ieee80211/extr_ieee80211.h_Frame_QoSTID.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/rtl8192e/ieee80211/extr_ieee80211.h_Frame_QoSTID.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hdr_3addr = type { i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@IEEE80211_FCTL_TODS = common dso_local global i32 0, align 4
@IEEE80211_FCTL_FROMDS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @Frame_QoSTID to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Frame_QoSTID(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.ieee80211_hdr_3addr*, align 8
  %4 = alloca i32, align 4
  store i32* %0, i32** %2, align 8
  %5 = load i32*, i32** %2, align 8
  %6 = bitcast i32* %5 to %struct.ieee80211_hdr_3addr*
  store %struct.ieee80211_hdr_3addr* %6, %struct.ieee80211_hdr_3addr** %3, align 8
  %7 = load %struct.ieee80211_hdr_3addr*, %struct.ieee80211_hdr_3addr** %3, align 8
  %8 = getelementptr inbounds %struct.ieee80211_hdr_3addr, %struct.ieee80211_hdr_3addr* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @le16_to_cpu(i32 %9)
  store i32 %10, i32* %4, align 4
  %11 = load i32*, i32** %2, align 8
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @IEEE80211_FCTL_TODS, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %1
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @IEEE80211_FCTL_FROMDS, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br label %21

21:                                               ; preds = %16, %1
  %22 = phi i1 [ false, %1 ], [ %20, %16 ]
  %23 = zext i1 %22 to i64
  %24 = select i1 %22, i32 30, i32 24
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %11, i64 %25
  %27 = bitcast i32* %26 to %struct.TYPE_4__*
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  ret i32 %30
}

declare dso_local i32 @le16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
