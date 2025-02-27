; ModuleID = '/home/carl/AnghaBench/freebsd/crypto/openssh/extr_misc.c_monotime_ts.c'
source_filename = "/home/carl/AnghaBench/freebsd/crypto/openssh/extr_misc.c_monotime_ts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timespec = type { i64, i32 }
%struct.timeval = type { i64, i32 }

@CLOCK_BOOTTIME = common dso_local global i32 0, align 4
@CLOCK_MONOTONIC = common dso_local global i32 0, align 4
@CLOCK_REALTIME = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @monotime_ts(%struct.timespec* %0) #0 {
  %2 = alloca %struct.timespec*, align 8
  %3 = alloca %struct.timeval, align 8
  store %struct.timespec* %0, %struct.timespec** %2, align 8
  %4 = call i32 @gettimeofday(%struct.timeval* %3, i32* null)
  %5 = getelementptr inbounds %struct.timeval, %struct.timeval* %3, i32 0, i32 1
  %6 = load i32, i32* %5, align 8
  %7 = load %struct.timespec*, %struct.timespec** %2, align 8
  %8 = getelementptr inbounds %struct.timespec, %struct.timespec* %7, i32 0, i32 1
  store i32 %6, i32* %8, align 8
  %9 = getelementptr inbounds %struct.timeval, %struct.timeval* %3, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = mul nsw i64 %10, 1000
  %12 = load %struct.timespec*, %struct.timespec** %2, align 8
  %13 = getelementptr inbounds %struct.timespec, %struct.timespec* %12, i32 0, i32 0
  store i64 %11, i64* %13, align 8
  ret void
}

declare dso_local i32 @gettimeofday(%struct.timeval*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
