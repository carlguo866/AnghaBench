; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aic7xxx/extr_aic7xxx_core.c_ahc_get_sense_buf.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aic7xxx/extr_aic7xxx_core.c_ahc_get_sense_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_sense_data = type { i32 }
%struct.ahc_softc = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.scsi_sense_data*, %struct.scb* }
%struct.scb = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.scsi_sense_data* @ahc_get_sense_buf(%struct.ahc_softc* %0, %struct.scb* %1) #0 {
  %3 = alloca %struct.ahc_softc*, align 8
  %4 = alloca %struct.scb*, align 8
  %5 = alloca i32, align 4
  store %struct.ahc_softc* %0, %struct.ahc_softc** %3, align 8
  store %struct.scb* %1, %struct.scb** %4, align 8
  %6 = load %struct.scb*, %struct.scb** %4, align 8
  %7 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %8 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 1
  %11 = load %struct.scb*, %struct.scb** %10, align 8
  %12 = ptrtoint %struct.scb* %6 to i64
  %13 = ptrtoint %struct.scb* %11 to i64
  %14 = sub i64 %12, %13
  %15 = sdiv exact i64 %14, 4
  %16 = trunc i64 %15 to i32
  store i32 %16, i32* %5, align 4
  %17 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %18 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load %struct.scsi_sense_data*, %struct.scsi_sense_data** %20, align 8
  %22 = load i32, i32* %5, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.scsi_sense_data, %struct.scsi_sense_data* %21, i64 %23
  ret %struct.scsi_sense_data* %24
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
