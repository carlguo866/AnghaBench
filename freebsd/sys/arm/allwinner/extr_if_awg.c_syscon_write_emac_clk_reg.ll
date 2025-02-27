; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_if_awg.c_syscon_write_emac_clk_reg.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/allwinner/extr_if_awg.c_syscon_write_emac_clk_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.awg_softc = type { i32**, i32* }

@EMAC_CLK_REG = common dso_local global i32 0, align 4
@_RES_SYSCON = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @syscon_write_emac_clk_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @syscon_write_emac_clk_reg(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.awg_softc*, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call %struct.awg_softc* @device_get_softc(i32 %6)
  store %struct.awg_softc* %7, %struct.awg_softc** %5, align 8
  %8 = load %struct.awg_softc*, %struct.awg_softc** %5, align 8
  %9 = getelementptr inbounds %struct.awg_softc, %struct.awg_softc* %8, i32 0, i32 1
  %10 = load i32*, i32** %9, align 8
  %11 = icmp ne i32* %10, null
  br i1 %11, label %12, label %19

12:                                               ; preds = %2
  %13 = load %struct.awg_softc*, %struct.awg_softc** %5, align 8
  %14 = getelementptr inbounds %struct.awg_softc, %struct.awg_softc* %13, i32 0, i32 1
  %15 = load i32*, i32** %14, align 8
  %16 = load i32, i32* @EMAC_CLK_REG, align 4
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @SYSCON_WRITE_4(i32* %15, i32 %16, i32 %17)
  br label %37

19:                                               ; preds = %2
  %20 = load %struct.awg_softc*, %struct.awg_softc** %5, align 8
  %21 = getelementptr inbounds %struct.awg_softc, %struct.awg_softc* %20, i32 0, i32 0
  %22 = load i32**, i32*** %21, align 8
  %23 = load i64, i64* @_RES_SYSCON, align 8
  %24 = getelementptr inbounds i32*, i32** %22, i64 %23
  %25 = load i32*, i32** %24, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %36

27:                                               ; preds = %19
  %28 = load %struct.awg_softc*, %struct.awg_softc** %5, align 8
  %29 = getelementptr inbounds %struct.awg_softc, %struct.awg_softc* %28, i32 0, i32 0
  %30 = load i32**, i32*** %29, align 8
  %31 = load i64, i64* @_RES_SYSCON, align 8
  %32 = getelementptr inbounds i32*, i32** %30, i64 %31
  %33 = load i32*, i32** %32, align 8
  %34 = load i32, i32* %4, align 4
  %35 = call i32 @bus_write_4(i32* %33, i32 0, i32 %34)
  br label %36

36:                                               ; preds = %27, %19
  br label %37

37:                                               ; preds = %36, %12
  ret void
}

declare dso_local %struct.awg_softc* @device_get_softc(i32) #1

declare dso_local i32 @SYSCON_WRITE_4(i32*, i32, i32) #1

declare dso_local i32 @bus_write_4(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
