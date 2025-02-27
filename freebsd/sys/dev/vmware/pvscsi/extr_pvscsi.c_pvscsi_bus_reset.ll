; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vmware/pvscsi/extr_pvscsi.c_pvscsi_bus_reset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vmware/pvscsi/extr_pvscsi.c_pvscsi_bus_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pvscsi_softc = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"Bus Reset\0A\00", align 1
@PVSCSI_CMD_RESET_BUS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"bus reset done\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pvscsi_softc*)* @pvscsi_bus_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pvscsi_bus_reset(%struct.pvscsi_softc* %0) #0 {
  %2 = alloca %struct.pvscsi_softc*, align 8
  store %struct.pvscsi_softc* %0, %struct.pvscsi_softc** %2, align 8
  %3 = load %struct.pvscsi_softc*, %struct.pvscsi_softc** %2, align 8
  %4 = getelementptr inbounds %struct.pvscsi_softc, %struct.pvscsi_softc* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = call i32 @device_printf(i32 %5, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.pvscsi_softc*, %struct.pvscsi_softc** %2, align 8
  %8 = load i32, i32* @PVSCSI_CMD_RESET_BUS, align 4
  %9 = call i32 @pvscsi_write_cmd(%struct.pvscsi_softc* %7, i32 %8, i32* null, i32 0)
  %10 = load %struct.pvscsi_softc*, %struct.pvscsi_softc** %2, align 8
  %11 = call i32 @pvscsi_process_cmp_ring(%struct.pvscsi_softc* %10)
  %12 = load %struct.pvscsi_softc*, %struct.pvscsi_softc** %2, align 8
  %13 = getelementptr inbounds %struct.pvscsi_softc, %struct.pvscsi_softc* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @DEBUG_PRINTF(i32 2, i32 %14, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @pvscsi_write_cmd(%struct.pvscsi_softc*, i32, i32*, i32) #1

declare dso_local i32 @pvscsi_process_cmp_ring(%struct.pvscsi_softc*) #1

declare dso_local i32 @DEBUG_PRINTF(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
