; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-mmp/extr_pm-mmp2.c_pm_scu_clk_disable.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-mmp/extr_pm-mmp2.c_pm_scu_clk_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @pm_scu_clk_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pm_scu_clk_disable() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 @CIU_REG(i32 100)
  %3 = call i32 @__raw_writel(i32 0, i32 %2)
  %4 = call i32 @CIU_REG(i32 104)
  %5 = call i32 @__raw_writel(i32 0, i32 %4)
  %6 = call i32 @CIU_REG(i32 28)
  %7 = call i32 @__raw_readl(i32 %6)
  store i32 %7, i32* %1, align 4
  %8 = load i32, i32* %1, align 4
  %9 = or i32 %8, 240
  store i32 %9, i32* %1, align 4
  %10 = load i32, i32* %1, align 4
  %11 = call i32 @CIU_REG(i32 28)
  %12 = call i32 @__raw_writel(i32 %10, i32 %11)
  ret void
}

declare dso_local i32 @__raw_writel(i32, i32) #1

declare dso_local i32 @CIU_REG(i32) #1

declare dso_local i32 @__raw_readl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
