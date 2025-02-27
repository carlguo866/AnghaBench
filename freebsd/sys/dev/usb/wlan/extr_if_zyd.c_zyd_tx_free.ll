; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_zyd.c_zyd_tx_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_zyd.c_zyd_tx_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zyd_tx_data = type { i32*, i32*, %struct.zyd_softc* }
%struct.zyd_softc = type { i32, i32 }

@next = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.zyd_tx_data*, i32)* @zyd_tx_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zyd_tx_free(%struct.zyd_tx_data* %0, i32 %1) #0 {
  %3 = alloca %struct.zyd_tx_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.zyd_softc*, align 8
  store %struct.zyd_tx_data* %0, %struct.zyd_tx_data** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.zyd_tx_data*, %struct.zyd_tx_data** %3, align 8
  %7 = getelementptr inbounds %struct.zyd_tx_data, %struct.zyd_tx_data* %6, i32 0, i32 2
  %8 = load %struct.zyd_softc*, %struct.zyd_softc** %7, align 8
  store %struct.zyd_softc* %8, %struct.zyd_softc** %5, align 8
  %9 = load %struct.zyd_tx_data*, %struct.zyd_tx_data** %3, align 8
  %10 = getelementptr inbounds %struct.zyd_tx_data, %struct.zyd_tx_data* %9, i32 0, i32 1
  %11 = load i32*, i32** %10, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %13, label %26

13:                                               ; preds = %2
  %14 = load %struct.zyd_tx_data*, %struct.zyd_tx_data** %3, align 8
  %15 = getelementptr inbounds %struct.zyd_tx_data, %struct.zyd_tx_data* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = load %struct.zyd_tx_data*, %struct.zyd_tx_data** %3, align 8
  %18 = getelementptr inbounds %struct.zyd_tx_data, %struct.zyd_tx_data* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @ieee80211_tx_complete(i32* %16, i32* %19, i32 %20)
  %22 = load %struct.zyd_tx_data*, %struct.zyd_tx_data** %3, align 8
  %23 = getelementptr inbounds %struct.zyd_tx_data, %struct.zyd_tx_data* %22, i32 0, i32 1
  store i32* null, i32** %23, align 8
  %24 = load %struct.zyd_tx_data*, %struct.zyd_tx_data** %3, align 8
  %25 = getelementptr inbounds %struct.zyd_tx_data, %struct.zyd_tx_data* %24, i32 0, i32 0
  store i32* null, i32** %25, align 8
  br label %26

26:                                               ; preds = %13, %2
  %27 = load %struct.zyd_softc*, %struct.zyd_softc** %5, align 8
  %28 = getelementptr inbounds %struct.zyd_softc, %struct.zyd_softc* %27, i32 0, i32 1
  %29 = load %struct.zyd_tx_data*, %struct.zyd_tx_data** %3, align 8
  %30 = load i32, i32* @next, align 4
  %31 = call i32 @STAILQ_INSERT_TAIL(i32* %28, %struct.zyd_tx_data* %29, i32 %30)
  %32 = load %struct.zyd_softc*, %struct.zyd_softc** %5, align 8
  %33 = getelementptr inbounds %struct.zyd_softc, %struct.zyd_softc* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %33, align 4
  ret void
}

declare dso_local i32 @ieee80211_tx_complete(i32*, i32*, i32) #1

declare dso_local i32 @STAILQ_INSERT_TAIL(i32*, %struct.zyd_tx_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
