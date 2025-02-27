; ModuleID = '/home/carl/AnghaBench/libgit2/tests/refs/branches/extr_delete.c_test_refs_branches_delete__can_delete_a_branch_when_HEAD_is_unborn.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/refs/branches/extr_delete.c_test_refs_branches_delete__can_delete_a_branch_when_HEAD_is_unborn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@repo = common dso_local global i32 0, align 4
@NON_EXISTING_HEAD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"br2\00", align 1
@GIT_BRANCH_LOCAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_refs_branches_delete__can_delete_a_branch_when_HEAD_is_unborn() #0 {
  %1 = alloca i32*, align 8
  %2 = load i32, i32* @repo, align 4
  %3 = load i32, i32* @NON_EXISTING_HEAD, align 4
  %4 = call i32 @make_head_unborn(i32 %2, i32 %3)
  %5 = load i32, i32* @repo, align 4
  %6 = load i32, i32* @GIT_BRANCH_LOCAL, align 4
  %7 = call i32 @git_branch_lookup(i32** %1, i32 %5, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %6)
  %8 = call i32 @cl_git_pass(i32 %7)
  %9 = load i32*, i32** %1, align 8
  %10 = call i32 @git_branch_delete(i32* %9)
  %11 = call i32 @cl_git_pass(i32 %10)
  %12 = load i32*, i32** %1, align 8
  %13 = call i32 @git_reference_free(i32* %12)
  ret void
}

declare dso_local i32 @make_head_unborn(i32, i32) #1

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_branch_lookup(i32**, i32, i8*, i32) #1

declare dso_local i32 @git_branch_delete(i32*) #1

declare dso_local i32 @git_reference_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
