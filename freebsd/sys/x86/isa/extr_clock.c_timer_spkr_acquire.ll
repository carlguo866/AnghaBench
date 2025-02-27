; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/isa/extr_clock.c_timer_spkr_acquire.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/isa/extr_clock.c_timer_spkr_acquire.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TIMER_SEL2 = common dso_local global i32 0, align 4
@TIMER_SQWAVE = common dso_local global i32 0, align 4
@TIMER_16BIT = common dso_local global i32 0, align 4
@timer2_state = common dso_local global i64 0, align 8
@RELEASED = common dso_local global i64 0, align 8
@ACQUIRED = common dso_local global i64 0, align 8
@TIMER_MODE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @timer_spkr_acquire() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i32, i32* @TIMER_SEL2, align 4
  %4 = load i32, i32* @TIMER_SQWAVE, align 4
  %5 = or i32 %3, %4
  %6 = load i32, i32* @TIMER_16BIT, align 4
  %7 = or i32 %5, %6
  store i32 %7, i32* %2, align 4
  %8 = load i64, i64* @timer2_state, align 8
  %9 = load i64, i64* @RELEASED, align 8
  %10 = icmp ne i64 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %0
  store i32 -1, i32* %1, align 4
  br label %21

12:                                               ; preds = %0
  %13 = load i64, i64* @ACQUIRED, align 8
  store i64 %13, i64* @timer2_state, align 8
  %14 = load i32, i32* @TIMER_MODE, align 4
  %15 = load i32, i32* @TIMER_SEL2, align 4
  %16 = load i32, i32* %2, align 4
  %17 = and i32 %16, 63
  %18 = or i32 %15, %17
  %19 = call i32 @outb(i32 %14, i32 %18)
  %20 = call i32 (...) @ppi_spkr_on()
  store i32 0, i32* %1, align 4
  br label %21

21:                                               ; preds = %12, %11
  %22 = load i32, i32* %1, align 4
  ret i32 %22
}

declare dso_local i32 @outb(i32, i32) #1

declare dso_local i32 @ppi_spkr_on(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
