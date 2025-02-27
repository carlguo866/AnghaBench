; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ath/extr_if_ath_rx_edma.c_ath_edma_dma_rxsetup.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ath/extr_if_ath_rx_edma.c_ath_edma_dma_rxsetup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath_softc = type { i32, i32, i32 }

@.str = private unnamed_addr constant [3 x i8] c"rx\00", align 1
@ath_rxbuf = common dso_local global i32 0, align 4
@HAL_RX_QUEUE_HP = common dso_local global i32 0, align 4
@HAL_RX_QUEUE_LP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath_softc*)* @ath_edma_dma_rxsetup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath_edma_dma_rxsetup(%struct.ath_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ath_softc*, align 8
  %4 = alloca i32, align 4
  store %struct.ath_softc* %0, %struct.ath_softc** %3, align 8
  %5 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %6 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %7 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %6, i32 0, i32 2
  %8 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %9 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %8, i32 0, i32 1
  %10 = load i32, i32* @ath_rxbuf, align 4
  %11 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %12 = getelementptr inbounds %struct.ath_softc, %struct.ath_softc* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @ath_descdma_setup_rx_edma(%struct.ath_softc* %5, i32* %7, i32* %9, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %10, i32 %13)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  %18 = load i32, i32* %4, align 4
  store i32 %18, i32* %2, align 4
  br label %30

19:                                               ; preds = %1
  %20 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %21 = call i32 @ATH_RX_LOCK(%struct.ath_softc* %20)
  %22 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %23 = load i32, i32* @HAL_RX_QUEUE_HP, align 4
  %24 = call i32 @ath_edma_setup_rxfifo(%struct.ath_softc* %22, i32 %23)
  %25 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %26 = load i32, i32* @HAL_RX_QUEUE_LP, align 4
  %27 = call i32 @ath_edma_setup_rxfifo(%struct.ath_softc* %25, i32 %26)
  %28 = load %struct.ath_softc*, %struct.ath_softc** %3, align 8
  %29 = call i32 @ATH_RX_UNLOCK(%struct.ath_softc* %28)
  store i32 0, i32* %2, align 4
  br label %30

30:                                               ; preds = %19, %17
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

declare dso_local i32 @ath_descdma_setup_rx_edma(%struct.ath_softc*, i32*, i32*, i8*, i32, i32) #1

declare dso_local i32 @ATH_RX_LOCK(%struct.ath_softc*) #1

declare dso_local i32 @ath_edma_setup_rxfifo(%struct.ath_softc*, i32) #1

declare dso_local i32 @ATH_RX_UNLOCK(%struct.ath_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
