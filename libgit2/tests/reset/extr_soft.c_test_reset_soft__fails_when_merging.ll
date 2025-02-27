; ModuleID = '/home/carl/AnghaBench/libgit2/tests/reset/extr_soft.c_test_reset_soft__fails_when_merging.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/reset/extr_soft.c_test_reset_soft__fails_when_merging.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GIT_BUF_INIT = common dso_local global i32 0, align 4
@repo = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"MERGE_HEAD\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"beefbeefbeefbeefbeefbeefbeefbeefbeefbeef\0A\00", align 1
@target = common dso_local global i32 0, align 4
@KNOWN_COMMIT_IN_BARE_REPO = common dso_local global i32 0, align 4
@GIT_EUNMERGED = common dso_local global i32 0, align 4
@GIT_RESET_SOFT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_reset_soft__fails_when_merging() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @GIT_BUF_INIT, align 4
  store i32 %2, i32* %1, align 4
  %3 = load i32, i32* @repo, align 4
  %4 = call i32 @git_repository_detach_head(i32 %3)
  %5 = call i32 @cl_git_pass(i32 %4)
  %6 = load i32, i32* @repo, align 4
  %7 = call i32 @git_repository_path(i32 %6)
  %8 = call i32 @git_buf_joinpath(i32* %1, i32 %7, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %9 = call i32 @cl_git_pass(i32 %8)
  %10 = call i32 @git_buf_cstr(i32* %1)
  %11 = call i32 @cl_git_mkfile(i32 %10, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  %12 = load i32, i32* @repo, align 4
  %13 = load i32, i32* @KNOWN_COMMIT_IN_BARE_REPO, align 4
  %14 = call i32 @git_revparse_single(i32* @target, i32 %12, i32 %13)
  %15 = call i32 @cl_git_pass(i32 %14)
  %16 = load i32, i32* @GIT_EUNMERGED, align 4
  %17 = load i32, i32* @repo, align 4
  %18 = load i32, i32* @target, align 4
  %19 = load i32, i32* @GIT_RESET_SOFT, align 4
  %20 = call i32 @git_reset(i32 %17, i32 %18, i32 %19, i32* null)
  %21 = call i32 @cl_assert_equal_i(i32 %16, i32 %20)
  %22 = call i32 @git_buf_cstr(i32* %1)
  %23 = call i32 @p_unlink(i32 %22)
  %24 = call i32 @cl_git_pass(i32 %23)
  %25 = call i32 @git_buf_dispose(i32* %1)
  ret void
}

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_repository_detach_head(i32) #1

declare dso_local i32 @git_buf_joinpath(i32*, i32, i8*) #1

declare dso_local i32 @git_repository_path(i32) #1

declare dso_local i32 @cl_git_mkfile(i32, i8*) #1

declare dso_local i32 @git_buf_cstr(i32*) #1

declare dso_local i32 @git_revparse_single(i32*, i32, i32) #1

declare dso_local i32 @cl_assert_equal_i(i32, i32) #1

declare dso_local i32 @git_reset(i32, i32, i32, i32*) #1

declare dso_local i32 @p_unlink(i32) #1

declare dso_local i32 @git_buf_dispose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
