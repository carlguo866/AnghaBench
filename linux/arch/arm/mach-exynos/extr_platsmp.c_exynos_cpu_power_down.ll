; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-exynos/extr_platsmp.c_exynos_cpu_power_down.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-exynos/extr_platsmp.c_exynos_cpu_power_down.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EXYNOS5_ARM_CORE0_SYS_PWR_REG = common dso_local global i32 0, align 4
@S5P_CORE_LOCAL_PWR_EN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @exynos_cpu_power_down(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %22

7:                                                ; preds = %1
  %8 = call i64 (...) @soc_is_exynos5420()
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %7
  %11 = call i64 (...) @soc_is_exynos5800()
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %22

13:                                               ; preds = %10, %7
  %14 = load i32, i32* @EXYNOS5_ARM_CORE0_SYS_PWR_REG, align 4
  %15 = call i32 @pmu_raw_readl(i32 %14)
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @S5P_CORE_LOCAL_PWR_EN, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %13
  br label %34

21:                                               ; preds = %13
  br label %22

22:                                               ; preds = %21, %10, %1
  %23 = load i32, i32* %2, align 4
  %24 = call i32 @EXYNOS_ARM_CORE_CONFIGURATION(i32 %23)
  %25 = call i32 @pmu_raw_readl(i32 %24)
  store i32 %25, i32* %3, align 4
  %26 = load i32, i32* @S5P_CORE_LOCAL_PWR_EN, align 4
  %27 = xor i32 %26, -1
  %28 = load i32, i32* %3, align 4
  %29 = and i32 %28, %27
  store i32 %29, i32* %3, align 4
  %30 = load i32, i32* %3, align 4
  %31 = load i32, i32* %2, align 4
  %32 = call i32 @EXYNOS_ARM_CORE_CONFIGURATION(i32 %31)
  %33 = call i32 @pmu_raw_writel(i32 %30, i32 %32)
  br label %34

34:                                               ; preds = %22, %20
  ret void
}

declare dso_local i64 @soc_is_exynos5420(...) #1

declare dso_local i64 @soc_is_exynos5800(...) #1

declare dso_local i32 @pmu_raw_readl(i32) #1

declare dso_local i32 @EXYNOS_ARM_CORE_CONFIGURATION(i32) #1

declare dso_local i32 @pmu_raw_writel(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
