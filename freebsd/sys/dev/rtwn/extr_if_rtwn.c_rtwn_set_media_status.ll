; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/rtwn/extr_if_rtwn.c_rtwn_set_media_status.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/rtwn/extr_if_rtwn.c_rtwn_set_media_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtwn_softc = type { i32 (%struct.rtwn_softc*, i32)* }
%union.sec_param = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtwn_softc*, %union.sec_param*)* @rtwn_set_media_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtwn_set_media_status(%struct.rtwn_softc* %0, %union.sec_param* %1) #0 {
  %3 = alloca %struct.rtwn_softc*, align 8
  %4 = alloca %union.sec_param*, align 8
  store %struct.rtwn_softc* %0, %struct.rtwn_softc** %3, align 8
  store %union.sec_param* %1, %union.sec_param** %4, align 8
  %5 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %6 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %5, i32 0, i32 0
  %7 = load i32 (%struct.rtwn_softc*, i32)*, i32 (%struct.rtwn_softc*, i32)** %6, align 8
  %8 = load %struct.rtwn_softc*, %struct.rtwn_softc** %3, align 8
  %9 = load %union.sec_param*, %union.sec_param** %4, align 8
  %10 = bitcast %union.sec_param* %9 to i32*
  %11 = load i32, i32* %10, align 4
  %12 = call i32 %7(%struct.rtwn_softc* %8, i32 %11)
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
