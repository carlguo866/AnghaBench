; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/perf/extr_hv-24x7.c_h_24x7_event_cancel_txn.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/perf/extr_hv-24x7.c_h_24x7_event_cancel_txn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pmu = type { i32 }

@hv_24x7_txn_flags = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pmu*)* @h_24x7_event_cancel_txn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @h_24x7_event_cancel_txn(%struct.pmu* %0) #0 {
  %2 = alloca %struct.pmu*, align 8
  store %struct.pmu* %0, %struct.pmu** %2, align 8
  %3 = load i32, i32* @hv_24x7_txn_flags, align 4
  %4 = call i32 @__this_cpu_read(i32 %3)
  %5 = icmp ne i32 %4, 0
  %6 = xor i1 %5, true
  %7 = zext i1 %6 to i32
  %8 = call i32 @WARN_ON_ONCE(i32 %7)
  %9 = call i32 (...) @reset_txn()
  ret void
}

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @__this_cpu_read(i32) #1

declare dso_local i32 @reset_txn(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
