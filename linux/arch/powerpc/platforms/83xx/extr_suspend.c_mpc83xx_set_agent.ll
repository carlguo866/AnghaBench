; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/83xx/extr_suspend.c_mpc83xx_set_agent.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/83xx/extr_suspend.c_mpc83xx_set_agent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@pmc_regs = common dso_local global %struct.TYPE_2__* null, align 8
@PMCCR1_USE_STATE = common dso_local global i32 0, align 4
@PMCER_PMCI = common dso_local global i32 0, align 4
@agent_thread_fn = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"PCI power mgt\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @mpc83xx_set_agent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mpc83xx_set_agent() #0 {
  %1 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pmc_regs, align 8
  %2 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %1, i32 0, i32 1
  %3 = load i32, i32* @PMCCR1_USE_STATE, align 4
  %4 = call i32 @out_be32(i32* %2, i32 %3)
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pmc_regs, align 8
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i32, i32* @PMCER_PMCI, align 4
  %8 = call i32 @out_be32(i32* %6, i32 %7)
  %9 = load i32, i32* @agent_thread_fn, align 4
  %10 = call i32 @kthread_run(i32 %9, i32* null, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  ret void
}

declare dso_local i32 @out_be32(i32*, i32) #1

declare dso_local i32 @kthread_run(i32, i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
