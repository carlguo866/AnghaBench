; ModuleID = '/home/carl/AnghaBench/libgit2/tests/stash/extr_apply.c_test_stash_apply__uses_reflog_like_indices_2.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/stash/extr_apply.c_test_stash_apply__uses_reflog_like_indices_2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [16 x i8] c"stash/untracked\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"untracked\0A\00", align 1
@repo = common dso_local global i32 0, align 4
@signature = common dso_local global i32 0, align 4
@GIT_STASH_INCLUDE_UNTRACKED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [10 x i8] c"untracked\00", align 1
@GIT_ENOTFOUND = common dso_local global i32 0, align 4
@repo_index = common dso_local global i32 0, align 4
@GIT_STATUS_WT_NEW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_stash_apply__uses_reflog_like_indices_2() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 @cl_git_mkfile(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %3 = load i32, i32* @repo, align 4
  %4 = load i32, i32* @signature, align 4
  %5 = load i32, i32* @GIT_STASH_INCLUDE_UNTRACKED, align 4
  %6 = call i32 @git_stash_save(i32* %1, i32 %3, i32 %4, i32* null, i32 %5)
  %7 = call i32 @cl_git_pass(i32 %6)
  %8 = load i32, i32* @repo, align 4
  %9 = load i32, i32* @GIT_ENOTFOUND, align 4
  %10 = call i32 @assert_status(i32 %8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %9)
  %11 = load i32, i32* @repo, align 4
  %12 = call i32 @git_stash_apply(i32 %11, i32 0, i32* null)
  %13 = call i32 @cl_git_pass(i32 %12)
  %14 = load i32, i32* @repo_index, align 4
  %15 = call i32 @git_index_has_conflicts(i32 %14)
  %16 = call i32 @cl_assert_equal_i(i32 %15, i32 0)
  %17 = load i32, i32* @repo, align 4
  %18 = load i32, i32* @GIT_STATUS_WT_NEW, align 4
  %19 = call i32 @assert_status(i32 %17, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i32 %18)
  ret void
}

declare dso_local i32 @cl_git_mkfile(i8*, i8*) #1

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_stash_save(i32*, i32, i32, i32*, i32) #1

declare dso_local i32 @assert_status(i32, i8*, i32) #1

declare dso_local i32 @git_stash_apply(i32, i32, i32*) #1

declare dso_local i32 @cl_assert_equal_i(i32, i32) #1

declare dso_local i32 @git_index_has_conflicts(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
