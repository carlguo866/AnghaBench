; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bwn/extr_if_bwn.c_bwn_led_blink_end.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bwn/extr_if_bwn.c_bwn_led_blink_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwn_mac = type { %struct.bwn_softc* }
%struct.bwn_softc = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @bwn_led_blink_end to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bwn_led_blink_end(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.bwn_mac*, align 8
  %4 = alloca %struct.bwn_softc*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.bwn_mac*
  store %struct.bwn_mac* %6, %struct.bwn_mac** %3, align 8
  %7 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %8 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %7, i32 0, i32 0
  %9 = load %struct.bwn_softc*, %struct.bwn_softc** %8, align 8
  store %struct.bwn_softc* %9, %struct.bwn_softc** %4, align 8
  %10 = load %struct.bwn_softc*, %struct.bwn_softc** %4, align 8
  %11 = getelementptr inbounds %struct.bwn_softc, %struct.bwn_softc* %10, i32 0, i32 0
  store i64 0, i64* %11, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
