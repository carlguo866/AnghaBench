; ModuleID = '/home/carl/AnghaBench/linux/drivers/clocksource/extr_timer-ti-dm.c_omap_dm_timer_write_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clocksource/extr_timer-ti-dm.c_omap_dm_timer_write_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_dm_timer = type { i32 }

@_OMAP_TIMER_WAKEUP_EN_OFFSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.omap_dm_timer*, i32, i32)* @omap_dm_timer_write_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @omap_dm_timer_write_reg(%struct.omap_dm_timer* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.omap_dm_timer*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.omap_dm_timer* %0, %struct.omap_dm_timer** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %5, align 4
  %8 = and i32 %7, 255
  %9 = load i32, i32* @_OMAP_TIMER_WAKEUP_EN_OFFSET, align 4
  %10 = icmp slt i32 %8, %9
  %11 = zext i1 %10 to i32
  %12 = call i32 @WARN_ON(i32 %11)
  %13 = load %struct.omap_dm_timer*, %struct.omap_dm_timer** %4, align 8
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* %6, align 4
  %16 = load %struct.omap_dm_timer*, %struct.omap_dm_timer** %4, align 8
  %17 = getelementptr inbounds %struct.omap_dm_timer, %struct.omap_dm_timer* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @__omap_dm_timer_write(%struct.omap_dm_timer* %13, i32 %14, i32 %15, i32 %18)
  ret void
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @__omap_dm_timer_write(%struct.omap_dm_timer*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
