; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/sysdev/extr_fsl_pmc.c_pmc_suspend_enter.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/sysdev/extr_fsl_pmc.c_pmc_suspend_enter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@pmc_regs = common dso_local global %struct.TYPE_2__* null, align 8
@PMCSR_SLP = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@pmc_dev = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"tired waiting for SLP bit to clear\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @pmc_suspend_enter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pmc_suspend_enter(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pmc_regs, align 8
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 0
  %6 = load i32, i32* @PMCSR_SLP, align 4
  %7 = call i32 @setbits32(i32* %5, i32 %6)
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pmc_regs, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = call i32 @in_be32(i32* %9)
  %11 = load i32, i32* @PMCSR_SLP, align 4
  %12 = and i32 %10, %11
  %13 = icmp eq i32 %12, 0
  %14 = zext i1 %13 to i32
  %15 = call i64 @spin_event_timeout(i32 %14, i32 10000, i32 10)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  br label %21

18:                                               ; preds = %1
  %19 = load i32, i32* @ETIMEDOUT, align 4
  %20 = sub nsw i32 0, %19
  br label %21

21:                                               ; preds = %18, %17
  %22 = phi i32 [ 0, %17 ], [ %20, %18 ]
  store i32 %22, i32* %3, align 4
  %23 = load i32, i32* %3, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %21
  %26 = load i32, i32* @pmc_dev, align 4
  %27 = call i32 @dev_err(i32 %26, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %28

28:                                               ; preds = %25, %21
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

declare dso_local i32 @setbits32(i32*, i32) #1

declare dso_local i64 @spin_event_timeout(i32, i32, i32) #1

declare dso_local i32 @in_be32(i32*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
