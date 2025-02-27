; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-omap2/extr_prm33xx.c_am33xx_prm_global_warm_sw_reset.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-omap2/extr_prm33xx.c_am33xx_prm_global_warm_sw_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AM33XX_RST_GLOBAL_WARM_SW_MASK = common dso_local global i32 0, align 4
@AM33XX_PRM_DEVICE_MOD = common dso_local global i32 0, align 4
@AM33XX_PRM_RSTCTRL_OFFSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @am33xx_prm_global_warm_sw_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @am33xx_prm_global_warm_sw_reset() #0 {
  %1 = load i32, i32* @AM33XX_RST_GLOBAL_WARM_SW_MASK, align 4
  %2 = load i32, i32* @AM33XX_RST_GLOBAL_WARM_SW_MASK, align 4
  %3 = load i32, i32* @AM33XX_PRM_DEVICE_MOD, align 4
  %4 = load i32, i32* @AM33XX_PRM_RSTCTRL_OFFSET, align 4
  %5 = call i32 @am33xx_prm_rmw_reg_bits(i32 %1, i32 %2, i32 %3, i32 %4)
  %6 = load i32, i32* @AM33XX_PRM_DEVICE_MOD, align 4
  %7 = load i32, i32* @AM33XX_PRM_RSTCTRL_OFFSET, align 4
  %8 = call i32 @am33xx_prm_read_reg(i32 %6, i32 %7)
  ret void
}

declare dso_local i32 @am33xx_prm_rmw_reg_bits(i32, i32, i32, i32) #1

declare dso_local i32 @am33xx_prm_read_reg(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
