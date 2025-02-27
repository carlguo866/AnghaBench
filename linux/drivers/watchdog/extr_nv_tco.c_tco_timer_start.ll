; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_nv_tco.c_tco_timer_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_nv_tco.c_tco_timer_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@tco_lock = common dso_local global i32 0, align 4
@tcobase = common dso_local global i32 0, align 4
@TCO_CNT_TCOHALT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @tco_timer_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tco_timer_start() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = load i64, i64* %2, align 8
  %4 = call i32 @spin_lock_irqsave(i32* @tco_lock, i64 %3)
  %5 = load i32, i32* @tcobase, align 4
  %6 = call i32 @TCO_CNT(i32 %5)
  %7 = call i32 @inl(i32 %6)
  store i32 %7, i32* %1, align 4
  %8 = load i32, i32* @TCO_CNT_TCOHALT, align 4
  %9 = xor i32 %8, -1
  %10 = load i32, i32* %1, align 4
  %11 = and i32 %10, %9
  store i32 %11, i32* %1, align 4
  %12 = load i32, i32* %1, align 4
  %13 = load i32, i32* @tcobase, align 4
  %14 = call i32 @TCO_CNT(i32 %13)
  %15 = call i32 @outl(i32 %12, i32 %14)
  %16 = load i64, i64* %2, align 8
  %17 = call i32 @spin_unlock_irqrestore(i32* @tco_lock, i64 %16)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @inl(i32) #1

declare dso_local i32 @TCO_CNT(i32) #1

declare dso_local i32 @outl(i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
