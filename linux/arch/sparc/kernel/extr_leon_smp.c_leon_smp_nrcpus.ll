; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_leon_smp.c_leon_smp_nrcpus.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_leon_smp.c_leon_smp_nrcpus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@leon3_irqctrl_regs = common dso_local global %struct.TYPE_2__* null, align 8
@LEON3_IRQMPSTATUS_CPUNR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @leon_smp_nrcpus() #0 {
  %1 = alloca i32, align 4
  %2 = load %struct.TYPE_2__*, %struct.TYPE_2__** @leon3_irqctrl_regs, align 8
  %3 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %2, i32 0, i32 0
  %4 = call i32 @LEON3_BYPASS_LOAD_PA(i32* %3)
  %5 = load i32, i32* @LEON3_IRQMPSTATUS_CPUNR, align 4
  %6 = ashr i32 %4, %5
  %7 = and i32 %6, 15
  %8 = add nsw i32 %7, 1
  store i32 %8, i32* %1, align 4
  %9 = load i32, i32* %1, align 4
  ret i32 %9
}

declare dso_local i32 @LEON3_BYPASS_LOAD_PA(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
