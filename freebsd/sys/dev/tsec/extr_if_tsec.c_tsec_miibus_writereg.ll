; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/tsec/extr_if_tsec.c_tsec_miibus_writereg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/tsec/extr_if_tsec.c_tsec_miibus_writereg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tsec_softc = type { i32 }

@TSEC_REG_MIIMADD = common dso_local global i32 0, align 4
@TSEC_REG_MIIMCON = common dso_local global i32 0, align 4
@TSEC_MIIMIND_BUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Timeout while writing to PHY!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tsec_miibus_writereg(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.tsec_softc*, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load i32, i32* %5, align 4
  %12 = call %struct.tsec_softc* @device_get_softc(i32 %11)
  store %struct.tsec_softc* %12, %struct.tsec_softc** %9, align 8
  %13 = call i32 (...) @TSEC_PHY_LOCK()
  %14 = load %struct.tsec_softc*, %struct.tsec_softc** %9, align 8
  %15 = load i32, i32* @TSEC_REG_MIIMADD, align 4
  %16 = load i32, i32* %6, align 4
  %17 = shl i32 %16, 8
  %18 = load i32, i32* %7, align 4
  %19 = or i32 %17, %18
  %20 = call i32 @TSEC_PHY_WRITE(%struct.tsec_softc* %14, i32 %15, i32 %19)
  %21 = load %struct.tsec_softc*, %struct.tsec_softc** %9, align 8
  %22 = load i32, i32* @TSEC_REG_MIIMCON, align 4
  %23 = load i32, i32* %8, align 4
  %24 = call i32 @TSEC_PHY_WRITE(%struct.tsec_softc* %21, i32 %22, i32 %23)
  %25 = load %struct.tsec_softc*, %struct.tsec_softc** %9, align 8
  %26 = load i32, i32* @TSEC_MIIMIND_BUSY, align 4
  %27 = call i32 @tsec_mii_wait(%struct.tsec_softc* %25, i32 %26)
  store i32 %27, i32* %10, align 4
  %28 = call i32 (...) @TSEC_PHY_UNLOCK()
  %29 = load i32, i32* %10, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %4
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @device_printf(i32 %32, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %34

34:                                               ; preds = %31, %4
  ret i32 0
}

declare dso_local %struct.tsec_softc* @device_get_softc(i32) #1

declare dso_local i32 @TSEC_PHY_LOCK(...) #1

declare dso_local i32 @TSEC_PHY_WRITE(%struct.tsec_softc*, i32, i32) #1

declare dso_local i32 @tsec_mii_wait(%struct.tsec_softc*, i32) #1

declare dso_local i32 @TSEC_PHY_UNLOCK(...) #1

declare dso_local i32 @device_printf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
