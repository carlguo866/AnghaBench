; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_db8500-prcmu.c_request_clock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_db8500-prcmu.c_request_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64 }

@clk_mgt_lock = common dso_local global i32 0, align 4
@PRCM_SEM = common dso_local global i64 0, align 8
@PRCM_SEM_PRCM_SEM = common dso_local global i32 0, align 4
@prcmu_base = common dso_local global i64 0, align 8
@clk_mgt = common dso_local global %struct.TYPE_2__* null, align 8
@PRCM_CLK_MGT_CLKEN = common dso_local global i32 0, align 4
@PRCM_CLK_MGT_CLKPLLSW_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i32)* @request_clock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @request_clock(i64 %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i64, i64* %6, align 8
  %8 = call i32 @spin_lock_irqsave(i32* @clk_mgt_lock, i64 %7)
  br label %9

9:                                                ; preds = %15, %2
  %10 = load i64, i64* @PRCM_SEM, align 8
  %11 = call i32 @readl(i64 %10)
  %12 = load i32, i32* @PRCM_SEM_PRCM_SEM, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %9
  %16 = call i32 (...) @cpu_relax()
  br label %9

17:                                               ; preds = %9
  %18 = load i64, i64* @prcmu_base, align 8
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** @clk_mgt, align 8
  %20 = load i64, i64* %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = add nsw i64 %18, %23
  %25 = call i32 @readl(i64 %24)
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %4, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %38

28:                                               ; preds = %17
  %29 = load i32, i32* @PRCM_CLK_MGT_CLKEN, align 4
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** @clk_mgt, align 8
  %31 = load i64, i64* %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = or i32 %29, %34
  %36 = load i32, i32* %5, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %5, align 4
  br label %52

38:                                               ; preds = %17
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* @PRCM_CLK_MGT_CLKPLLSW_MASK, align 4
  %41 = and i32 %39, %40
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** @clk_mgt, align 8
  %43 = load i64, i64* %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  store i32 %41, i32* %45, align 8
  %46 = load i32, i32* @PRCM_CLK_MGT_CLKEN, align 4
  %47 = load i32, i32* @PRCM_CLK_MGT_CLKPLLSW_MASK, align 4
  %48 = or i32 %46, %47
  %49 = xor i32 %48, -1
  %50 = load i32, i32* %5, align 4
  %51 = and i32 %50, %49
  store i32 %51, i32* %5, align 4
  br label %52

52:                                               ; preds = %38, %28
  %53 = load i32, i32* %5, align 4
  %54 = load i64, i64* @prcmu_base, align 8
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** @clk_mgt, align 8
  %56 = load i64, i64* %3, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = add nsw i64 %54, %59
  %61 = call i32 @writel(i32 %53, i64 %60)
  %62 = load i64, i64* @PRCM_SEM, align 8
  %63 = call i32 @writel(i32 0, i64 %62)
  %64 = load i64, i64* %6, align 8
  %65 = call i32 @spin_unlock_irqrestore(i32* @clk_mgt_lock, i64 %64)
  ret i32 0
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @cpu_relax(...) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
