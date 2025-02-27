; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/aic7xxx/extr_aic7xxx_core.c_ahc_get_scb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/aic7xxx/extr_aic7xxx_core.c_ahc_get_scb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.scb = type { i32 }
%struct.ahc_softc = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@links = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.scb* @ahc_get_scb(%struct.ahc_softc* %0) #0 {
  %2 = alloca %struct.scb*, align 8
  %3 = alloca %struct.ahc_softc*, align 8
  %4 = alloca %struct.scb*, align 8
  store %struct.ahc_softc* %0, %struct.ahc_softc** %3, align 8
  %5 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %6 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %5, i32 0, i32 0
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = call %struct.scb* @SLIST_FIRST(i32* %8)
  store %struct.scb* %9, %struct.scb** %4, align 8
  %10 = icmp eq %struct.scb* %9, null
  br i1 %10, label %11, label %23

11:                                               ; preds = %1
  %12 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %13 = call i32 @ahc_alloc_scbs(%struct.ahc_softc* %12)
  %14 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %15 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %14, i32 0, i32 0
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = call %struct.scb* @SLIST_FIRST(i32* %17)
  store %struct.scb* %18, %struct.scb** %4, align 8
  %19 = load %struct.scb*, %struct.scb** %4, align 8
  %20 = icmp eq %struct.scb* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %11
  store %struct.scb* null, %struct.scb** %2, align 8
  br label %31

22:                                               ; preds = %11
  br label %23

23:                                               ; preds = %22, %1
  %24 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %25 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %24, i32 0, i32 0
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @links, i32 0, i32 0), align 4
  %29 = call i32 @SLIST_REMOVE_HEAD(i32* %27, i32 %28)
  %30 = load %struct.scb*, %struct.scb** %4, align 8
  store %struct.scb* %30, %struct.scb** %2, align 8
  br label %31

31:                                               ; preds = %23, %21
  %32 = load %struct.scb*, %struct.scb** %2, align 8
  ret %struct.scb* %32
}

declare dso_local %struct.scb* @SLIST_FIRST(i32*) #1

declare dso_local i32 @ahc_alloc_scbs(%struct.ahc_softc*) #1

declare dso_local i32 @SLIST_REMOVE_HEAD(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
