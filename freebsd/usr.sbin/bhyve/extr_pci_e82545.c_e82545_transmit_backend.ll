; ModuleID = '/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pci_e82545.c_e82545_transmit_backend.c'
source_filename = "/home/carl/AnghaBench/freebsd/usr.sbin/bhyve/extr_pci_e82545.c_e82545_transmit_backend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e82545_softc = type { i32* }
%struct.iovec = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.e82545_softc*, %struct.iovec*, i32)* @e82545_transmit_backend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @e82545_transmit_backend(%struct.e82545_softc* %0, %struct.iovec* %1, i32 %2) #0 {
  %4 = alloca %struct.e82545_softc*, align 8
  %5 = alloca %struct.iovec*, align 8
  %6 = alloca i32, align 4
  store %struct.e82545_softc* %0, %struct.e82545_softc** %4, align 8
  store %struct.iovec* %1, %struct.iovec** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.e82545_softc*, %struct.e82545_softc** %4, align 8
  %8 = getelementptr inbounds %struct.e82545_softc, %struct.e82545_softc* %7, i32 0, i32 0
  %9 = load i32*, i32** %8, align 8
  %10 = icmp eq i32* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %3
  br label %19

12:                                               ; preds = %3
  %13 = load %struct.e82545_softc*, %struct.e82545_softc** %4, align 8
  %14 = getelementptr inbounds %struct.e82545_softc, %struct.e82545_softc* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = load %struct.iovec*, %struct.iovec** %5, align 8
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @netbe_send(i32* %15, %struct.iovec* %16, i32 %17)
  br label %19

19:                                               ; preds = %12, %11
  ret void
}

declare dso_local i32 @netbe_send(i32*, %struct.iovec*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
