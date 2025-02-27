; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-ns9xxx/extr_time-ns9360.c_ns9360_clockevent_setnextevent.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-ns9xxx/extr_time-ns9360.c_ns9360_clockevent_setnextevent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clock_event_device = type { i32 }

@TIMER_CLOCKEVENT = common dso_local global i32 0, align 4
@SYS_TCx = common dso_local global i32 0, align 4
@TEN = common dso_local global i32 0, align 4
@DIS = common dso_local global i32 0, align 4
@EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, %struct.clock_event_device*)* @ns9360_clockevent_setnextevent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ns9360_clockevent_setnextevent(i64 %0, %struct.clock_event_device* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.clock_event_device*, align 8
  %5 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store %struct.clock_event_device* %1, %struct.clock_event_device** %4, align 8
  %6 = load i32, i32* @TIMER_CLOCKEVENT, align 4
  %7 = call i32 @SYS_TC(i32 %6)
  %8 = call i64 @__raw_readl(i32 %7)
  store i64 %8, i64* %5, align 8
  %9 = load i64, i64* %5, align 8
  %10 = load i32, i32* @SYS_TCx, align 4
  %11 = load i32, i32* @TEN, align 4
  %12 = call i64 @REGGET(i64 %9, i32 %10, i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %24

14:                                               ; preds = %2
  %15 = load i64, i64* %5, align 8
  %16 = load i32, i32* @SYS_TCx, align 4
  %17 = load i32, i32* @TEN, align 4
  %18 = load i32, i32* @DIS, align 4
  %19 = call i32 @REGSET(i64 %15, i32 %16, i32 %17, i32 %18)
  %20 = load i64, i64* %5, align 8
  %21 = load i32, i32* @TIMER_CLOCKEVENT, align 4
  %22 = call i32 @SYS_TC(i32 %21)
  %23 = call i32 @__raw_writel(i64 %20, i32 %22)
  br label %24

24:                                               ; preds = %14, %2
  %25 = load i64, i64* %5, align 8
  %26 = load i32, i32* @SYS_TCx, align 4
  %27 = load i32, i32* @TEN, align 4
  %28 = load i32, i32* @EN, align 4
  %29 = call i32 @REGSET(i64 %25, i32 %26, i32 %27, i32 %28)
  %30 = load i64, i64* %3, align 8
  %31 = load i32, i32* @TIMER_CLOCKEVENT, align 4
  %32 = call i32 @SYS_TRC(i32 %31)
  %33 = call i32 @__raw_writel(i64 %30, i32 %32)
  %34 = load i64, i64* %5, align 8
  %35 = load i32, i32* @TIMER_CLOCKEVENT, align 4
  %36 = call i32 @SYS_TC(i32 %35)
  %37 = call i32 @__raw_writel(i64 %34, i32 %36)
  ret i32 0
}

declare dso_local i64 @__raw_readl(i32) #1

declare dso_local i32 @SYS_TC(i32) #1

declare dso_local i64 @REGGET(i64, i32, i32) #1

declare dso_local i32 @REGSET(i64, i32, i32, i32) #1

declare dso_local i32 @__raw_writel(i64, i32) #1

declare dso_local i32 @SYS_TRC(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
