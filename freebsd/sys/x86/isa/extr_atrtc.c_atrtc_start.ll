; ModuleID = '/home/carl/AnghaBench/freebsd/sys/x86/isa/extr_atrtc.c_atrtc_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/x86/isa/extr_atrtc.c_atrtc_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@atrtc_lock = common dso_local global i32 0, align 4
@RTC_STATUSA = common dso_local global i32 0, align 4
@rtc_statusa = common dso_local global i32 0, align 4
@RTC_STATUSB = common dso_local global i32 0, align 4
@RTCSB_24HR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @atrtc_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atrtc_start() #0 {
  %1 = call i32 @mtx_lock_spin(i32* @atrtc_lock)
  %2 = load i32, i32* @RTC_STATUSA, align 4
  %3 = load i32, i32* @rtc_statusa, align 4
  %4 = call i32 @rtcout_locked(i32 %2, i32 %3)
  %5 = load i32, i32* @RTC_STATUSB, align 4
  %6 = load i32, i32* @RTCSB_24HR, align 4
  %7 = call i32 @rtcout_locked(i32 %5, i32 %6)
  %8 = call i32 @mtx_unlock_spin(i32* @atrtc_lock)
  ret void
}

declare dso_local i32 @mtx_lock_spin(i32*) #1

declare dso_local i32 @rtcout_locked(i32, i32) #1

declare dso_local i32 @mtx_unlock_spin(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
