; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-davinci/extr_time.c_davinci_set_mode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-davinci/extr_time.c_davinci_set_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timer_s = type { i32, i32 }
%struct.clock_event_device = type { i32 }

@timers = common dso_local global %struct.timer_s* null, align 8
@TID_CLOCKEVENT = common dso_local global i64 0, align 8
@davinci_clock_tick_rate = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@TIMER_OPTS_STATE_MASK = common dso_local global i32 0, align 4
@TIMER_OPTS_PERIODIC = common dso_local global i32 0, align 4
@TIMER_OPTS_ONESHOT = common dso_local global i32 0, align 4
@TIMER_OPTS_DISABLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.clock_event_device*)* @davinci_set_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @davinci_set_mode(i32 %0, %struct.clock_event_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.clock_event_device*, align 8
  %5 = alloca %struct.timer_s*, align 8
  store i32 %0, i32* %3, align 4
  store %struct.clock_event_device* %1, %struct.clock_event_device** %4, align 8
  %6 = load %struct.timer_s*, %struct.timer_s** @timers, align 8
  %7 = load i64, i64* @TID_CLOCKEVENT, align 8
  %8 = getelementptr inbounds %struct.timer_s, %struct.timer_s* %6, i64 %7
  store %struct.timer_s* %8, %struct.timer_s** %5, align 8
  %9 = load i32, i32* %3, align 4
  switch i32 %9, label %54 [
    i32 131, label %10
    i32 132, label %29
    i32 128, label %41
    i32 129, label %41
    i32 130, label %53
  ]

10:                                               ; preds = %2
  %11 = load i32, i32* @davinci_clock_tick_rate, align 4
  %12 = load i32, i32* @HZ, align 4
  %13 = sdiv i32 %11, %12
  %14 = load %struct.timer_s*, %struct.timer_s** %5, align 8
  %15 = getelementptr inbounds %struct.timer_s, %struct.timer_s* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 4
  %16 = load i32, i32* @TIMER_OPTS_STATE_MASK, align 4
  %17 = xor i32 %16, -1
  %18 = load %struct.timer_s*, %struct.timer_s** %5, align 8
  %19 = getelementptr inbounds %struct.timer_s, %struct.timer_s* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = and i32 %20, %17
  store i32 %21, i32* %19, align 4
  %22 = load i32, i32* @TIMER_OPTS_PERIODIC, align 4
  %23 = load %struct.timer_s*, %struct.timer_s** %5, align 8
  %24 = getelementptr inbounds %struct.timer_s, %struct.timer_s* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = or i32 %25, %22
  store i32 %26, i32* %24, align 4
  %27 = load %struct.timer_s*, %struct.timer_s** %5, align 8
  %28 = call i32 @timer32_config(%struct.timer_s* %27)
  br label %54

29:                                               ; preds = %2
  %30 = load i32, i32* @TIMER_OPTS_STATE_MASK, align 4
  %31 = xor i32 %30, -1
  %32 = load %struct.timer_s*, %struct.timer_s** %5, align 8
  %33 = getelementptr inbounds %struct.timer_s, %struct.timer_s* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = and i32 %34, %31
  store i32 %35, i32* %33, align 4
  %36 = load i32, i32* @TIMER_OPTS_ONESHOT, align 4
  %37 = load %struct.timer_s*, %struct.timer_s** %5, align 8
  %38 = getelementptr inbounds %struct.timer_s, %struct.timer_s* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = or i32 %39, %36
  store i32 %40, i32* %38, align 4
  br label %54

41:                                               ; preds = %2, %2
  %42 = load i32, i32* @TIMER_OPTS_STATE_MASK, align 4
  %43 = xor i32 %42, -1
  %44 = load %struct.timer_s*, %struct.timer_s** %5, align 8
  %45 = getelementptr inbounds %struct.timer_s, %struct.timer_s* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = and i32 %46, %43
  store i32 %47, i32* %45, align 4
  %48 = load i32, i32* @TIMER_OPTS_DISABLED, align 4
  %49 = load %struct.timer_s*, %struct.timer_s** %5, align 8
  %50 = getelementptr inbounds %struct.timer_s, %struct.timer_s* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = or i32 %51, %48
  store i32 %52, i32* %50, align 4
  br label %54

53:                                               ; preds = %2
  br label %54

54:                                               ; preds = %2, %53, %41, %29, %10
  ret void
}

declare dso_local i32 @timer32_config(%struct.timer_s*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
