; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/libucl/tests/extr_test_speed.c_get_ticks.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/libucl/tests/extr_test_speed.c_get_ticks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timespec = type { i32, i64 }

@CLOCK_MONOTONIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (double ()* @get_ticks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal double @get_ticks() #0 {
  %1 = alloca double, align 8
  %2 = alloca %struct.timespec, align 8
  %3 = load i32, i32* @CLOCK_MONOTONIC, align 4
  %4 = call i32 @clock_gettime(i32 %3, %struct.timespec* %2)
  %5 = getelementptr inbounds %struct.timespec, %struct.timespec* %2, i32 0, i32 1
  %6 = load i64, i64* %5, align 8
  %7 = sitofp i64 %6 to double
  %8 = getelementptr inbounds %struct.timespec, %struct.timespec* %2, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = sitofp i32 %9 to double
  %11 = fdiv double %10, 1.000000e+09
  %12 = fadd double %7, %11
  store double %12, double* %1, align 8
  %13 = load double, double* %1, align 8
  ret double %13
}

declare dso_local i32 @clock_gettime(i32, %struct.timespec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
