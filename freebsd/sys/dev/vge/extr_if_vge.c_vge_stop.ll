; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vge/extr_if_vge.c_vge_stop.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vge/extr_if_vge.c_vge_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vge_softc = type { i32, i64, %struct.ifnet* }
%struct.ifnet = type { i32 }

@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@IFF_DRV_OACTIVE = common dso_local global i32 0, align 4
@VGE_CRC3 = common dso_local global i32 0, align 4
@VGE_CR3_INT_GMSK = common dso_local global i32 0, align 4
@VGE_CRS0 = common dso_local global i32 0, align 4
@VGE_CR0_STOP = common dso_local global i32 0, align 4
@VGE_ISR = common dso_local global i32 0, align 4
@VGE_TXQCSRC = common dso_local global i32 0, align 4
@VGE_RXQCSRC = common dso_local global i32 0, align 4
@VGE_RXDESC_ADDR_LO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vge_softc*)* @vge_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vge_stop(%struct.vge_softc* %0) #0 {
  %2 = alloca %struct.vge_softc*, align 8
  %3 = alloca %struct.ifnet*, align 8
  store %struct.vge_softc* %0, %struct.vge_softc** %2, align 8
  %4 = load %struct.vge_softc*, %struct.vge_softc** %2, align 8
  %5 = call i32 @VGE_LOCK_ASSERT(%struct.vge_softc* %4)
  %6 = load %struct.vge_softc*, %struct.vge_softc** %2, align 8
  %7 = getelementptr inbounds %struct.vge_softc, %struct.vge_softc* %6, i32 0, i32 2
  %8 = load %struct.ifnet*, %struct.ifnet** %7, align 8
  store %struct.ifnet* %8, %struct.ifnet** %3, align 8
  %9 = load %struct.vge_softc*, %struct.vge_softc** %2, align 8
  %10 = getelementptr inbounds %struct.vge_softc, %struct.vge_softc* %9, i32 0, i32 1
  store i64 0, i64* %10, align 8
  %11 = load %struct.vge_softc*, %struct.vge_softc** %2, align 8
  %12 = getelementptr inbounds %struct.vge_softc, %struct.vge_softc* %11, i32 0, i32 0
  %13 = call i32 @callout_stop(i32* %12)
  %14 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %15 = load i32, i32* @IFF_DRV_OACTIVE, align 4
  %16 = or i32 %14, %15
  %17 = xor i32 %16, -1
  %18 = load %struct.ifnet*, %struct.ifnet** %3, align 8
  %19 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = and i32 %20, %17
  store i32 %21, i32* %19, align 4
  %22 = load %struct.vge_softc*, %struct.vge_softc** %2, align 8
  %23 = load i32, i32* @VGE_CRC3, align 4
  %24 = load i32, i32* @VGE_CR3_INT_GMSK, align 4
  %25 = call i32 @CSR_WRITE_1(%struct.vge_softc* %22, i32 %23, i32 %24)
  %26 = load %struct.vge_softc*, %struct.vge_softc** %2, align 8
  %27 = load i32, i32* @VGE_CRS0, align 4
  %28 = load i32, i32* @VGE_CR0_STOP, align 4
  %29 = call i32 @CSR_WRITE_1(%struct.vge_softc* %26, i32 %27, i32 %28)
  %30 = load %struct.vge_softc*, %struct.vge_softc** %2, align 8
  %31 = load i32, i32* @VGE_ISR, align 4
  %32 = call i32 @CSR_WRITE_4(%struct.vge_softc* %30, i32 %31, i32 -1)
  %33 = load %struct.vge_softc*, %struct.vge_softc** %2, align 8
  %34 = load i32, i32* @VGE_TXQCSRC, align 4
  %35 = call i32 @CSR_WRITE_2(%struct.vge_softc* %33, i32 %34, i32 65535)
  %36 = load %struct.vge_softc*, %struct.vge_softc** %2, align 8
  %37 = load i32, i32* @VGE_RXQCSRC, align 4
  %38 = call i32 @CSR_WRITE_1(%struct.vge_softc* %36, i32 %37, i32 255)
  %39 = load %struct.vge_softc*, %struct.vge_softc** %2, align 8
  %40 = load i32, i32* @VGE_RXDESC_ADDR_LO, align 4
  %41 = call i32 @CSR_WRITE_4(%struct.vge_softc* %39, i32 %40, i32 0)
  %42 = load %struct.vge_softc*, %struct.vge_softc** %2, align 8
  %43 = call i32 @vge_stats_update(%struct.vge_softc* %42)
  %44 = load %struct.vge_softc*, %struct.vge_softc** %2, align 8
  %45 = call i32 @VGE_CHAIN_RESET(%struct.vge_softc* %44)
  %46 = load %struct.vge_softc*, %struct.vge_softc** %2, align 8
  %47 = call i32 @vge_txeof(%struct.vge_softc* %46)
  %48 = load %struct.vge_softc*, %struct.vge_softc** %2, align 8
  %49 = call i32 @vge_freebufs(%struct.vge_softc* %48)
  ret void
}

declare dso_local i32 @VGE_LOCK_ASSERT(%struct.vge_softc*) #1

declare dso_local i32 @callout_stop(i32*) #1

declare dso_local i32 @CSR_WRITE_1(%struct.vge_softc*, i32, i32) #1

declare dso_local i32 @CSR_WRITE_4(%struct.vge_softc*, i32, i32) #1

declare dso_local i32 @CSR_WRITE_2(%struct.vge_softc*, i32, i32) #1

declare dso_local i32 @vge_stats_update(%struct.vge_softc*) #1

declare dso_local i32 @VGE_CHAIN_RESET(%struct.vge_softc*) #1

declare dso_local i32 @vge_txeof(%struct.vge_softc*) #1

declare dso_local i32 @vge_freebufs(%struct.vge_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
