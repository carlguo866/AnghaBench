; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/rtwn/extr_if_rtwn_efuse.c_rtwn_efuse_read_prepare.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/rtwn/extr_if_rtwn_efuse.c_rtwn_efuse_read_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtwn_softc = type { i32 }

@R92C_EFUSE_ACCESS = common dso_local global i32 0, align 4
@R92C_EFUSE_ACCESS_OFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtwn_softc*, i32*, i32)* @rtwn_efuse_read_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtwn_efuse_read_prepare(%struct.rtwn_softc* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.rtwn_softc*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.rtwn_softc* %0, %struct.rtwn_softc** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.rtwn_softc*, %struct.rtwn_softc** %4, align 8
  %9 = call i32 @rtwn_efuse_switch_power(%struct.rtwn_softc* %8)
  store i32 %9, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  br label %18

13:                                               ; preds = %3
  %14 = load %struct.rtwn_softc*, %struct.rtwn_softc** %4, align 8
  %15 = load i32*, i32** %5, align 8
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @rtwn_efuse_read(%struct.rtwn_softc* %14, i32* %15, i32 %16)
  store i32 %17, i32* %7, align 4
  br label %18

18:                                               ; preds = %13, %12
  %19 = load %struct.rtwn_softc*, %struct.rtwn_softc** %4, align 8
  %20 = load i32, i32* @R92C_EFUSE_ACCESS, align 4
  %21 = load i32, i32* @R92C_EFUSE_ACCESS_OFF, align 4
  %22 = call i32 @rtwn_write_1(%struct.rtwn_softc* %19, i32 %20, i32 %21)
  %23 = load i32, i32* %7, align 4
  ret i32 %23
}

declare dso_local i32 @rtwn_efuse_switch_power(%struct.rtwn_softc*) #1

declare dso_local i32 @rtwn_efuse_read(%struct.rtwn_softc*, i32*, i32) #1

declare dso_local i32 @rtwn_write_1(%struct.rtwn_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
