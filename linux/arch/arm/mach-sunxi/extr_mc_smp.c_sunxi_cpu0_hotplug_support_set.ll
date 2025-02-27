; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-sunxi/extr_mc_smp.c_sunxi_cpu0_hotplug_support_set.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-sunxi/extr_mc_smp.c_sunxi_cpu0_hotplug_support_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CPU0_SUPPORT_HOTPLUG_MAGIC0 = common dso_local global i32 0, align 4
@sram_b_smp_base = common dso_local global i64 0, align 8
@CPU0_SUPPORT_HOTPLUG_MAGIC1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @sunxi_cpu0_hotplug_support_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sunxi_cpu0_hotplug_support_set(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %5, label %13

5:                                                ; preds = %1
  %6 = load i32, i32* @CPU0_SUPPORT_HOTPLUG_MAGIC0, align 4
  %7 = load i64, i64* @sram_b_smp_base, align 8
  %8 = call i32 @writel(i32 %6, i64 %7)
  %9 = load i32, i32* @CPU0_SUPPORT_HOTPLUG_MAGIC1, align 4
  %10 = load i64, i64* @sram_b_smp_base, align 8
  %11 = add nsw i64 %10, 4
  %12 = call i32 @writel(i32 %9, i64 %11)
  br label %19

13:                                               ; preds = %1
  %14 = load i64, i64* @sram_b_smp_base, align 8
  %15 = call i32 @writel(i32 0, i64 %14)
  %16 = load i64, i64* @sram_b_smp_base, align 8
  %17 = add nsw i64 %16, 4
  %18 = call i32 @writel(i32 0, i64 %17)
  br label %19

19:                                               ; preds = %13, %5
  ret void
}

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
