; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_urtw.c_urtw_alloc_tx_data_list.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_urtw.c_urtw_alloc_tx_data_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urtw_softc = type { i32*, i32, i32, i32, i32 }

@URTW_TX_DATA_LIST_COUNT = common dso_local global i32 0, align 4
@URTW_TX_MAXSIZE = common dso_local global i32 0, align 4
@next = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.urtw_softc*)* @urtw_alloc_tx_data_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @urtw_alloc_tx_data_list(%struct.urtw_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.urtw_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.urtw_softc* %0, %struct.urtw_softc** %3, align 8
  %6 = load %struct.urtw_softc*, %struct.urtw_softc** %3, align 8
  %7 = load %struct.urtw_softc*, %struct.urtw_softc** %3, align 8
  %8 = getelementptr inbounds %struct.urtw_softc, %struct.urtw_softc* %7, i32 0, i32 0
  %9 = load i32*, i32** %8, align 8
  %10 = load i32, i32* @URTW_TX_DATA_LIST_COUNT, align 4
  %11 = load i32, i32* @URTW_TX_MAXSIZE, align 4
  %12 = load %struct.urtw_softc*, %struct.urtw_softc** %3, align 8
  %13 = getelementptr inbounds %struct.urtw_softc, %struct.urtw_softc* %12, i32 0, i32 4
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @urtw_alloc_data_list(%struct.urtw_softc* %6, i32* %9, i32 %10, i32 %11, i32 %14)
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  %19 = load i32, i32* %4, align 4
  store i32 %19, i32* %2, align 4
  br label %49

20:                                               ; preds = %1
  %21 = load %struct.urtw_softc*, %struct.urtw_softc** %3, align 8
  %22 = getelementptr inbounds %struct.urtw_softc, %struct.urtw_softc* %21, i32 0, i32 3
  %23 = call i32 @STAILQ_INIT(i32* %22)
  %24 = load %struct.urtw_softc*, %struct.urtw_softc** %3, align 8
  %25 = getelementptr inbounds %struct.urtw_softc, %struct.urtw_softc* %24, i32 0, i32 1
  %26 = call i32 @STAILQ_INIT(i32* %25)
  %27 = load %struct.urtw_softc*, %struct.urtw_softc** %3, align 8
  %28 = getelementptr inbounds %struct.urtw_softc, %struct.urtw_softc* %27, i32 0, i32 2
  %29 = call i32 @STAILQ_INIT(i32* %28)
  store i32 0, i32* %5, align 4
  br label %30

30:                                               ; preds = %45, %20
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* @URTW_TX_DATA_LIST_COUNT, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %48

34:                                               ; preds = %30
  %35 = load %struct.urtw_softc*, %struct.urtw_softc** %3, align 8
  %36 = getelementptr inbounds %struct.urtw_softc, %struct.urtw_softc* %35, i32 0, i32 1
  %37 = load %struct.urtw_softc*, %struct.urtw_softc** %3, align 8
  %38 = getelementptr inbounds %struct.urtw_softc, %struct.urtw_softc* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* %5, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load i32, i32* @next, align 4
  %44 = call i32 @STAILQ_INSERT_HEAD(i32* %36, i32* %42, i32 %43)
  br label %45

45:                                               ; preds = %34
  %46 = load i32, i32* %5, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %5, align 4
  br label %30

48:                                               ; preds = %30
  store i32 0, i32* %2, align 4
  br label %49

49:                                               ; preds = %48, %18
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

declare dso_local i32 @urtw_alloc_data_list(%struct.urtw_softc*, i32*, i32, i32, i32) #1

declare dso_local i32 @STAILQ_INIT(i32*) #1

declare dso_local i32 @STAILQ_INSERT_HEAD(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
