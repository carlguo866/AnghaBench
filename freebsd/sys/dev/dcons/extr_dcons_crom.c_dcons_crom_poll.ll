; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/dcons/extr_dcons_crom.c_dcons_crom_poll.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/dcons/extr_dcons_crom.c_dcons_crom_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dcons_crom_softc = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 (%struct.TYPE_4__*, i32, i32)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @dcons_crom_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dcons_crom_poll(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.dcons_crom_softc*, align 8
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i8*, i8** %3, align 8
  %7 = bitcast i8* %6 to %struct.dcons_crom_softc*
  store %struct.dcons_crom_softc* %7, %struct.dcons_crom_softc** %5, align 8
  %8 = load %struct.dcons_crom_softc*, %struct.dcons_crom_softc** %5, align 8
  %9 = getelementptr inbounds %struct.dcons_crom_softc, %struct.dcons_crom_softc* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32 (%struct.TYPE_4__*, i32, i32)*, i32 (%struct.TYPE_4__*, i32, i32)** %12, align 8
  %14 = load %struct.dcons_crom_softc*, %struct.dcons_crom_softc** %5, align 8
  %15 = getelementptr inbounds %struct.dcons_crom_softc, %struct.dcons_crom_softc* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = call i32 %13(%struct.TYPE_4__* %17, i32 -1, i32 -1)
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
