; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_a10_sramc.c_a10_map_to_otg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_a10_sramc.c_a10_map_to_otg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.a10_sramc_softc = type { i32 }

@a10_sramc_sc = common dso_local global %struct.a10_sramc_softc* null, align 8
@ENXIO = common dso_local global i32 0, align 4
@SRAM_CTL1_CFG = common dso_local global i32 0, align 4
@CTL1_CFG_SRAMD_MAP_USB0 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @a10_map_to_otg() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.a10_sramc_softc*, align 8
  %3 = alloca i32, align 4
  %4 = load %struct.a10_sramc_softc*, %struct.a10_sramc_softc** @a10_sramc_sc, align 8
  store %struct.a10_sramc_softc* %4, %struct.a10_sramc_softc** %2, align 8
  %5 = load %struct.a10_sramc_softc*, %struct.a10_sramc_softc** %2, align 8
  %6 = icmp eq %struct.a10_sramc_softc* %5, null
  br i1 %6, label %7, label %9

7:                                                ; preds = %0
  %8 = load i32, i32* @ENXIO, align 4
  store i32 %8, i32* %1, align 4
  br label %20

9:                                                ; preds = %0
  %10 = load %struct.a10_sramc_softc*, %struct.a10_sramc_softc** %2, align 8
  %11 = load i32, i32* @SRAM_CTL1_CFG, align 4
  %12 = call i32 @sramc_read_4(%struct.a10_sramc_softc* %10, i32 %11)
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* @CTL1_CFG_SRAMD_MAP_USB0, align 4
  %14 = load i32, i32* %3, align 4
  %15 = or i32 %14, %13
  store i32 %15, i32* %3, align 4
  %16 = load %struct.a10_sramc_softc*, %struct.a10_sramc_softc** %2, align 8
  %17 = load i32, i32* @SRAM_CTL1_CFG, align 4
  %18 = load i32, i32* %3, align 4
  %19 = call i32 @sramc_write_4(%struct.a10_sramc_softc* %16, i32 %17, i32 %18)
  store i32 0, i32* %1, align 4
  br label %20

20:                                               ; preds = %9, %7
  %21 = load i32, i32* %1, align 4
  ret i32 %21
}

declare dso_local i32 @sramc_read_4(%struct.a10_sramc_softc*, i32) #1

declare dso_local i32 @sramc_write_4(%struct.a10_sramc_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
