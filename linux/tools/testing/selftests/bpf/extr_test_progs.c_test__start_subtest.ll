; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/extr_test_progs.c_test__start_subtest.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/extr_test_progs.c_test__start_subtest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.prog_test_def*, i32, i32 }
%struct.prog_test_def = type { i8*, i32, i32, i32 }

@env = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@.str = private unnamed_addr constant [43 x i8] c"Subtest #%d didn't provide sub-test name!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @test__start_subtest(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.prog_test_def*, align 8
  store i8* %0, i8** %3, align 8
  %5 = load %struct.prog_test_def*, %struct.prog_test_def** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @env, i32 0, i32 0), align 8
  store %struct.prog_test_def* %5, %struct.prog_test_def** %4, align 8
  %6 = load %struct.prog_test_def*, %struct.prog_test_def** %4, align 8
  %7 = getelementptr inbounds %struct.prog_test_def, %struct.prog_test_def* %6, i32 0, i32 0
  %8 = load i8*, i8** %7, align 8
  %9 = icmp ne i8* %8, null
  br i1 %9, label %10, label %14

10:                                               ; preds = %1
  %11 = call i32 (...) @test__end_subtest()
  %12 = load %struct.prog_test_def*, %struct.prog_test_def** %4, align 8
  %13 = getelementptr inbounds %struct.prog_test_def, %struct.prog_test_def* %12, i32 0, i32 0
  store i8* null, i8** %13, align 8
  br label %14

14:                                               ; preds = %10, %1
  %15 = load %struct.prog_test_def*, %struct.prog_test_def** %4, align 8
  %16 = getelementptr inbounds %struct.prog_test_def, %struct.prog_test_def* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* %16, align 8
  %19 = load i8*, i8** %3, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %26

21:                                               ; preds = %14
  %22 = load i8*, i8** %3, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 0
  %24 = load i8, i8* %23, align 1
  %25 = icmp ne i8 %24, 0
  br i1 %25, label %32, label %26

26:                                               ; preds = %21, %14
  %27 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @env, i32 0, i32 2), align 4
  %28 = load %struct.prog_test_def*, %struct.prog_test_def** %4, align 8
  %29 = getelementptr inbounds %struct.prog_test_def, %struct.prog_test_def* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @fprintf(i32 %27, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %30)
  store i32 0, i32* %2, align 4
  br label %49

32:                                               ; preds = %21
  %33 = load %struct.prog_test_def*, %struct.prog_test_def** %4, align 8
  %34 = getelementptr inbounds %struct.prog_test_def, %struct.prog_test_def* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = load i8*, i8** %3, align 8
  %37 = call i32 @should_run(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @env, i32 0, i32 1), i32 %35, i8* %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %32
  store i32 0, i32* %2, align 4
  br label %49

40:                                               ; preds = %32
  %41 = load i8*, i8** %3, align 8
  %42 = load %struct.prog_test_def*, %struct.prog_test_def** %4, align 8
  %43 = getelementptr inbounds %struct.prog_test_def, %struct.prog_test_def* %42, i32 0, i32 0
  store i8* %41, i8** %43, align 8
  %44 = load %struct.prog_test_def*, %struct.prog_test_def** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @env, i32 0, i32 0), align 8
  %45 = getelementptr inbounds %struct.prog_test_def, %struct.prog_test_def* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.prog_test_def*, %struct.prog_test_def** getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @env, i32 0, i32 0), align 8
  %48 = getelementptr inbounds %struct.prog_test_def, %struct.prog_test_def* %47, i32 0, i32 3
  store i32 %46, i32* %48, align 8
  store i32 1, i32* %2, align 4
  br label %49

49:                                               ; preds = %40, %39, %26
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

declare dso_local i32 @test__end_subtest(...) #1

declare dso_local i32 @fprintf(i32, i8*, i32) #1

declare dso_local i32 @should_run(i32*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
