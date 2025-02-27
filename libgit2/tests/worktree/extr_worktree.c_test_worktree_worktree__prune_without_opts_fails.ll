; ModuleID = '/home/carl/AnghaBench/libgit2/tests/worktree/extr_worktree.c_test_worktree_worktree__prune_without_opts_fails.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/worktree/extr_worktree.c_test_worktree_worktree__prune_without_opts_fails.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@fixture = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@.str = private unnamed_addr constant [18 x i8] c"testrepo-worktree\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_worktree_worktree__prune_without_opts_fails() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @fixture, i32 0, i32 0), align 4
  %4 = call i32 @git_worktree_lookup(i32** %1, i32 %3, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %5 = call i32 @cl_git_pass(i32 %4)
  %6 = load i32*, i32** %1, align 8
  %7 = call i32 @git_worktree_prune(i32* %6, i32* null)
  %8 = call i32 @cl_git_fail(i32 %7)
  %9 = load i32*, i32** %1, align 8
  %10 = call i32 @git_repository_open_from_worktree(i32** %2, i32* %9)
  %11 = call i32 @cl_git_pass(i32 %10)
  %12 = load i32*, i32** %1, align 8
  %13 = call i32 @git_worktree_free(i32* %12)
  %14 = load i32*, i32** %2, align 8
  %15 = call i32 @git_repository_free(i32* %14)
  ret void
}

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_worktree_lookup(i32**, i32, i8*) #1

declare dso_local i32 @cl_git_fail(i32) #1

declare dso_local i32 @git_worktree_prune(i32*, i32*) #1

declare dso_local i32 @git_repository_open_from_worktree(i32**, i32*) #1

declare dso_local i32 @git_worktree_free(i32*) #1

declare dso_local i32 @git_repository_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
