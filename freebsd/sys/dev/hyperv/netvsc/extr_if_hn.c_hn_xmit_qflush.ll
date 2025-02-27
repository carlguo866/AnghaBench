; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hyperv/netvsc/extr_if_hn.c_hn_xmit_qflush.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hyperv/netvsc/extr_if_hn.c_hn_xmit_qflush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifnet = type { %struct.hn_softc* }
%struct.hn_softc = type { i32, i32, i32, %struct.TYPE_2__*, i32* }
%struct.TYPE_2__ = type { i32 (%struct.TYPE_2__*)* }
%struct.rm_priotracker = type { i32 }

@HN_XVFFLAG_ENABLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ifnet*)* @hn_xmit_qflush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hn_xmit_qflush(%struct.ifnet* %0) #0 {
  %2 = alloca %struct.ifnet*, align 8
  %3 = alloca %struct.hn_softc*, align 8
  %4 = alloca %struct.rm_priotracker, align 4
  %5 = alloca i32, align 4
  store %struct.ifnet* %0, %struct.ifnet** %2, align 8
  %6 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %7 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %6, i32 0, i32 0
  %8 = load %struct.hn_softc*, %struct.hn_softc** %7, align 8
  store %struct.hn_softc* %8, %struct.hn_softc** %3, align 8
  store i32 0, i32* %5, align 4
  br label %9

9:                                                ; preds = %23, %1
  %10 = load i32, i32* %5, align 4
  %11 = load %struct.hn_softc*, %struct.hn_softc** %3, align 8
  %12 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp slt i32 %10, %13
  br i1 %14, label %15, label %26

15:                                               ; preds = %9
  %16 = load %struct.hn_softc*, %struct.hn_softc** %3, align 8
  %17 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %16, i32 0, i32 4
  %18 = load i32*, i32** %17, align 8
  %19 = load i32, i32* %5, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  %22 = call i32 @hn_tx_ring_qflush(i32* %21)
  br label %23

23:                                               ; preds = %15
  %24 = load i32, i32* %5, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %5, align 4
  br label %9

26:                                               ; preds = %9
  %27 = load %struct.ifnet*, %struct.ifnet** %2, align 8
  %28 = call i32 @if_qflush(%struct.ifnet* %27)
  %29 = load %struct.hn_softc*, %struct.hn_softc** %3, align 8
  %30 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %29, i32 0, i32 2
  %31 = call i32 @rm_rlock(i32* %30, %struct.rm_priotracker* %4)
  %32 = load %struct.hn_softc*, %struct.hn_softc** %3, align 8
  %33 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @HN_XVFFLAG_ENABLED, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %48

38:                                               ; preds = %26
  %39 = load %struct.hn_softc*, %struct.hn_softc** %3, align 8
  %40 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %39, i32 0, i32 3
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32 (%struct.TYPE_2__*)*, i32 (%struct.TYPE_2__*)** %42, align 8
  %44 = load %struct.hn_softc*, %struct.hn_softc** %3, align 8
  %45 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %44, i32 0, i32 3
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = call i32 %43(%struct.TYPE_2__* %46)
  br label %48

48:                                               ; preds = %38, %26
  %49 = load %struct.hn_softc*, %struct.hn_softc** %3, align 8
  %50 = getelementptr inbounds %struct.hn_softc, %struct.hn_softc* %49, i32 0, i32 2
  %51 = call i32 @rm_runlock(i32* %50, %struct.rm_priotracker* %4)
  ret void
}

declare dso_local i32 @hn_tx_ring_qflush(i32*) #1

declare dso_local i32 @if_qflush(%struct.ifnet*) #1

declare dso_local i32 @rm_rlock(i32*, %struct.rm_priotracker*) #1

declare dso_local i32 @rm_runlock(i32*, %struct.rm_priotracker*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
