; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/extr_if_ath_tx.c_ath_tx_set_clrdmask.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/extr_if_ath_tx.c_ath_tx_set_clrdmask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_softc = type { i32 }
%struct.ath_node = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@IEEE80211_TID_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath_softc*, %struct.ath_node*)* @ath_tx_set_clrdmask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath_tx_set_clrdmask(%struct.ath_softc* %0, %struct.ath_node* %1) #0 {
  %3 = alloca %struct.ath_softc*, align 8
  %4 = alloca %struct.ath_node*, align 8
  %5 = alloca i32, align 4
  store %struct.ath_softc* %0, %struct.ath_softc** %3, align 8
  store %struct.ath_node* %1, %struct.ath_node** %4, align 8
  %6 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %7 = call i32 @ATH_TX_LOCK_ASSERT(%struct.ath_softc* %6)
  store i32 0, i32* %5, align 4
  br label %8

8:                                                ; preds = %24, %2
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @IEEE80211_TID_SIZE, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %27

12:                                               ; preds = %8
  %13 = load %struct.ath_node*, %struct.ath_node** %4, align 8
  %14 = getelementptr inbounds %struct.ath_node, %struct.ath_node* %13, i32 0, i32 1
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = load i32, i32* %5, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp eq i32 %20, 1
  br i1 %21, label %22, label %23

22:                                               ; preds = %12
  br label %30

23:                                               ; preds = %12
  br label %24

24:                                               ; preds = %23
  %25 = load i32, i32* %5, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %5, align 4
  br label %8

27:                                               ; preds = %8
  %28 = load %struct.ath_node*, %struct.ath_node** %4, align 8
  %29 = getelementptr inbounds %struct.ath_node, %struct.ath_node* %28, i32 0, i32 0
  store i32 1, i32* %29, align 8
  br label %30

30:                                               ; preds = %27, %22
  ret void
}

declare dso_local i32 @ATH_TX_LOCK_ASSERT(%struct.ath_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
