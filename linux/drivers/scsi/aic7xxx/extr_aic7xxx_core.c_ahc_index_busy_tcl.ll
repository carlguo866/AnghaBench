; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/aic7xxx/extr_aic7xxx_core.c_ahc_index_busy_tcl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/aic7xxx/extr_aic7xxx_core.c_ahc_index_busy_tcl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahc_softc = type { i32 }

@AHC_SCB_BTT = common dso_local global i32 0, align 4
@SCBPTR = common dso_local global i64 0, align 8
@SCB_64_BTT = common dso_local global i64 0, align 8
@BUSY_TARGETS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.ahc_softc*, i64)* @ahc_index_busy_tcl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ahc_index_busy_tcl(%struct.ahc_softc* %0, i64 %1) #0 {
  %3 = alloca %struct.ahc_softc*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.ahc_softc* %0, %struct.ahc_softc** %3, align 8
  store i64 %1, i64* %4, align 8
  %8 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %9 = getelementptr inbounds %struct.ahc_softc, %struct.ahc_softc* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @AHC_SCB_BTT, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %33

14:                                               ; preds = %2
  %15 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %16 = load i64, i64* @SCBPTR, align 8
  %17 = call i64 @ahc_inb(%struct.ahc_softc* %15, i64 %16)
  store i64 %17, i64* %7, align 8
  %18 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %19 = load i64, i64* @SCBPTR, align 8
  %20 = load i64, i64* %4, align 8
  %21 = call i64 @TCL_LUN(i64 %20)
  %22 = call i32 @ahc_outb(%struct.ahc_softc* %18, i64 %19, i64 %21)
  %23 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %24 = load i64, i64* @SCB_64_BTT, align 8
  %25 = load i64, i64* %4, align 8
  %26 = call i64 @TCL_TARGET_OFFSET(i64 %25)
  %27 = add nsw i64 %24, %26
  %28 = call i64 @ahc_inb(%struct.ahc_softc* %23, i64 %27)
  store i64 %28, i64* %5, align 8
  %29 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %30 = load i64, i64* @SCBPTR, align 8
  %31 = load i64, i64* %7, align 8
  %32 = call i32 @ahc_outb(%struct.ahc_softc* %29, i64 %30, i64 %31)
  br label %41

33:                                               ; preds = %2
  %34 = load i64, i64* %4, align 8
  %35 = call i64 @TCL_TARGET_OFFSET(i64 %34)
  store i64 %35, i64* %6, align 8
  %36 = load %struct.ahc_softc*, %struct.ahc_softc** %3, align 8
  %37 = load i64, i64* @BUSY_TARGETS, align 8
  %38 = load i64, i64* %6, align 8
  %39 = add nsw i64 %37, %38
  %40 = call i64 @ahc_inb(%struct.ahc_softc* %36, i64 %39)
  store i64 %40, i64* %5, align 8
  br label %41

41:                                               ; preds = %33, %14
  %42 = load i64, i64* %5, align 8
  ret i64 %42
}

declare dso_local i64 @ahc_inb(%struct.ahc_softc*, i64) #1

declare dso_local i32 @ahc_outb(%struct.ahc_softc*, i64, i64) #1

declare dso_local i64 @TCL_LUN(i64) #1

declare dso_local i64 @TCL_TARGET_OFFSET(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
