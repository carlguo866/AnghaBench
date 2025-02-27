; ModuleID = '/home/carl/AnghaBench/linux/drivers/clocksource/extr_timer-imx-tpm.c_tpm_timer_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clocksource/extr_timer-imx-tpm.c_tpm_timer_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@timer_base = common dso_local global i64 0, align 8
@TPM_C0SC = common dso_local global i64 0, align 8
@TPM_C0SC_MODE_SW_COMPARE = common dso_local global i32 0, align 4
@TPM_C0SC_MODE_SHIFT = common dso_local global i32 0, align 4
@TPM_C0SC_CHIE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @tpm_timer_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tpm_timer_enable() #0 {
  %1 = alloca i32, align 4
  %2 = load i64, i64* @timer_base, align 8
  %3 = load i64, i64* @TPM_C0SC, align 8
  %4 = add nsw i64 %2, %3
  %5 = call i32 @readl(i64 %4)
  store i32 %5, i32* %1, align 4
  %6 = load i32, i32* @TPM_C0SC_MODE_SW_COMPARE, align 4
  %7 = load i32, i32* @TPM_C0SC_MODE_SHIFT, align 4
  %8 = shl i32 %6, %7
  %9 = load i32, i32* @TPM_C0SC_CHIE, align 4
  %10 = or i32 %8, %9
  %11 = load i32, i32* %1, align 4
  %12 = or i32 %11, %10
  store i32 %12, i32* %1, align 4
  %13 = load i32, i32* %1, align 4
  %14 = load i64, i64* @timer_base, align 8
  %15 = load i64, i64* @TPM_C0SC, align 8
  %16 = add nsw i64 %14, %15
  %17 = call i32 @writel(i32 %13, i64 %16)
  ret void
}

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
