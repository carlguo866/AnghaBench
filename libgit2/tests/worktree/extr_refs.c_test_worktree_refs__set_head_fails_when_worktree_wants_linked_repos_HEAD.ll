; ModuleID = '/home/carl/AnghaBench/libgit2/tests/worktree/extr_refs.c_test_worktree_refs__set_head_fails_when_worktree_wants_linked_repos_HEAD.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/worktree/extr_refs.c_test_worktree_refs__set_head_fails_when_worktree_wants_linked_repos_HEAD.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@fixture = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_worktree_refs__set_head_fails_when_worktree_wants_linked_repos_HEAD() #0 {
  %1 = alloca i32*, align 8
  %2 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @fixture, i32 0, i32 1), align 4
  %3 = call i32 @git_repository_head(i32** %1, i32 %2)
  %4 = call i32 @cl_git_pass(i32 %3)
  %5 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @fixture, i32 0, i32 0), align 4
  %6 = load i32*, i32** %1, align 8
  %7 = call i32 @git_reference_name(i32* %6)
  %8 = call i32 @git_repository_set_head(i32 %5, i32 %7)
  %9 = call i32 @cl_git_fail(i32 %8)
  %10 = load i32*, i32** %1, align 8
  %11 = call i32 @git_reference_free(i32* %10)
  ret void
}

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_repository_head(i32**, i32) #1

declare dso_local i32 @cl_git_fail(i32) #1

declare dso_local i32 @git_repository_set_head(i32, i32) #1

declare dso_local i32 @git_reference_name(i32*) #1

declare dso_local i32 @git_reference_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
