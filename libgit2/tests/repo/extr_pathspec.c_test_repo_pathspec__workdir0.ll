; ModuleID = '/home/carl/AnghaBench/libgit2/tests/repo/extr_pathspec.c_test_repo_pathspec__workdir0.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/repo/extr_pathspec.c_test_repo_pathspec__workdir0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@str0 = common dso_local global i32 0, align 4
@g_repo = common dso_local global i32 0, align 4
@GIT_PATHSPEC_FIND_FAILURES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"garbage\00", align 1
@GIT_PATHSPEC_FAILURES_ONLY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_repo_pathspec__workdir0() #0 {
  %1 = alloca %struct.TYPE_3__, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = load i32, i32* @str0, align 4
  %5 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 1
  store i32 %4, i32* %5, align 4
  %6 = load i32, i32* @str0, align 4
  %7 = call i32 @ARRAY_SIZE(i32 %6)
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %1, i32 0, i32 0
  store i32 %7, i32* %8, align 4
  %9 = call i32 @git_pathspec_new(i32** %2, %struct.TYPE_3__* %1)
  %10 = call i32 @cl_git_pass(i32 %9)
  %11 = load i32, i32* @g_repo, align 4
  %12 = load i32*, i32** %2, align 8
  %13 = call i32 @git_pathspec_match_workdir(i32** %3, i32 %11, i32 0, i32* %12)
  %14 = call i32 @cl_git_pass(i32 %13)
  %15 = load i32*, i32** %3, align 8
  %16 = call i32 @git_pathspec_match_list_entrycount(i32* %15)
  %17 = call i32 @cl_assert_equal_sz(i32 10, i32 %16)
  %18 = load i32*, i32** %3, align 8
  %19 = call i32 @git_pathspec_match_list_failed_entrycount(i32* %18)
  %20 = call i32 @cl_assert_equal_sz(i32 0, i32 %19)
  %21 = load i32*, i32** %3, align 8
  %22 = call i32 @git_pathspec_match_list_free(i32* %21)
  %23 = load i32, i32* @g_repo, align 4
  %24 = load i32, i32* @GIT_PATHSPEC_FIND_FAILURES, align 4
  %25 = load i32*, i32** %2, align 8
  %26 = call i32 @git_pathspec_match_workdir(i32** %3, i32 %23, i32 %24, i32* %25)
  %27 = call i32 @cl_git_pass(i32 %26)
  %28 = load i32*, i32** %3, align 8
  %29 = call i32 @git_pathspec_match_list_entrycount(i32* %28)
  %30 = call i32 @cl_assert_equal_sz(i32 10, i32 %29)
  %31 = load i32*, i32** %3, align 8
  %32 = call i32 @git_pathspec_match_list_failed_entrycount(i32* %31)
  %33 = call i32 @cl_assert_equal_sz(i32 1, i32 %32)
  %34 = load i32*, i32** %3, align 8
  %35 = call i32 @git_pathspec_match_list_failed_entry(i32* %34, i32 0)
  %36 = call i32 @cl_assert_equal_s(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %35)
  %37 = load i32*, i32** %3, align 8
  %38 = call i32 @git_pathspec_match_list_free(i32* %37)
  %39 = load i32, i32* @g_repo, align 4
  %40 = load i32, i32* @GIT_PATHSPEC_FIND_FAILURES, align 4
  %41 = load i32, i32* @GIT_PATHSPEC_FAILURES_ONLY, align 4
  %42 = or i32 %40, %41
  %43 = load i32*, i32** %2, align 8
  %44 = call i32 @git_pathspec_match_workdir(i32** %3, i32 %39, i32 %42, i32* %43)
  %45 = call i32 @cl_git_pass(i32 %44)
  %46 = load i32*, i32** %3, align 8
  %47 = call i32 @git_pathspec_match_list_entrycount(i32* %46)
  %48 = call i32 @cl_assert_equal_sz(i32 0, i32 %47)
  %49 = load i32*, i32** %3, align 8
  %50 = call i32 @git_pathspec_match_list_failed_entrycount(i32* %49)
  %51 = call i32 @cl_assert_equal_sz(i32 1, i32 %50)
  %52 = load i32*, i32** %3, align 8
  %53 = call i32 @git_pathspec_match_list_free(i32* %52)
  %54 = load i32*, i32** %2, align 8
  %55 = call i32 @git_pathspec_free(i32* %54)
  ret void
}

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_pathspec_new(i32**, %struct.TYPE_3__*) #1

declare dso_local i32 @git_pathspec_match_workdir(i32**, i32, i32, i32*) #1

declare dso_local i32 @cl_assert_equal_sz(i32, i32) #1

declare dso_local i32 @git_pathspec_match_list_entrycount(i32*) #1

declare dso_local i32 @git_pathspec_match_list_failed_entrycount(i32*) #1

declare dso_local i32 @git_pathspec_match_list_free(i32*) #1

declare dso_local i32 @cl_assert_equal_s(i8*, i32) #1

declare dso_local i32 @git_pathspec_match_list_failed_entry(i32*, i32) #1

declare dso_local i32 @git_pathspec_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
