; ModuleID = '/home/carl/AnghaBench/libgit2/tests/stash/extr_apply.c_test_stash_apply__conflict_index_with_default.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/stash/extr_apply.c_test_stash_apply__conflict_index_with_default.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [10 x i8] c"stash/who\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"nothing\0A\00", align 1
@repo_index = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [4 x i8] c"who\00", align 1
@repo = common dso_local global i32 0, align 4
@signature = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [13 x i8] c"Other commit\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"what\00", align 1
@GIT_STATUS_INDEX_MODIFIED = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [4 x i8] c"how\00", align 1
@GIT_STATUS_CURRENT = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [5 x i8] c"when\00", align 1
@GIT_STATUS_WT_NEW = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [4 x i8] c"why\00", align 1
@GIT_STATUS_INDEX_NEW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_stash_apply__conflict_index_with_default() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = call i32 @cl_git_rewritefile(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %5 = load i32, i32* @repo_index, align 4
  %6 = call i32 @git_index_add_bypath(i32 %5, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %7 = call i32 @cl_git_pass(i32 %6)
  %8 = load i32, i32* @repo_index, align 4
  %9 = call i32 @git_index_write(i32 %8)
  %10 = call i32 @cl_git_pass(i32 %9)
  %11 = load i32, i32* @repo, align 4
  %12 = load i32, i32* @signature, align 4
  %13 = call i32 @cl_repo_commit_from_index(i32* null, i32 %11, i32 %12, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0))
  %14 = load i32, i32* @repo, align 4
  %15 = call i32 @git_stash_apply(i32 %14, i32 0, i32* null)
  %16 = call i32 @cl_git_pass(i32 %15)
  %17 = load i32, i32* @repo_index, align 4
  %18 = call i32 @git_index_has_conflicts(i32 %17)
  %19 = call i32 @cl_assert_equal_i(i32 %18, i32 1)
  %20 = load i32, i32* @repo, align 4
  %21 = load i32, i32* @GIT_STATUS_INDEX_MODIFIED, align 4
  %22 = call i32 @assert_status(i32 %20, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 %21)
  %23 = load i32, i32* @repo, align 4
  %24 = load i32, i32* @GIT_STATUS_CURRENT, align 4
  %25 = call i32 @assert_status(i32 %23, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0), i32 %24)
  %26 = load i32, i32* @repo_index, align 4
  %27 = call i32 @git_index_conflict_get(i32** %1, i32** %2, i32** %3, i32 %26, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %28 = call i32 @cl_git_pass(i32 %27)
  %29 = load i32, i32* @repo, align 4
  %30 = load i32, i32* @GIT_STATUS_WT_NEW, align 4
  %31 = call i32 @assert_status(i32 %29, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i32 %30)
  %32 = load i32, i32* @repo, align 4
  %33 = load i32, i32* @GIT_STATUS_INDEX_NEW, align 4
  %34 = call i32 @assert_status(i32 %32, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i32 %33)
  ret void
}

declare dso_local i32 @cl_git_rewritefile(i8*, i8*) #1

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_index_add_bypath(i32, i8*) #1

declare dso_local i32 @git_index_write(i32) #1

declare dso_local i32 @cl_repo_commit_from_index(i32*, i32, i32, i32, i8*) #1

declare dso_local i32 @git_stash_apply(i32, i32, i32*) #1

declare dso_local i32 @cl_assert_equal_i(i32, i32) #1

declare dso_local i32 @git_index_has_conflicts(i32) #1

declare dso_local i32 @assert_status(i32, i8*, i32) #1

declare dso_local i32 @git_index_conflict_get(i32**, i32**, i32**, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
