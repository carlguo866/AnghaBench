; ModuleID = '/home/carl/AnghaBench/linux/drivers/clocksource/extr_timer-atlas7.c_sirfsoc_timer_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clocksource/extr_timer-atlas7.c_sirfsoc_timer_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clock_event_device = type { i32 (%struct.clock_event_device*)* }

@sirfsoc_timer_base = common dso_local global i64 0, align 8
@SIRFSOC_TIMER_INTR_STATUS = common dso_local global i64 0, align 8
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @sirfsoc_timer_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sirfsoc_timer_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.clock_event_device*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.clock_event_device*
  store %struct.clock_event_device* %8, %struct.clock_event_device** %5, align 8
  %9 = call i32 (...) @smp_processor_id()
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = call i32 @BIT(i32 %10)
  %12 = load i64, i64* @sirfsoc_timer_base, align 8
  %13 = load i64, i64* @SIRFSOC_TIMER_INTR_STATUS, align 8
  %14 = add nsw i64 %12, %13
  %15 = call i32 @writel_relaxed(i32 %11, i64 %14)
  %16 = load %struct.clock_event_device*, %struct.clock_event_device** %5, align 8
  %17 = call i64 @clockevent_state_oneshot(%struct.clock_event_device* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @sirfsoc_timer_count_disable(i32 %20)
  br label %22

22:                                               ; preds = %19, %2
  %23 = load %struct.clock_event_device*, %struct.clock_event_device** %5, align 8
  %24 = getelementptr inbounds %struct.clock_event_device, %struct.clock_event_device* %23, i32 0, i32 0
  %25 = load i32 (%struct.clock_event_device*)*, i32 (%struct.clock_event_device*)** %24, align 8
  %26 = load %struct.clock_event_device*, %struct.clock_event_device** %5, align 8
  %27 = call i32 %25(%struct.clock_event_device* %26)
  %28 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %28
}

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i64 @clockevent_state_oneshot(%struct.clock_event_device*) #1

declare dso_local i32 @sirfsoc_timer_count_disable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
