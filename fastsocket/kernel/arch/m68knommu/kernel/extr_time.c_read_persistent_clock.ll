; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/m68knommu/kernel/extr_time.c_read_persistent_clock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/m68knommu/kernel/extr_time.c_read_persistent_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timespec = type { i64, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @read_persistent_clock(%struct.timespec* %0) #0 {
  %2 = alloca %struct.timespec*, align 8
  store %struct.timespec* %0, %struct.timespec** %2, align 8
  %3 = call i32 (...) @read_rtc_mmss()
  %4 = load %struct.timespec*, %struct.timespec** %2, align 8
  %5 = getelementptr inbounds %struct.timespec, %struct.timespec* %4, i32 0, i32 1
  store i32 %3, i32* %5, align 8
  %6 = load %struct.timespec*, %struct.timespec** %2, align 8
  %7 = getelementptr inbounds %struct.timespec, %struct.timespec* %6, i32 0, i32 0
  store i64 0, i64* %7, align 8
  ret void
}

declare dso_local i32 @read_rtc_mmss(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
