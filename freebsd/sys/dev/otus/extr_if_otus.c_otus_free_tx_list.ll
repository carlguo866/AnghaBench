; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/otus/extr_if_otus.c_otus_free_tx_list.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/otus/extr_if_otus.c_otus_free_tx_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.otus_softc = type { i32, i32*, i32*, i32 }

@OTUS_N_XFER = common dso_local global i32 0, align 4
@OTUS_TX_LIST_COUNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.otus_softc*)* @otus_free_tx_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @otus_free_tx_list(%struct.otus_softc* %0) #0 {
  %2 = alloca %struct.otus_softc*, align 8
  %3 = alloca i32, align 4
  store %struct.otus_softc* %0, %struct.otus_softc** %2, align 8
  %4 = load %struct.otus_softc*, %struct.otus_softc** %2, align 8
  %5 = getelementptr inbounds %struct.otus_softc, %struct.otus_softc* %4, i32 0, i32 3
  %6 = call i32 @STAILQ_INIT(i32* %5)
  store i32 0, i32* %3, align 4
  br label %7

7:                                                ; preds = %26, %1
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* @OTUS_N_XFER, align 4
  %10 = icmp ne i32 %8, %9
  br i1 %10, label %11, label %29

11:                                               ; preds = %7
  %12 = load %struct.otus_softc*, %struct.otus_softc** %2, align 8
  %13 = getelementptr inbounds %struct.otus_softc, %struct.otus_softc* %12, i32 0, i32 2
  %14 = load i32*, i32** %13, align 8
  %15 = load i32, i32* %3, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %14, i64 %16
  %18 = call i32 @STAILQ_INIT(i32* %17)
  %19 = load %struct.otus_softc*, %struct.otus_softc** %2, align 8
  %20 = getelementptr inbounds %struct.otus_softc, %struct.otus_softc* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  %22 = load i32, i32* %3, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  %25 = call i32 @STAILQ_INIT(i32* %24)
  br label %26

26:                                               ; preds = %11
  %27 = load i32, i32* %3, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %3, align 4
  br label %7

29:                                               ; preds = %7
  %30 = load %struct.otus_softc*, %struct.otus_softc** %2, align 8
  %31 = load %struct.otus_softc*, %struct.otus_softc** %2, align 8
  %32 = getelementptr inbounds %struct.otus_softc, %struct.otus_softc* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @OTUS_TX_LIST_COUNT, align 4
  %35 = call i32 @otus_free_list(%struct.otus_softc* %30, i32 %33, i32 %34)
  ret void
}

declare dso_local i32 @STAILQ_INIT(i32*) #1

declare dso_local i32 @otus_free_list(%struct.otus_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
