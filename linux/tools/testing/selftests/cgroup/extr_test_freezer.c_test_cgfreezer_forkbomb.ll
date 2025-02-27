; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/cgroup/extr_test_freezer.c_test_cgfreezer_forkbomb.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/cgroup/extr_test_freezer.c_test_cgfreezer_forkbomb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@KSFT_FAIL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"cg_forkbomb_test\00", align 1
@forkbomb_fn = common dso_local global i32 0, align 4
@KSFT_PASS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @test_cgfreezer_forkbomb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_cgfreezer_forkbomb(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i32, i32* @KSFT_FAIL, align 4
  store i32 %5, i32* %3, align 4
  store i8* null, i8** %4, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = call i8* @cg_name(i8* %6, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  store i8* %7, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = icmp ne i8* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %37

11:                                               ; preds = %1
  %12 = load i8*, i8** %4, align 8
  %13 = call i64 @cg_create(i8* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %11
  br label %37

16:                                               ; preds = %11
  %17 = load i8*, i8** %4, align 8
  %18 = load i32, i32* @forkbomb_fn, align 4
  %19 = call i32 @cg_run_nowait(i8* %17, i32 %18, i32* null)
  %20 = call i32 @usleep(i32 100000)
  %21 = load i8*, i8** %4, align 8
  %22 = call i64 @cg_freeze_wait(i8* %21, i32 1)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %16
  br label %37

25:                                               ; preds = %16
  %26 = load i8*, i8** %4, align 8
  %27 = call i64 @cg_killall(i8* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  br label %37

30:                                               ; preds = %25
  %31 = load i8*, i8** %4, align 8
  %32 = call i64 @cg_wait_for_proc_count(i8* %31, i32 0)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %30
  br label %37

35:                                               ; preds = %30
  %36 = load i32, i32* @KSFT_PASS, align 4
  store i32 %36, i32* %3, align 4
  br label %37

37:                                               ; preds = %35, %34, %29, %24, %15, %10
  %38 = load i8*, i8** %4, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %40, label %43

40:                                               ; preds = %37
  %41 = load i8*, i8** %4, align 8
  %42 = call i32 @cg_destroy(i8* %41)
  br label %43

43:                                               ; preds = %40, %37
  %44 = load i8*, i8** %4, align 8
  %45 = call i32 @free(i8* %44)
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i8* @cg_name(i8*, i8*) #1

declare dso_local i64 @cg_create(i8*) #1

declare dso_local i32 @cg_run_nowait(i8*, i32, i32*) #1

declare dso_local i32 @usleep(i32) #1

declare dso_local i64 @cg_freeze_wait(i8*, i32) #1

declare dso_local i64 @cg_killall(i8*) #1

declare dso_local i64 @cg_wait_for_proc_count(i8*, i32) #1

declare dso_local i32 @cg_destroy(i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
