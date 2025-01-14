; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/rtwn/rtl8188e/pci/extr_r88ee_init.c_r88ee_post_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/rtwn/rtl8188e/pci/extr_r88ee_init.c_r88ee_post_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtwn_softc = type { i64, i64 }

@R88E_TX_RPT_CTRL = common dso_local global i32 0, align 4
@R88E_TX_RPT1_ENA = common dso_local global i32 0, align 4
@R88E_MACID_NO_LINK = common dso_local global i64 0, align 8
@RTWN_MACID_BC = common dso_local global i32 0, align 4
@R92C_PCIE_CTRL_REG = common dso_local global i64 0, align 8
@RTWN_RATECTL_FW = common dso_local global i64 0, align 8
@RTWN_RATECTL_NET80211 = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @r88ee_post_init(%struct.rtwn_softc* %0) #0 {
  %2 = alloca %struct.rtwn_softc*, align 8
  store %struct.rtwn_softc* %0, %struct.rtwn_softc** %2, align 8
  %3 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %4 = load i32, i32* @R88E_TX_RPT_CTRL, align 4
  %5 = load i32, i32* @R88E_TX_RPT1_ENA, align 4
  %6 = call i32 @rtwn_setbits_1(%struct.rtwn_softc* %3, i32 %4, i32 0, i32 %5)
  %7 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %8 = load i64, i64* @R88E_MACID_NO_LINK, align 8
  %9 = call i32 @rtwn_write_4(%struct.rtwn_softc* %7, i64 %8, i32 -1)
  %10 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %11 = load i64, i64* @R88E_MACID_NO_LINK, align 8
  %12 = add nsw i64 %11, 4
  %13 = call i32 @rtwn_write_4(%struct.rtwn_softc* %10, i64 %12, i32 -1)
  %14 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %15 = load i32, i32* @RTWN_MACID_BC, align 4
  %16 = call i32 @r88e_macid_enable_link(%struct.rtwn_softc* %14, i32 %15, i32 1)
  %17 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %18 = call i32 @r88e_iq_calib(%struct.rtwn_softc* %17)
  %19 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %20 = call i32 @r92c_lc_calib(%struct.rtwn_softc* %19)
  %21 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %22 = load i64, i64* @R92C_PCIE_CTRL_REG, align 8
  %23 = add nsw i64 %22, 1
  %24 = call i32 @rtwn_write_1(%struct.rtwn_softc* %21, i64 %23, i32 0)
  %25 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %26 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @RTWN_RATECTL_FW, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %1
  %31 = load i64, i64* @RTWN_RATECTL_NET80211, align 8
  %32 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %33 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %32, i32 0, i32 1
  store i64 %31, i64* %33, align 8
  br label %40

34:                                               ; preds = %1
  %35 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %36 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.rtwn_softc*, %struct.rtwn_softc** %2, align 8
  %39 = getelementptr inbounds %struct.rtwn_softc, %struct.rtwn_softc* %38, i32 0, i32 1
  store i64 %37, i64* %39, align 8
  br label %40

40:                                               ; preds = %34, %30
  ret void
}

declare dso_local i32 @rtwn_setbits_1(%struct.rtwn_softc*, i32, i32, i32) #1

declare dso_local i32 @rtwn_write_4(%struct.rtwn_softc*, i64, i32) #1

declare dso_local i32 @r88e_macid_enable_link(%struct.rtwn_softc*, i32, i32) #1

declare dso_local i32 @r88e_iq_calib(%struct.rtwn_softc*) #1

declare dso_local i32 @r92c_lc_calib(%struct.rtwn_softc*) #1

declare dso_local i32 @rtwn_write_1(%struct.rtwn_softc*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
