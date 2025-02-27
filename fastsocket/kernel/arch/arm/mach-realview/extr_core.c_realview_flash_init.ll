; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-realview/extr_core.c_realview_flash_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-realview/extr_core.c_realview_flash_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@REALVIEW_FLASHCTRL = common dso_local global i32 0, align 4
@REALVIEW_FLASHPROG_FLVPPEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @realview_flash_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @realview_flash_init() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @REALVIEW_FLASHCTRL, align 4
  %3 = call i32 @__raw_readl(i32 %2)
  store i32 %3, i32* %1, align 4
  %4 = load i32, i32* @REALVIEW_FLASHPROG_FLVPPEN, align 4
  %5 = xor i32 %4, -1
  %6 = load i32, i32* %1, align 4
  %7 = and i32 %6, %5
  store i32 %7, i32* %1, align 4
  %8 = load i32, i32* %1, align 4
  %9 = load i32, i32* @REALVIEW_FLASHCTRL, align 4
  %10 = call i32 @__raw_writel(i32 %8, i32 %9)
  ret i32 0
}

declare dso_local i32 @__raw_readl(i32) #1

declare dso_local i32 @__raw_writel(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
