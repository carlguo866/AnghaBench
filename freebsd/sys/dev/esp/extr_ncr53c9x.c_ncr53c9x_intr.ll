; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/esp/extr_ncr53c9x.c_ncr53c9x_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/esp/extr_ncr53c9x.c_ncr53c9x_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ncr53c9x_softc = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ncr53c9x_intr(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.ncr53c9x_softc*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.ncr53c9x_softc*
  store %struct.ncr53c9x_softc* %5, %struct.ncr53c9x_softc** %3, align 8
  %6 = load %struct.ncr53c9x_softc*, %struct.ncr53c9x_softc** %3, align 8
  %7 = call i32 @NCRDMA_ISINTR(%struct.ncr53c9x_softc* %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %17

10:                                               ; preds = %1
  %11 = load %struct.ncr53c9x_softc*, %struct.ncr53c9x_softc** %3, align 8
  %12 = call i32 @NCR_LOCK(%struct.ncr53c9x_softc* %11)
  %13 = load %struct.ncr53c9x_softc*, %struct.ncr53c9x_softc** %3, align 8
  %14 = call i32 @ncr53c9x_intr1(%struct.ncr53c9x_softc* %13)
  %15 = load %struct.ncr53c9x_softc*, %struct.ncr53c9x_softc** %3, align 8
  %16 = call i32 @NCR_UNLOCK(%struct.ncr53c9x_softc* %15)
  br label %17

17:                                               ; preds = %10, %9
  ret void
}

declare dso_local i32 @NCRDMA_ISINTR(%struct.ncr53c9x_softc*) #1

declare dso_local i32 @NCR_LOCK(%struct.ncr53c9x_softc*) #1

declare dso_local i32 @ncr53c9x_intr1(%struct.ncr53c9x_softc*) #1

declare dso_local i32 @NCR_UNLOCK(%struct.ncr53c9x_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
