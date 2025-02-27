; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/oprofile/extr_op_model_mpcore.c_em_setup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/oprofile/extr_op_model_mpcore.c_em_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IRQ_EB11MP_PMU_SCU0 = common dso_local global i32 0, align 4
@IRQ_EB11MP_PMU_SCU1 = common dso_local global i32 0, align 4
@IRQ_EB11MP_PMU_SCU2 = common dso_local global i32 0, align 4
@IRQ_EB11MP_PMU_SCU3 = common dso_local global i32 0, align 4
@IRQ_EB11MP_PMU_SCU4 = common dso_local global i32 0, align 4
@IRQ_EB11MP_PMU_SCU5 = common dso_local global i32 0, align 4
@IRQ_EB11MP_PMU_SCU6 = common dso_local global i32 0, align 4
@IRQ_EB11MP_PMU_SCU7 = common dso_local global i32 0, align 4
@IRQ_EB11MP_PMU_CPU0 = common dso_local global i32 0, align 4
@IRQ_EB11MP_PMU_CPU1 = common dso_local global i32 0, align 4
@IRQ_EB11MP_PMU_CPU2 = common dso_local global i32 0, align 4
@IRQ_EB11MP_PMU_CPU3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @em_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @em_setup() #0 {
  %1 = load i32, i32* @IRQ_EB11MP_PMU_SCU0, align 4
  %2 = call i32 @em_route_irq(i32 %1, i32 0)
  %3 = load i32, i32* @IRQ_EB11MP_PMU_SCU1, align 4
  %4 = call i32 @em_route_irq(i32 %3, i32 0)
  %5 = load i32, i32* @IRQ_EB11MP_PMU_SCU2, align 4
  %6 = call i32 @em_route_irq(i32 %5, i32 1)
  %7 = load i32, i32* @IRQ_EB11MP_PMU_SCU3, align 4
  %8 = call i32 @em_route_irq(i32 %7, i32 1)
  %9 = load i32, i32* @IRQ_EB11MP_PMU_SCU4, align 4
  %10 = call i32 @em_route_irq(i32 %9, i32 2)
  %11 = load i32, i32* @IRQ_EB11MP_PMU_SCU5, align 4
  %12 = call i32 @em_route_irq(i32 %11, i32 2)
  %13 = load i32, i32* @IRQ_EB11MP_PMU_SCU6, align 4
  %14 = call i32 @em_route_irq(i32 %13, i32 3)
  %15 = load i32, i32* @IRQ_EB11MP_PMU_SCU7, align 4
  %16 = call i32 @em_route_irq(i32 %15, i32 3)
  %17 = load i32, i32* @IRQ_EB11MP_PMU_CPU0, align 4
  %18 = call i32 @em_route_irq(i32 %17, i32 0)
  %19 = load i32, i32* @IRQ_EB11MP_PMU_CPU1, align 4
  %20 = call i32 @em_route_irq(i32 %19, i32 1)
  %21 = load i32, i32* @IRQ_EB11MP_PMU_CPU2, align 4
  %22 = call i32 @em_route_irq(i32 %21, i32 2)
  %23 = load i32, i32* @IRQ_EB11MP_PMU_CPU3, align 4
  %24 = call i32 @em_route_irq(i32 %23, i32 3)
  ret i32 0
}

declare dso_local i32 @em_route_irq(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
