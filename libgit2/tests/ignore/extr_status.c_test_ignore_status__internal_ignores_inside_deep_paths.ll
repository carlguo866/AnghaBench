; ModuleID = '/home/carl/AnghaBench/libgit2/tests/ignore/extr_status.c_test_ignore_status__internal_ignores_inside_deep_paths.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/ignore/extr_status.c_test_ignore_status__internal_ignores_inside_deep_paths.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [35 x i8] c"Debug\0Athis/is/deep\0Apatterned*/dir\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"empty_standard_repo\00", align 1
@g_repo = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"Debug\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"and/Debug\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"really/Debug/this/file\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"Debug/what/I/say\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"and/NoDebug\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"NoDebug/this\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"please/NoDebug/this\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"this/is/deep\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"and/this/is/deep\00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c"this/is/deep/too\00", align 1
@.str.12 = private unnamed_addr constant [29 x i8] c"but/this/is/deep/and/ignored\00", align 1
@.str.13 = private unnamed_addr constant [17 x i8] c"this/is/not/deep\00", align 1
@.str.14 = private unnamed_addr constant [20 x i8] c"is/this/not/as/deep\00", align 1
@.str.15 = private unnamed_addr constant [16 x i8] c"this/is/deepish\00", align 1
@.str.16 = private unnamed_addr constant [14 x i8] c"xthis/is/deep\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_ignore_status__internal_ignores_inside_deep_paths() #0 {
  %1 = alloca i8*, align 8
  store i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i8** %1, align 8
  %2 = call i32 @cl_git_sandbox_init(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  store i32 %2, i32* @g_repo, align 4
  %3 = load i32, i32* @g_repo, align 4
  %4 = load i8*, i8** %1, align 8
  %5 = call i32 @git_ignore_add_rule(i32 %3, i8* %4)
  %6 = call i32 @cl_git_pass(i32 %5)
  %7 = call i32 @assert_is_ignored(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %8 = call i32 @assert_is_ignored(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  %9 = call i32 @assert_is_ignored(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  %10 = call i32 @assert_is_ignored(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0))
  %11 = call i32 @refute_is_ignored(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0))
  %12 = call i32 @refute_is_ignored(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0))
  %13 = call i32 @refute_is_ignored(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0))
  %14 = call i32 @assert_is_ignored(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i64 0, i64 0))
  %15 = call i32 @refute_is_ignored(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i64 0, i64 0))
  %16 = call i32 @assert_is_ignored(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i64 0, i64 0))
  %17 = call i32 @refute_is_ignored(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.12, i64 0, i64 0))
  %18 = call i32 @refute_is_ignored(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.13, i64 0, i64 0))
  %19 = call i32 @refute_is_ignored(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.14, i64 0, i64 0))
  %20 = call i32 @refute_is_ignored(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.15, i64 0, i64 0))
  %21 = call i32 @refute_is_ignored(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.16, i64 0, i64 0))
  ret void
}

declare dso_local i32 @cl_git_sandbox_init(i8*) #1

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_ignore_add_rule(i32, i8*) #1

declare dso_local i32 @assert_is_ignored(i8*) #1

declare dso_local i32 @refute_is_ignored(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
