; ModuleID = '/home/carl/AnghaBench/linux/drivers/clocksource/extr_timer-tegra.c_tegra_timer_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clocksource/extr_timer-tegra.c_tegra_timer_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timer_of = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 (%struct.TYPE_2__*)* }

@tegra_to = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @tegra_timer_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_timer_stop(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.timer_of*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = call %struct.timer_of* @per_cpu_ptr(i32* @tegra_to, i32 %4)
  store %struct.timer_of* %5, %struct.timer_of** %3, align 8
  %6 = load %struct.timer_of*, %struct.timer_of** %3, align 8
  %7 = getelementptr inbounds %struct.timer_of, %struct.timer_of* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 1
  %9 = load i32 (%struct.TYPE_2__*)*, i32 (%struct.TYPE_2__*)** %8, align 8
  %10 = load %struct.timer_of*, %struct.timer_of** %3, align 8
  %11 = getelementptr inbounds %struct.timer_of, %struct.timer_of* %10, i32 0, i32 0
  %12 = call i32 %9(%struct.TYPE_2__* %11)
  %13 = load %struct.timer_of*, %struct.timer_of** %3, align 8
  %14 = getelementptr inbounds %struct.timer_of, %struct.timer_of* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @disable_irq_nosync(i32 %16)
  ret i32 0
}

declare dso_local %struct.timer_of* @per_cpu_ptr(i32*, i32) #1

declare dso_local i32 @disable_irq_nosync(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
