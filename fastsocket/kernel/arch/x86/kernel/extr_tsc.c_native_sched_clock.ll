; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_tsc.c_native_sched_clock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_tsc.c_native_sched_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@tsc_disabled = common dso_local global i32 0, align 4
@jiffies_64 = common dso_local global i32 0, align 4
@INITIAL_JIFFIES = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @native_sched_clock() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i32, i32* @tsc_disabled, align 4
  %4 = call i64 @unlikely(i32 %3)
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %13

6:                                                ; preds = %0
  %7 = load i32, i32* @jiffies_64, align 4
  %8 = load i32, i32* @INITIAL_JIFFIES, align 4
  %9 = sub nsw i32 %7, %8
  %10 = load i32, i32* @HZ, align 4
  %11 = sdiv i32 1000000000, %10
  %12 = mul nsw i32 %9, %11
  store i32 %12, i32* %1, align 4
  br label %18

13:                                               ; preds = %0
  %14 = load i32, i32* %2, align 4
  %15 = call i32 @rdtscll(i32 %14)
  %16 = load i32, i32* %2, align 4
  %17 = call i32 @__cycles_2_ns(i32 %16)
  store i32 %17, i32* %1, align 4
  br label %18

18:                                               ; preds = %13, %6
  %19 = load i32, i32* %1, align 4
  ret i32 %19
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @rdtscll(i32) #1

declare dso_local i32 @__cycles_2_ns(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
