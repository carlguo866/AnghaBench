; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/tws/extr_tws_hdm.c_tws_disable_db_intr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/tws/extr_tws_hdm.c_tws_disable_db_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tws_softc = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@TWS_I2O0_HIMASK = common dso_local global i32 0, align 4
@TWS_BIT2 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tws_disable_db_intr(%struct.tws_softc* %0) #0 {
  %2 = alloca %struct.tws_softc*, align 8
  %3 = alloca i32, align 4
  store %struct.tws_softc* %0, %struct.tws_softc** %2, align 8
  %4 = load %struct.tws_softc*, %struct.tws_softc** %2, align 8
  %5 = call i32 @TWS_TRACE_DEBUG(%struct.tws_softc* %4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 0, i32 0)
  %6 = load %struct.tws_softc*, %struct.tws_softc** %2, align 8
  %7 = load i32, i32* @TWS_I2O0_HIMASK, align 4
  %8 = call i32 @tws_read_reg(%struct.tws_softc* %6, i32 %7, i32 4)
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* @TWS_BIT2, align 4
  %11 = or i32 %9, %10
  store i32 %11, i32* %3, align 4
  %12 = load %struct.tws_softc*, %struct.tws_softc** %2, align 8
  %13 = load i32, i32* @TWS_I2O0_HIMASK, align 4
  %14 = load i32, i32* %3, align 4
  %15 = call i32 @tws_write_reg(%struct.tws_softc* %12, i32 %13, i32 %14, i32 4)
  ret void
}

declare dso_local i32 @TWS_TRACE_DEBUG(%struct.tws_softc*, i8*, i32, i32) #1

declare dso_local i32 @tws_read_reg(%struct.tws_softc*, i32, i32) #1

declare dso_local i32 @tws_write_reg(%struct.tws_softc*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
