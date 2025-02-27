; ModuleID = '/home/carl/AnghaBench/freebsd/sys/arm/mv/armada/extr_wdt.c_mv_wdt_disable_armv5.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/arm/mv/armada/extr_wdt.c_mv_wdt_disable_armv5.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CPU_TIMER2_EN = common dso_local global i32 0, align 4
@CPU_TIMER2_AUTO = common dso_local global i32 0, align 4
@RSTOUTn_MASK = common dso_local global i32 0, align 4
@WD_RST_OUT_EN = common dso_local global i32 0, align 4
@BRIDGE_IRQ_MASK = common dso_local global i32 0, align 4
@IRQ_TIMER_WD_MASK = common dso_local global i32 0, align 4
@BRIDGE_IRQ_CAUSE = common dso_local global i32 0, align 4
@IRQ_TIMER_WD_CLR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @mv_wdt_disable_armv5 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mv_wdt_disable_armv5() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = call i32 (...) @mv_get_timer_control()
  store i32 %4, i32* %1, align 4
  %5 = load i32, i32* @CPU_TIMER2_EN, align 4
  %6 = load i32, i32* @CPU_TIMER2_AUTO, align 4
  %7 = or i32 %5, %6
  %8 = xor i32 %7, -1
  %9 = load i32, i32* %1, align 4
  %10 = and i32 %9, %8
  store i32 %10, i32* %1, align 4
  %11 = load i32, i32* %1, align 4
  %12 = call i32 @mv_set_timer_control(i32 %11)
  %13 = load i32, i32* @RSTOUTn_MASK, align 4
  %14 = call i32 @read_cpu_ctrl(i32 %13)
  store i32 %14, i32* %1, align 4
  %15 = load i32, i32* @WD_RST_OUT_EN, align 4
  %16 = xor i32 %15, -1
  %17 = load i32, i32* %1, align 4
  %18 = and i32 %17, %16
  store i32 %18, i32* %1, align 4
  %19 = load i32, i32* @RSTOUTn_MASK, align 4
  %20 = load i32, i32* %1, align 4
  %21 = call i32 @write_cpu_ctrl(i32 %19, i32 %20)
  %22 = load i32, i32* @BRIDGE_IRQ_MASK, align 4
  %23 = call i32 @read_cpu_ctrl(i32 %22)
  store i32 %23, i32* %3, align 4
  %24 = load i32, i32* @IRQ_TIMER_WD_MASK, align 4
  %25 = xor i32 %24, -1
  %26 = load i32, i32* %3, align 4
  %27 = and i32 %26, %25
  store i32 %27, i32* %3, align 4
  %28 = load i32, i32* @BRIDGE_IRQ_MASK, align 4
  %29 = load i32, i32* %3, align 4
  %30 = call i32 @write_cpu_ctrl(i32 %28, i32 %29)
  %31 = load i32, i32* @BRIDGE_IRQ_CAUSE, align 4
  %32 = call i32 @read_cpu_ctrl(i32 %31)
  store i32 %32, i32* %2, align 4
  %33 = load i32, i32* @IRQ_TIMER_WD_CLR, align 4
  %34 = load i32, i32* %2, align 4
  %35 = and i32 %34, %33
  store i32 %35, i32* %2, align 4
  %36 = load i32, i32* @BRIDGE_IRQ_CAUSE, align 4
  %37 = load i32, i32* %2, align 4
  %38 = call i32 @write_cpu_ctrl(i32 %36, i32 %37)
  ret void
}

declare dso_local i32 @mv_get_timer_control(...) #1

declare dso_local i32 @mv_set_timer_control(i32) #1

declare dso_local i32 @read_cpu_ctrl(i32) #1

declare dso_local i32 @write_cpu_ctrl(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
