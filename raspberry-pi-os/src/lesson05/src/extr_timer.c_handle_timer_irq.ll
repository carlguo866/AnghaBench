; ModuleID = '/home/carl/AnghaBench/raspberry-pi-os/src/lesson05/src/extr_timer.c_handle_timer_irq.c'
source_filename = "/home/carl/AnghaBench/raspberry-pi-os/src/lesson05/src/extr_timer.c_handle_timer_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@interval = common dso_local global i64 0, align 8
@curVal = common dso_local global i32 0, align 4
@TIMER_C1 = common dso_local global i32 0, align 4
@TIMER_CS = common dso_local global i32 0, align 4
@TIMER_CS_M1 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @handle_timer_irq() #0 {
  %1 = load i64, i64* @interval, align 8
  %2 = load i32, i32* @curVal, align 4
  %3 = sext i32 %2 to i64
  %4 = add nsw i64 %3, %1
  %5 = trunc i64 %4 to i32
  store i32 %5, i32* @curVal, align 4
  %6 = load i32, i32* @TIMER_C1, align 4
  %7 = load i32, i32* @curVal, align 4
  %8 = call i32 @put32(i32 %6, i32 %7)
  %9 = load i32, i32* @TIMER_CS, align 4
  %10 = load i32, i32* @TIMER_CS_M1, align 4
  %11 = call i32 @put32(i32 %9, i32 %10)
  %12 = call i32 (...) @timer_tick()
  ret void
}

declare dso_local i32 @put32(i32, i32) #1

declare dso_local i32 @timer_tick(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
