; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mii/extr_vscphy.c_vsc8501_reset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mii/extr_vscphy.c_vsc8501_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vscphy_softc = type { i32, i32 }

@VSC8501_EXTCTL1_REG = common dso_local global i32 0, align 4
@VSC8501_EXTCTL1_RGMII_MODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vscphy_softc*)* @vsc8501_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vsc8501_reset(%struct.vscphy_softc* %0) #0 {
  %2 = alloca %struct.vscphy_softc*, align 8
  %3 = alloca i32, align 4
  store %struct.vscphy_softc* %0, %struct.vscphy_softc** %2, align 8
  %4 = load %struct.vscphy_softc*, %struct.vscphy_softc** %2, align 8
  %5 = load i32, i32* @VSC8501_EXTCTL1_REG, align 4
  %6 = call i32 @vscphy_read(%struct.vscphy_softc* %4, i32 %5)
  store i32 %6, i32* %3, align 4
  %7 = load %struct.vscphy_softc*, %struct.vscphy_softc** %2, align 8
  %8 = getelementptr inbounds %struct.vscphy_softc, %struct.vscphy_softc* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i64 @mii_contype_is_rgmii(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %1
  %13 = load i32, i32* @VSC8501_EXTCTL1_RGMII_MODE, align 4
  %14 = load i32, i32* %3, align 4
  %15 = or i32 %14, %13
  store i32 %15, i32* %3, align 4
  br label %21

16:                                               ; preds = %1
  %17 = load i32, i32* @VSC8501_EXTCTL1_RGMII_MODE, align 4
  %18 = xor i32 %17, -1
  %19 = load i32, i32* %3, align 4
  %20 = and i32 %19, %18
  store i32 %20, i32* %3, align 4
  br label %21

21:                                               ; preds = %16, %12
  %22 = load %struct.vscphy_softc*, %struct.vscphy_softc** %2, align 8
  %23 = load i32, i32* @VSC8501_EXTCTL1_REG, align 4
  %24 = load i32, i32* %3, align 4
  %25 = call i32 @vscphy_write(%struct.vscphy_softc* %22, i32 %23, i32 %24)
  %26 = load %struct.vscphy_softc*, %struct.vscphy_softc** %2, align 8
  %27 = getelementptr inbounds %struct.vscphy_softc, %struct.vscphy_softc* %26, i32 0, i32 1
  %28 = call i32 @mii_phy_reset(i32* %27)
  %29 = load %struct.vscphy_softc*, %struct.vscphy_softc** %2, align 8
  %30 = getelementptr inbounds %struct.vscphy_softc, %struct.vscphy_softc* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @mii_contype_is_rgmii(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %21
  %35 = load %struct.vscphy_softc*, %struct.vscphy_softc** %2, align 8
  %36 = call i32 @vsc8501_setup_rgmii(%struct.vscphy_softc* %35)
  br label %37

37:                                               ; preds = %34, %21
  ret void
}

declare dso_local i32 @vscphy_read(%struct.vscphy_softc*, i32) #1

declare dso_local i64 @mii_contype_is_rgmii(i32) #1

declare dso_local i32 @vscphy_write(%struct.vscphy_softc*, i32, i32) #1

declare dso_local i32 @mii_phy_reset(i32*) #1

declare dso_local i32 @vsc8501_setup_rgmii(%struct.vscphy_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
