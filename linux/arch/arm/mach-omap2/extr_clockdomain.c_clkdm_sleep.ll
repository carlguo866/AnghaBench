; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mach-omap2/extr_clockdomain.c_clkdm_sleep.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mach-omap2/extr_clockdomain.c_clkdm_sleep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clockdomain = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @clkdm_sleep(%struct.clockdomain* %0) #0 {
  %2 = alloca %struct.clockdomain*, align 8
  %3 = alloca i32, align 4
  store %struct.clockdomain* %0, %struct.clockdomain** %2, align 8
  %4 = load %struct.clockdomain*, %struct.clockdomain** %2, align 8
  %5 = getelementptr inbounds %struct.clockdomain, %struct.clockdomain* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @pwrdm_lock(i32 %7)
  %9 = load %struct.clockdomain*, %struct.clockdomain** %2, align 8
  %10 = call i32 @clkdm_sleep_nolock(%struct.clockdomain* %9)
  store i32 %10, i32* %3, align 4
  %11 = load %struct.clockdomain*, %struct.clockdomain** %2, align 8
  %12 = getelementptr inbounds %struct.clockdomain, %struct.clockdomain* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @pwrdm_unlock(i32 %14)
  %16 = load i32, i32* %3, align 4
  ret i32 %16
}

declare dso_local i32 @pwrdm_lock(i32) #1

declare dso_local i32 @clkdm_sleep_nolock(%struct.clockdomain*) #1

declare dso_local i32 @pwrdm_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
