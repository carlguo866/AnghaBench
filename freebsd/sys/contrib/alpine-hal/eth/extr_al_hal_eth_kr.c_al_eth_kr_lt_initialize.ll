; ModuleID = '/home/carl/AnghaBench/freebsd/sys/contrib/alpine-hal/eth/extr_al_hal_eth_kr.c_al_eth_kr_lt_initialize.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/contrib/alpine-hal/eth/extr_al_hal_eth_kr.c_al_eth_kr_lt_initialize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.al_hal_eth_adapter = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"[%s]: KR LT Initialize.\0A\00", align 1
@AL_ETH_KR_PMD_STATUS = common dso_local global i32 0, align 4
@AL_ETH_LT_REGS = common dso_local global i32 0, align 4
@AL_ETH_KR_PMD_LD_COEF_UP = common dso_local global i32 0, align 4
@AL_ETH_KR_PMD_LD_STATUS_REPORT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @al_eth_kr_lt_initialize(%struct.al_hal_eth_adapter* %0, i32 %1) #0 {
  %3 = alloca %struct.al_hal_eth_adapter*, align 8
  %4 = alloca i32, align 4
  store %struct.al_hal_eth_adapter* %0, %struct.al_hal_eth_adapter** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %3, align 8
  %6 = getelementptr inbounds %struct.al_hal_eth_adapter, %struct.al_hal_eth_adapter* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @al_dbg(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %7)
  %9 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %3, align 8
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @al_eth_kr_lt_stop(%struct.al_hal_eth_adapter* %9, i32 %10)
  %12 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %3, align 8
  %13 = load i32, i32* @AL_ETH_KR_PMD_STATUS, align 4
  %14 = load i32, i32* @AL_ETH_LT_REGS, align 4
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @al_eth_an_lt_reg_write(%struct.al_hal_eth_adapter* %12, i32 %13, i32 %14, i32 %15, i32 0)
  %17 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %3, align 8
  %18 = load i32, i32* @AL_ETH_KR_PMD_LD_COEF_UP, align 4
  %19 = load i32, i32* @AL_ETH_LT_REGS, align 4
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @al_eth_an_lt_reg_write(%struct.al_hal_eth_adapter* %17, i32 %18, i32 %19, i32 %20, i32 0)
  %22 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %3, align 8
  %23 = load i32, i32* @AL_ETH_KR_PMD_LD_STATUS_REPORT, align 4
  %24 = load i32, i32* @AL_ETH_LT_REGS, align 4
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @al_eth_an_lt_reg_write(%struct.al_hal_eth_adapter* %22, i32 %23, i32 %24, i32 %25, i32 0)
  %27 = load %struct.al_hal_eth_adapter*, %struct.al_hal_eth_adapter** %3, align 8
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @al_eth_kr_lt_restart(%struct.al_hal_eth_adapter* %27, i32 %28)
  ret void
}

declare dso_local i32 @al_dbg(i8*, i32) #1

declare dso_local i32 @al_eth_kr_lt_stop(%struct.al_hal_eth_adapter*, i32) #1

declare dso_local i32 @al_eth_an_lt_reg_write(%struct.al_hal_eth_adapter*, i32, i32, i32, i32) #1

declare dso_local i32 @al_eth_kr_lt_restart(%struct.al_hal_eth_adapter*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
