; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/timers/extr_posix_timers.c_main.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/timers/extr_posix_timers.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [67 x i8] c"Testing posix timers. False negative may happen on CPU execution \0A\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"based timers if other threads run on the CPU...\0A\00", align 1
@ITIMER_VIRTUAL = common dso_local global i32 0, align 4
@ITIMER_PROF = common dso_local global i32 0, align 4
@ITIMER_REAL = common dso_local global i32 0, align 4
@CLOCK_THREAD_CPUTIME_ID = common dso_local global i32 0, align 4
@CLOCK_PROCESS_CPUTIME_ID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %6 = call i32 @printf(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str, i64 0, i64 0))
  %7 = call i32 @printf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0))
  %8 = load i32, i32* @ITIMER_VIRTUAL, align 4
  %9 = call i64 @check_itimer(i32 %8)
  %10 = icmp slt i64 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = call i32 (...) @ksft_exit_fail()
  store i32 %12, i32* %3, align 4
  br label %39

13:                                               ; preds = %2
  %14 = load i32, i32* @ITIMER_PROF, align 4
  %15 = call i64 @check_itimer(i32 %14)
  %16 = icmp slt i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %13
  %18 = call i32 (...) @ksft_exit_fail()
  store i32 %18, i32* %3, align 4
  br label %39

19:                                               ; preds = %13
  %20 = load i32, i32* @ITIMER_REAL, align 4
  %21 = call i64 @check_itimer(i32 %20)
  %22 = icmp slt i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = call i32 (...) @ksft_exit_fail()
  store i32 %24, i32* %3, align 4
  br label %39

25:                                               ; preds = %19
  %26 = load i32, i32* @CLOCK_THREAD_CPUTIME_ID, align 4
  %27 = call i64 @check_timer_create(i32 %26)
  %28 = icmp slt i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %25
  %30 = call i32 (...) @ksft_exit_fail()
  store i32 %30, i32* %3, align 4
  br label %39

31:                                               ; preds = %25
  %32 = load i32, i32* @CLOCK_PROCESS_CPUTIME_ID, align 4
  %33 = call i64 @check_timer_create(i32 %32)
  %34 = icmp slt i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %31
  %36 = call i32 (...) @ksft_exit_fail()
  store i32 %36, i32* %3, align 4
  br label %39

37:                                               ; preds = %31
  %38 = call i32 (...) @ksft_exit_pass()
  store i32 %38, i32* %3, align 4
  br label %39

39:                                               ; preds = %37, %35, %29, %23, %17, %11
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

declare dso_local i32 @printf(i8*) #1

declare dso_local i64 @check_itimer(i32) #1

declare dso_local i32 @ksft_exit_fail(...) #1

declare dso_local i64 @check_timer_create(i32) #1

declare dso_local i32 @ksft_exit_pass(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
