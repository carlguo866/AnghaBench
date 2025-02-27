; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-omap2/extr_prm2xxx.c_omap2xxx_pwrdm_set_next_pwrst.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-omap2/extr_prm2xxx.c_omap2xxx_pwrdm_set_next_pwrst.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.powerdomain = type { i32 }

@OMAP24XX_PWRDM_POWER_OFF = common dso_local global i32 0, align 4
@OMAP24XX_PWRDM_POWER_RET = common dso_local global i32 0, align 4
@OMAP24XX_PWRDM_POWER_ON = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@OMAP_POWERSTATE_MASK = common dso_local global i32 0, align 4
@OMAP_POWERSTATE_SHIFT = common dso_local global i32 0, align 4
@OMAP2_PM_PWSTCTRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.powerdomain*, i32)* @omap2xxx_pwrdm_set_next_pwrst to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap2xxx_pwrdm_set_next_pwrst(%struct.powerdomain* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.powerdomain*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.powerdomain* %0, %struct.powerdomain** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  switch i32 %7, label %14 [
    i32 130, label %8
    i32 128, label %10
    i32 129, label %12
  ]

8:                                                ; preds = %2
  %9 = load i32, i32* @OMAP24XX_PWRDM_POWER_OFF, align 4
  store i32 %9, i32* %6, align 4
  br label %17

10:                                               ; preds = %2
  %11 = load i32, i32* @OMAP24XX_PWRDM_POWER_RET, align 4
  store i32 %11, i32* %6, align 4
  br label %17

12:                                               ; preds = %2
  %13 = load i32, i32* @OMAP24XX_PWRDM_POWER_ON, align 4
  store i32 %13, i32* %6, align 4
  br label %17

14:                                               ; preds = %2
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %27

17:                                               ; preds = %12, %10, %8
  %18 = load i32, i32* @OMAP_POWERSTATE_MASK, align 4
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @OMAP_POWERSTATE_SHIFT, align 4
  %21 = shl i32 %19, %20
  %22 = load %struct.powerdomain*, %struct.powerdomain** %4, align 8
  %23 = getelementptr inbounds %struct.powerdomain, %struct.powerdomain* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @OMAP2_PM_PWSTCTRL, align 4
  %26 = call i32 @omap2_prm_rmw_mod_reg_bits(i32 %18, i32 %21, i32 %24, i32 %25)
  store i32 0, i32* %3, align 4
  br label %27

27:                                               ; preds = %17, %14
  %28 = load i32, i32* %3, align 4
  ret i32 %28
}

declare dso_local i32 @omap2_prm_rmw_mod_reg_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
