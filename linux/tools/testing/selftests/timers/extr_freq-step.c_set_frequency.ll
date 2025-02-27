; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/timers/extr_freq-step.c_set_frequency.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/timers/extr_freq-step.c_set_frequency.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timex = type { i32, i32, i32 }

@user_hz = common dso_local global i32 0, align 4
@ADJ_TICK = common dso_local global i32 0, align 4
@ADJ_FREQUENCY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"[FAIL] adjtimex\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (double)* @set_frequency to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_frequency(double %0) #0 {
  %2 = alloca double, align 8
  %3 = alloca %struct.timex, align 4
  %4 = alloca i32, align 4
  store double %0, double* %2, align 8
  %5 = load double, double* %2, align 8
  %6 = fmul double 1.000000e+06, %5
  %7 = load i32, i32* @user_hz, align 4
  %8 = sitofp i32 %7 to double
  %9 = fdiv double %6, %8
  %10 = fptosi double %9 to i32
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* @ADJ_TICK, align 4
  %12 = load i32, i32* @ADJ_FREQUENCY, align 4
  %13 = or i32 %11, %12
  %14 = getelementptr inbounds %struct.timex, %struct.timex* %3, i32 0, i32 0
  store i32 %13, i32* %14, align 4
  %15 = load i32, i32* @user_hz, align 4
  %16 = sdiv i32 1000000, %15
  %17 = load i32, i32* %4, align 4
  %18 = add nsw i32 %16, %17
  %19 = getelementptr inbounds %struct.timex, %struct.timex* %3, i32 0, i32 1
  store i32 %18, i32* %19, align 4
  %20 = load double, double* %2, align 8
  %21 = fmul double 1.000000e+06, %20
  %22 = load i32, i32* @user_hz, align 4
  %23 = load i32, i32* %4, align 4
  %24 = mul nsw i32 %22, %23
  %25 = sitofp i32 %24 to double
  %26 = fsub double %21, %25
  %27 = fmul double %26, 6.553600e+04
  %28 = fptosi double %27 to i32
  %29 = getelementptr inbounds %struct.timex, %struct.timex* %3, i32 0, i32 2
  store i32 %28, i32* %29, align 4
  %30 = call i64 @adjtimex(%struct.timex* %3)
  %31 = icmp slt i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %1
  %33 = call i32 @perror(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %34 = call i32 (...) @ksft_exit_fail()
  br label %35

35:                                               ; preds = %32, %1
  ret void
}

declare dso_local i64 @adjtimex(%struct.timex*) #1

declare dso_local i32 @perror(i8*) #1

declare dso_local i32 @ksft_exit_fail(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
