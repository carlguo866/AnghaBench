; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_pmc_atom.c_pmc_power_off.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_pmc_atom.c_pmc_power_off.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [42 x i8] c"Preparing to enter system sleep state S5\0A\00", align 1
@acpi_base_addr = common dso_local global i64 0, align 8
@PM1_CNT = common dso_local global i64 0, align 8
@SLEEP_TYPE_MASK = common dso_local global i32 0, align 4
@SLEEP_TYPE_S5 = common dso_local global i32 0, align 4
@SLEEP_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @pmc_power_off to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pmc_power_off() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32, align 4
  %3 = call i32 @pr_info(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %4 = load i64, i64* @acpi_base_addr, align 8
  %5 = load i64, i64* @PM1_CNT, align 8
  %6 = add nsw i64 %4, %5
  store i64 %6, i64* %1, align 8
  %7 = load i64, i64* %1, align 8
  %8 = call i32 @inl(i64 %7)
  store i32 %8, i32* %2, align 4
  %9 = load i32, i32* @SLEEP_TYPE_MASK, align 4
  %10 = load i32, i32* %2, align 4
  %11 = and i32 %10, %9
  store i32 %11, i32* %2, align 4
  %12 = load i32, i32* @SLEEP_TYPE_S5, align 4
  %13 = load i32, i32* %2, align 4
  %14 = or i32 %13, %12
  store i32 %14, i32* %2, align 4
  %15 = load i32, i32* @SLEEP_ENABLE, align 4
  %16 = load i32, i32* %2, align 4
  %17 = or i32 %16, %15
  store i32 %17, i32* %2, align 4
  %18 = load i32, i32* %2, align 4
  %19 = load i64, i64* %1, align 8
  %20 = call i32 @outl(i32 %18, i64 %19)
  ret void
}

declare dso_local i32 @pr_info(i8*) #1

declare dso_local i32 @inl(i64) #1

declare dso_local i32 @outl(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
