; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/aic7xxx/extr_aic7xxx_core.c_ahc_free_scb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/aic7xxx/extr_aic7xxx_core.c_ahc_free_scb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.ahc_softc = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32** }
%struct.scb = type { i32, %struct.hardware_scb* }
%struct.hardware_scb = type { i64, i64 }

@SCB_FREE = common dso_local global i32 0, align 4
@links = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ahc_free_scb(%struct.ahc_softc* %0, %struct.scb* %1) #0 {
  %3 = alloca %struct.ahc_softc*, align 8
  %4 = alloca %struct.scb*, align 8
  %5 = alloca %struct.hardware_scb*, align 8
  store %struct.ahc_softc* %0, %struct.ahc_softc** %3, align 8
  store %struct.scb* %1, %struct.scb** %4, align 8
  %6 = load %struct.scb*, %struct.scb** %4, align 8
  %7 = getelementptr inbounds %struct.scb, %struct.scb* %6, i32 0, i32 1
  %8 = load %struct.hardware_scb*, %struct.hardware_scb** %7, align 8
  store %struct.hardware_scb* %8, %struct.hardware_scb** %5, align 8
  %9 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %10 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %9, i32 0, i32 0
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 1
  %13 = load i32**, i32*** %12, align 8
  %14 = load %struct.hardware_scb*, %struct.hardware_scb** %5, align 8
  %15 = getelementptr inbounds %struct.hardware_scb, %struct.hardware_scb* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = getelementptr inbounds i32*, i32** %13, i64 %16
  store i32* null, i32** %17, align 8
  %18 = load i32, i32* @SCB_FREE, align 4
  %19 = load %struct.scb*, %struct.scb** %4, align 8
  %20 = getelementptr inbounds %struct.scb, %struct.scb* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 8
  %21 = load %struct.hardware_scb*, %struct.hardware_scb** %5, align 8
  %22 = getelementptr inbounds %struct.hardware_scb, %struct.hardware_scb* %21, i32 0, i32 1
  store i64 0, i64* %22, align 8
  %23 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %24 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %23, i32 0, i32 0
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load %struct.scb*, %struct.scb** %4, align 8
  %28 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @links, i32 0, i32 0), align 4
  %29 = call i32 @SLIST_INSERT_HEAD(i32* %26, %struct.scb* %27, i32 %28)
  %30 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %31 = load %struct.scb*, %struct.scb** %4, align 8
  %32 = call i32 @ahc_platform_scb_free(%struct.ahc_softc* %30, %struct.scb* %31)
  ret void
}

declare dso_local i32 @SLIST_INSERT_HEAD(i32*, %struct.scb*, i32) #1

declare dso_local i32 @ahc_platform_scb_free(%struct.ahc_softc*, %struct.scb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
