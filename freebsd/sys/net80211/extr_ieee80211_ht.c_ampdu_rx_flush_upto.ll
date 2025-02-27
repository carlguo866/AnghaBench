; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_ht.c_ampdu_rx_flush_upto.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net80211/extr_ieee80211_ht.c_ampdu_rx_flush_upto.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_node = type { %struct.ieee80211vap* }
%struct.ieee80211vap = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.ieee80211_rx_ampdu = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_node*, %struct.ieee80211_rx_ampdu*, i32)* @ampdu_rx_flush_upto to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ampdu_rx_flush_upto(%struct.ieee80211_node* %0, %struct.ieee80211_rx_ampdu* %1, i32 %2) #0 {
  %4 = alloca %struct.ieee80211_node*, align 8
  %5 = alloca %struct.ieee80211_rx_ampdu*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ieee80211vap*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ieee80211_node* %0, %struct.ieee80211_node** %4, align 8
  store %struct.ieee80211_rx_ampdu* %1, %struct.ieee80211_rx_ampdu** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.ieee80211_node*, %struct.ieee80211_node** %4, align 8
  %12 = getelementptr inbounds %struct.ieee80211_node, %struct.ieee80211_node* %11, i32 0, i32 0
  %13 = load %struct.ieee80211vap*, %struct.ieee80211vap** %12, align 8
  store %struct.ieee80211vap* %13, %struct.ieee80211vap** %7, align 8
  %14 = load %struct.ieee80211_rx_ampdu*, %struct.ieee80211_rx_ampdu** %5, align 8
  %15 = getelementptr inbounds %struct.ieee80211_rx_ampdu, %struct.ieee80211_rx_ampdu* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %17

17:                                               ; preds = %46, %3
  %18 = load i32, i32* %9, align 4
  %19 = load %struct.ieee80211_rx_ampdu*, %struct.ieee80211_rx_ampdu** %5, align 8
  %20 = getelementptr inbounds %struct.ieee80211_rx_ampdu, %struct.ieee80211_rx_ampdu* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp slt i32 %18, %21
  br i1 %22, label %23, label %49

23:                                               ; preds = %17
  %24 = load %struct.ieee80211_rx_ampdu*, %struct.ieee80211_rx_ampdu** %5, align 8
  %25 = load %struct.ieee80211_node*, %struct.ieee80211_node** %4, align 8
  %26 = load i32, i32* %9, align 4
  %27 = call i32 @ampdu_dispatch_slot(%struct.ieee80211_rx_ampdu* %24, %struct.ieee80211_node* %25, i32 %26)
  store i32 %27, i32* %10, align 4
  %28 = load i32, i32* %10, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %23
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @IEEE80211_SEQ_BA_BEFORE(i32 %31, i32 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %30
  br label %49

36:                                               ; preds = %30
  br label %37

37:                                               ; preds = %36, %23
  %38 = load i32, i32* %10, align 4
  %39 = load %struct.ieee80211vap*, %struct.ieee80211vap** %7, align 8
  %40 = getelementptr inbounds %struct.ieee80211vap, %struct.ieee80211vap* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = add nsw i32 %42, %38
  store i32 %43, i32* %41, align 4
  %44 = load i32, i32* %8, align 4
  %45 = call i32 @IEEE80211_SEQ_INC(i32 %44)
  store i32 %45, i32* %8, align 4
  br label %46

46:                                               ; preds = %37
  %47 = load i32, i32* %9, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %9, align 4
  br label %17

49:                                               ; preds = %35, %17
  %50 = load %struct.ieee80211_rx_ampdu*, %struct.ieee80211_rx_ampdu** %5, align 8
  %51 = load %struct.ieee80211_node*, %struct.ieee80211_node** %4, align 8
  %52 = load i32, i32* %9, align 4
  %53 = load i32, i32* %6, align 4
  %54 = call i32 @ampdu_rx_moveup(%struct.ieee80211_rx_ampdu* %50, %struct.ieee80211_node* %51, i32 %52, i32 %53)
  %55 = load i32, i32* %8, align 4
  %56 = load %struct.ieee80211_rx_ampdu*, %struct.ieee80211_rx_ampdu** %5, align 8
  %57 = getelementptr inbounds %struct.ieee80211_rx_ampdu, %struct.ieee80211_rx_ampdu* %56, i32 0, i32 1
  store i32 %55, i32* %57, align 4
  ret void
}

declare dso_local i32 @ampdu_dispatch_slot(%struct.ieee80211_rx_ampdu*, %struct.ieee80211_node*, i32) #1

declare dso_local i32 @IEEE80211_SEQ_BA_BEFORE(i32, i32) #1

declare dso_local i32 @IEEE80211_SEQ_INC(i32) #1

declare dso_local i32 @ampdu_rx_moveup(%struct.ieee80211_rx_ampdu*, %struct.ieee80211_node*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
