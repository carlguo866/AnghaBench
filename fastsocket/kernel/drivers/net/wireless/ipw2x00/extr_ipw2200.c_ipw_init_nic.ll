; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ipw2x00/extr_ipw2200.c_ipw_init_nic.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ipw2x00/extr_ipw2200.c_ipw_init_nic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipw_priv = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c">>\0A\00", align 1
@IPW_GP_CNTRL_RW = common dso_local global i32 0, align 4
@IPW_GP_CNTRL_BIT_INIT_DONE = common dso_local global i32 0, align 4
@IPW_READ_INT_REGISTER = common dso_local global i32 0, align 4
@IPW_BIT_INT_HOST_SRAM_READ_INT_REGISTER = common dso_local global i32 0, align 4
@IPW_GP_CNTRL_BIT_CLOCK_READY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"FAILED wait for clock stablization\0A\00", align 1
@IPW_RESET_REG = common dso_local global i32 0, align 4
@IPW_RESET_REG_SW_RESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ipw_priv*)* @ipw_init_nic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipw_init_nic(%struct.ipw_priv* %0) #0 {
  %2 = alloca %struct.ipw_priv*, align 8
  %3 = alloca i32, align 4
  store %struct.ipw_priv* %0, %struct.ipw_priv** %2, align 8
  %4 = call i32 @IPW_DEBUG_TRACE(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %5 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %6 = load i32, i32* @IPW_GP_CNTRL_RW, align 4
  %7 = load i32, i32* @IPW_GP_CNTRL_BIT_INIT_DONE, align 4
  %8 = call i32 @ipw_set_bit(%struct.ipw_priv* %5, i32 %6, i32 %7)
  %9 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %10 = load i32, i32* @IPW_READ_INT_REGISTER, align 4
  %11 = load i32, i32* @IPW_BIT_INT_HOST_SRAM_READ_INT_REGISTER, align 4
  %12 = call i32 @ipw_write32(%struct.ipw_priv* %9, i32 %10, i32 %11)
  %13 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %14 = load i32, i32* @IPW_GP_CNTRL_RW, align 4
  %15 = load i32, i32* @IPW_GP_CNTRL_BIT_CLOCK_READY, align 4
  %16 = call i32 @ipw_poll_bit(%struct.ipw_priv* %13, i32 %14, i32 %15, i32 250)
  store i32 %16, i32* %3, align 4
  %17 = load i32, i32* %3, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %1
  %20 = call i32 @IPW_DEBUG_INFO(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  br label %21

21:                                               ; preds = %19, %1
  %22 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %23 = load i32, i32* @IPW_RESET_REG, align 4
  %24 = load i32, i32* @IPW_RESET_REG_SW_RESET, align 4
  %25 = call i32 @ipw_set_bit(%struct.ipw_priv* %22, i32 %23, i32 %24)
  %26 = call i32 @udelay(i32 10)
  %27 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %28 = load i32, i32* @IPW_GP_CNTRL_RW, align 4
  %29 = load i32, i32* @IPW_GP_CNTRL_BIT_INIT_DONE, align 4
  %30 = call i32 @ipw_set_bit(%struct.ipw_priv* %27, i32 %28, i32 %29)
  %31 = call i32 @IPW_DEBUG_TRACE(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  ret i32 0
}

declare dso_local i32 @IPW_DEBUG_TRACE(i8*) #1

declare dso_local i32 @ipw_set_bit(%struct.ipw_priv*, i32, i32) #1

declare dso_local i32 @ipw_write32(%struct.ipw_priv*, i32, i32) #1

declare dso_local i32 @ipw_poll_bit(%struct.ipw_priv*, i32, i32, i32) #1

declare dso_local i32 @IPW_DEBUG_INFO(i8*) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
