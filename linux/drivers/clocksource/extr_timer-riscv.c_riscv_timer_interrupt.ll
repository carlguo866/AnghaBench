; ModuleID = '/home/carl/AnghaBench/linux/drivers/clocksource/extr_timer-riscv.c_riscv_timer_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clocksource/extr_timer-riscv.c_riscv_timer_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clock_event_device = type { i32 (%struct.clock_event_device*)* }

@riscv_clock_event = common dso_local global i32 0, align 4
@sie = common dso_local global i32 0, align 4
@SIE_STIE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @riscv_timer_interrupt() #0 {
  %1 = alloca %struct.clock_event_device*, align 8
  %2 = call %struct.clock_event_device* @this_cpu_ptr(i32* @riscv_clock_event)
  store %struct.clock_event_device* %2, %struct.clock_event_device** %1, align 8
  %3 = load i32, i32* @sie, align 4
  %4 = load i32, i32* @SIE_STIE, align 4
  %5 = call i32 @csr_clear(i32 %3, i32 %4)
  %6 = load %struct.clock_event_device*, %struct.clock_event_device** %1, align 8
  %7 = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %6, i32 0, i32 0
  %8 = load i32 (%struct.clock_event_device*)*, i32 (%struct.clock_event_device*)** %7, align 8
  %9 = load %struct.clock_event_device*, %struct.clock_event_device** %1, align 8
  %10 = call i32 %8(%struct.clock_event_device* %9)
  ret void
}

declare dso_local %struct.clock_event_device* @this_cpu_ptr(i32*) #1

declare dso_local i32 @csr_clear(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
