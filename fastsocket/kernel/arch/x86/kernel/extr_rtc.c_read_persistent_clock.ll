; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_rtc.c_read_persistent_clock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_rtc.c_read_persistent_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 (...)* }
%struct.timespec = type { i64, i64 }

@rtc_lock = common dso_local global i32 0, align 4
@x86_platform = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @read_persistent_clock(%struct.timespec* %0) #0 {
  %2 = alloca %struct.timespec*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  store %struct.timespec* %0, %struct.timespec** %2, align 8
  %5 = load i64, i64* %4, align 8
  %6 = call i32 @spin_lock_irqsave(i32* @rtc_lock, i64 %5)
  %7 = load i64 (...)*, i64 (...)** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @x86_platform, i32 0, i32 0), align 8
  %8 = call i64 (...) %7()
  store i64 %8, i64* %3, align 8
  %9 = load i64, i64* %4, align 8
  %10 = call i32 @spin_unlock_irqrestore(i32* @rtc_lock, i64 %9)
  %11 = load i64, i64* %3, align 8
  %12 = load %struct.timespec*, %struct.timespec** %2, align 8
  %13 = getelementptr inbounds %struct.timespec, %struct.timespec* %12, i32 0, i32 0
  store i64 %11, i64* %13, align 8
  %14 = load %struct.timespec*, %struct.timespec** %2, align 8
  %15 = getelementptr inbounds %struct.timespec, %struct.timespec* %14, i32 0, i32 1
  store i64 0, i64* %15, align 8
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
