; ModuleID = '/home/carl/AnghaBench/libgit2/tests/filter/extr_custom.c_test_filter_custom__erroneous_filter_fails.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/filter/extr_custom.c_test_filter_custom__erroneous_filter_fails.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GIT_BUF_INIT = common dso_local global i32 0, align 4
@workdir_data = common dso_local global i32 0, align 4
@g_repo = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"villain\00", align 1
@GIT_FILTER_TO_WORKTREE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_filter_custom__erroneous_filter_fails() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = load i32, i32* @GIT_BUF_INIT, align 4
  store i32 %4, i32* %2, align 4
  %5 = load i32, i32* @workdir_data, align 4
  %6 = load i32, i32* @workdir_data, align 4
  %7 = call i32 @strlen(i32 %6)
  %8 = call i32 @GIT_BUF_INIT_CONST(i32 %5, i32 %7)
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* @g_repo, align 4
  %10 = load i32, i32* @GIT_FILTER_TO_WORKTREE, align 4
  %11 = call i32 @git_filter_list_load(i32** %1, i32 %9, i32* null, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %10, i32 0)
  %12 = call i32 @cl_git_pass(i32 %11)
  %13 = load i32*, i32** %1, align 8
  %14 = call i32 @git_filter_list_apply_to_data(i32* %2, i32* %13, i32* %3)
  %15 = call i32 @cl_git_fail(i32 %14)
  %16 = load i32*, i32** %1, align 8
  %17 = call i32 @git_filter_list_free(i32* %16)
  %18 = call i32 @git_buf_dispose(i32* %2)
  ret void
}

declare dso_local i32 @GIT_BUF_INIT_CONST(i32, i32) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_filter_list_load(i32**, i32, i32*, i8*, i32, i32) #1

declare dso_local i32 @cl_git_fail(i32) #1

declare dso_local i32 @git_filter_list_apply_to_data(i32*, i32*, i32*) #1

declare dso_local i32 @git_filter_list_free(i32*) #1

declare dso_local i32 @git_buf_dispose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
