; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bwn/extr_if_bwn.c_bwn_handle_txeof.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bwn/extr_if_bwn.c_bwn_handle_txeof.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwn_mac = type { i32, %struct.bwn_softc*, %struct.bwn_stats }
%struct.bwn_softc = type { i32 }
%struct.bwn_stats = type { i32, i32 }
%struct.bwn_txstatus = type { i32, i64, i64 }

@.str = private unnamed_addr constant [17 x i8] c"TODO: STATUS IM\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"TODO: STATUS AMPDU\0A\00", align 1
@BWN_MAC_FLAG_DMA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bwn_mac*, %struct.bwn_txstatus*)* @bwn_handle_txeof to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bwn_handle_txeof(%struct.bwn_mac* %0, %struct.bwn_txstatus* %1) #0 {
  %3 = alloca %struct.bwn_mac*, align 8
  %4 = alloca %struct.bwn_txstatus*, align 8
  %5 = alloca %struct.bwn_softc*, align 8
  %6 = alloca %struct.bwn_stats*, align 8
  store %struct.bwn_mac* %0, %struct.bwn_mac** %3, align 8
  store %struct.bwn_txstatus* %1, %struct.bwn_txstatus** %4, align 8
  %7 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %8 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %7, i32 0, i32 1
  %9 = load %struct.bwn_softc*, %struct.bwn_softc** %8, align 8
  store %struct.bwn_softc* %9, %struct.bwn_softc** %5, align 8
  %10 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %11 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %10, i32 0, i32 2
  store %struct.bwn_stats* %11, %struct.bwn_stats** %6, align 8
  %12 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %13 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %12, i32 0, i32 1
  %14 = load %struct.bwn_softc*, %struct.bwn_softc** %13, align 8
  %15 = call i32 @BWN_ASSERT_LOCKED(%struct.bwn_softc* %14)
  %16 = load %struct.bwn_txstatus*, %struct.bwn_txstatus** %4, align 8
  %17 = getelementptr inbounds %struct.bwn_txstatus, %struct.bwn_txstatus* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %2
  %21 = load %struct.bwn_softc*, %struct.bwn_softc** %5, align 8
  %22 = getelementptr inbounds %struct.bwn_softc, %struct.bwn_softc* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @device_printf(i32 %23, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  br label %25

25:                                               ; preds = %20, %2
  %26 = load %struct.bwn_txstatus*, %struct.bwn_txstatus** %4, align 8
  %27 = getelementptr inbounds %struct.bwn_txstatus, %struct.bwn_txstatus* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %25
  %31 = load %struct.bwn_softc*, %struct.bwn_softc** %5, align 8
  %32 = getelementptr inbounds %struct.bwn_softc, %struct.bwn_softc* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @device_printf(i32 %33, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  br label %35

35:                                               ; preds = %30, %25
  %36 = load %struct.bwn_txstatus*, %struct.bwn_txstatus** %4, align 8
  %37 = getelementptr inbounds %struct.bwn_txstatus, %struct.bwn_txstatus* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %56

40:                                               ; preds = %35
  %41 = load %struct.bwn_txstatus*, %struct.bwn_txstatus** %4, align 8
  %42 = getelementptr inbounds %struct.bwn_txstatus, %struct.bwn_txstatus* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp eq i32 %43, 15
  br i1 %44, label %45, label %50

45:                                               ; preds = %40
  %46 = load %struct.bwn_stats*, %struct.bwn_stats** %6, align 8
  %47 = getelementptr inbounds %struct.bwn_stats, %struct.bwn_stats* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %47, align 4
  br label %55

50:                                               ; preds = %40
  %51 = load %struct.bwn_stats*, %struct.bwn_stats** %6, align 8
  %52 = getelementptr inbounds %struct.bwn_stats, %struct.bwn_stats* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %52, align 4
  br label %55

55:                                               ; preds = %50, %45
  br label %56

56:                                               ; preds = %55, %35
  %57 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %58 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @BWN_MAC_FLAG_DMA, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %56
  %64 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %65 = load %struct.bwn_txstatus*, %struct.bwn_txstatus** %4, align 8
  %66 = call i32 @bwn_dma_handle_txeof(%struct.bwn_mac* %64, %struct.bwn_txstatus* %65)
  br label %71

67:                                               ; preds = %56
  %68 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %69 = load %struct.bwn_txstatus*, %struct.bwn_txstatus** %4, align 8
  %70 = call i32 @bwn_pio_handle_txeof(%struct.bwn_mac* %68, %struct.bwn_txstatus* %69)
  br label %71

71:                                               ; preds = %67, %63
  %72 = load %struct.bwn_mac*, %struct.bwn_mac** %3, align 8
  %73 = call i32 @bwn_phy_txpower_check(%struct.bwn_mac* %72, i32 0)
  ret void
}

declare dso_local i32 @BWN_ASSERT_LOCKED(%struct.bwn_softc*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @bwn_dma_handle_txeof(%struct.bwn_mac*, %struct.bwn_txstatus*) #1

declare dso_local i32 @bwn_pio_handle_txeof(%struct.bwn_mac*, %struct.bwn_txstatus*) #1

declare dso_local i32 @bwn_phy_txpower_check(%struct.bwn_mac*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
