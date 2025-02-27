; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-ep93xx/extr_core.c_ep93xx_chip_revision.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-ep93xx/extr_core.c_ep93xx_chip_revision.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EP93XX_SYSCON_SYSCFG = common dso_local global i32 0, align 4
@EP93XX_SYSCON_SYSCFG_REV_MASK = common dso_local global i32 0, align 4
@EP93XX_SYSCON_SYSCFG_REV_SHIFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ep93xx_chip_revision() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @EP93XX_SYSCON_SYSCFG, align 4
  %3 = call i32 @__raw_readl(i32 %2)
  store i32 %3, i32* %1, align 4
  %4 = load i32, i32* @EP93XX_SYSCON_SYSCFG_REV_MASK, align 4
  %5 = load i32, i32* %1, align 4
  %6 = and i32 %5, %4
  store i32 %6, i32* %1, align 4
  %7 = load i32, i32* @EP93XX_SYSCON_SYSCFG_REV_SHIFT, align 4
  %8 = load i32, i32* %1, align 4
  %9 = lshr i32 %8, %7
  store i32 %9, i32* %1, align 4
  %10 = load i32, i32* %1, align 4
  ret i32 %10
}

declare dso_local i32 @__raw_readl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
