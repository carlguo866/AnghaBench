; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_musb_otg.c_musbotg_pull_up.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_musb_otg.c_musbotg_pull_up.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.musbotg_softc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.musbotg_softc*)* @musbotg_pull_up to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @musbotg_pull_up(%struct.musbotg_softc* %0) #0 {
  %2 = alloca %struct.musbotg_softc*, align 8
  store %struct.musbotg_softc* %0, %struct.musbotg_softc** %2, align 8
  %3 = load %struct.musbotg_softc*, %struct.musbotg_softc** %2, align 8
  %4 = getelementptr inbounds %struct.musbotg_softc, %struct.musbotg_softc* %3, i32 0, i32 0
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %20, label %8

8:                                                ; preds = %1
  %9 = load %struct.musbotg_softc*, %struct.musbotg_softc** %2, align 8
  %10 = getelementptr inbounds %struct.musbotg_softc, %struct.musbotg_softc* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %8
  %15 = load %struct.musbotg_softc*, %struct.musbotg_softc** %2, align 8
  %16 = getelementptr inbounds %struct.musbotg_softc, %struct.musbotg_softc* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  store i32 1, i32* %17, align 8
  %18 = load %struct.musbotg_softc*, %struct.musbotg_softc** %2, align 8
  %19 = call i32 @musbotg_pull_common(%struct.musbotg_softc* %18, i32 1)
  br label %20

20:                                               ; preds = %14, %8, %1
  ret void
}

declare dso_local i32 @musbotg_pull_common(%struct.musbotg_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
