; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/enetc/extr_enetc_hw.h_enetc_set_bdr_prio.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/enetc/extr_enetc_hw.h_enetc_set_bdr_prio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.enetc_hw = type { i32 }

@ENETC_TBMR = common dso_local global i32 0, align 4
@ENETC_TBMR_PRIO_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.enetc_hw*, i32, i32)* @enetc_set_bdr_prio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @enetc_set_bdr_prio(%struct.enetc_hw* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.enetc_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.enetc_hw* %0, %struct.enetc_hw** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.enetc_hw*, %struct.enetc_hw** %4, align 8
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @ENETC_TBMR, align 4
  %11 = call i32 @enetc_txbdr_rd(%struct.enetc_hw* %8, i32 %9, i32 %10)
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* @ENETC_TBMR_PRIO_MASK, align 4
  %13 = xor i32 %12, -1
  %14 = load i32, i32* %7, align 4
  %15 = and i32 %14, %13
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %6, align 4
  %17 = call i32 @ENETC_TBMR_SET_PRIO(i32 %16)
  %18 = load i32, i32* %7, align 4
  %19 = or i32 %18, %17
  store i32 %19, i32* %7, align 4
  %20 = load %struct.enetc_hw*, %struct.enetc_hw** %4, align 8
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @ENETC_TBMR, align 4
  %23 = load i32, i32* %7, align 4
  %24 = call i32 @enetc_txbdr_wr(%struct.enetc_hw* %20, i32 %21, i32 %22, i32 %23)
  ret void
}

declare dso_local i32 @enetc_txbdr_rd(%struct.enetc_hw*, i32, i32) #1

declare dso_local i32 @ENETC_TBMR_SET_PRIO(i32) #1

declare dso_local i32 @enetc_txbdr_wr(%struct.enetc_hw*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
