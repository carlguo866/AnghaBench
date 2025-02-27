; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iwm/extr_if_iwm_pcie_trans.c_iwm_check_rfkill.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iwm/extr_if_iwm_pcie_trans.c_iwm_check_rfkill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwm_softc = type { i32 }

@IWM_CSR_GP_CNTRL = common dso_local global i32 0, align 4
@IWM_CSR_GP_CNTRL_REG_FLAG_HW_RF_KILL_SW = common dso_local global i32 0, align 4
@IWM_FLAG_RFKILL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iwm_check_rfkill(%struct.iwm_softc* %0) #0 {
  %2 = alloca %struct.iwm_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.iwm_softc* %0, %struct.iwm_softc** %2, align 8
  %5 = load %struct.iwm_softc*, %struct.iwm_softc** %2, align 8
  %6 = load i32, i32* @IWM_CSR_GP_CNTRL, align 4
  %7 = call i32 @IWM_READ(%struct.iwm_softc* %5, i32 %6)
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* @IWM_CSR_GP_CNTRL_REG_FLAG_HW_RF_KILL_SW, align 4
  %10 = and i32 %8, %9
  %11 = icmp eq i32 %10, 0
  %12 = zext i1 %11 to i32
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %1
  %16 = load i32, i32* @IWM_FLAG_RFKILL, align 4
  %17 = load %struct.iwm_softc*, %struct.iwm_softc** %2, align 8
  %18 = getelementptr inbounds %struct.iwm_softc, %struct.iwm_softc* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = or i32 %19, %16
  store i32 %20, i32* %18, align 4
  br label %28

21:                                               ; preds = %1
  %22 = load i32, i32* @IWM_FLAG_RFKILL, align 4
  %23 = xor i32 %22, -1
  %24 = load %struct.iwm_softc*, %struct.iwm_softc** %2, align 8
  %25 = getelementptr inbounds %struct.iwm_softc, %struct.iwm_softc* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = and i32 %26, %23
  store i32 %27, i32* %25, align 4
  br label %28

28:                                               ; preds = %21, %15
  %29 = load i32, i32* %4, align 4
  ret i32 %29
}

declare dso_local i32 @IWM_READ(%struct.iwm_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
