; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/watchdog/extr_smsc37b787_wdt.c_wb_smsc_wdt_set_timeout.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/watchdog/extr_smsc37b787_wdt.c_wb_smsc_wdt_set_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@io_lock = common dso_local global i32 0, align 4
@IODEV_NO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8)* @wb_smsc_wdt_set_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wb_smsc_wdt_set_timeout(i8 zeroext %0) #0 {
  %2 = alloca i8, align 1
  store i8 %0, i8* %2, align 1
  %3 = call i32 @spin_lock(i32* @io_lock)
  %4 = call i32 (...) @open_io_config()
  %5 = load i32, i32* @IODEV_NO, align 4
  %6 = call i32 @select_io_device(i32 %5)
  %7 = load i8, i8* %2, align 1
  %8 = zext i8 %7 to i32
  %9 = icmp eq i32 %8, 0
  %10 = zext i1 %9 to i64
  %11 = select i1 %9, i32 0, i32 2
  %12 = call i32 @wdt_timer_ctrl(i32 %11)
  %13 = load i8, i8* %2, align 1
  %14 = call i32 @wdt_timeout_value(i8 zeroext %13)
  %15 = call i32 (...) @close_io_config()
  %16 = call i32 @spin_unlock(i32* @io_lock)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @open_io_config(...) #1

declare dso_local i32 @select_io_device(i32) #1

declare dso_local i32 @wdt_timer_ctrl(i32) #1

declare dso_local i32 @wdt_timeout_value(i8 zeroext) #1

declare dso_local i32 @close_io_config(...) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
