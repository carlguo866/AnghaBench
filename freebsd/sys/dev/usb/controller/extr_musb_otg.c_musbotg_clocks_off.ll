; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_musb_otg.c_musbotg_clocks_off.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/controller/extr_musb_otg.c_musbotg_clocks_off.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.musbotg_softc = type { %struct.TYPE_2__, i32, i32 (i32)* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.musbotg_softc*)* @musbotg_clocks_off to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @musbotg_clocks_off(%struct.musbotg_softc* %0) #0 {
  %2 = alloca %struct.musbotg_softc*, align 8
  store %struct.musbotg_softc* %0, %struct.musbotg_softc** %2, align 8
  %3 = load %struct.musbotg_softc*, %struct.musbotg_softc** %2, align 8
  %4 = getelementptr inbounds %struct.musbotg_softc, %struct.musbotg_softc* %3, i32 0, i32 0
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %26, label %8

8:                                                ; preds = %1
  %9 = call i32 @DPRINTFN(i32 4, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.musbotg_softc*, %struct.musbotg_softc** %2, align 8
  %11 = getelementptr inbounds %struct.musbotg_softc, %struct.musbotg_softc* %10, i32 0, i32 2
  %12 = load i32 (i32)*, i32 (i32)** %11, align 8
  %13 = icmp ne i32 (i32)* %12, null
  br i1 %13, label %14, label %22

14:                                               ; preds = %8
  %15 = load %struct.musbotg_softc*, %struct.musbotg_softc** %2, align 8
  %16 = getelementptr inbounds %struct.musbotg_softc, %struct.musbotg_softc* %15, i32 0, i32 2
  %17 = load i32 (i32)*, i32 (i32)** %16, align 8
  %18 = load %struct.musbotg_softc*, %struct.musbotg_softc** %2, align 8
  %19 = getelementptr inbounds %struct.musbotg_softc, %struct.musbotg_softc* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 %17(i32 %20)
  br label %22

22:                                               ; preds = %14, %8
  %23 = load %struct.musbotg_softc*, %struct.musbotg_softc** %2, align 8
  %24 = getelementptr inbounds %struct.musbotg_softc, %struct.musbotg_softc* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  store i32 1, i32* %25, align 8
  br label %26

26:                                               ; preds = %22, %1
  ret void
}

declare dso_local i32 @DPRINTFN(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
