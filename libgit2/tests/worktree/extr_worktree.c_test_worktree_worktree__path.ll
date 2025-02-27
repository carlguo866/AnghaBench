; ModuleID = '/home/carl/AnghaBench/libgit2/tests/worktree/extr_worktree.c_test_worktree_worktree__path.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/worktree/extr_worktree.c_test_worktree_worktree__path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { i32 }

@GIT_BUF_INIT = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@.str = private unnamed_addr constant [18 x i8] c"testrepo-worktree\00", align 1
@fixture = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_worktree_worktree__path() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca %struct.TYPE_6__, align 4
  %3 = bitcast %struct.TYPE_6__* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %3, i8* align 4 bitcast (%struct.TYPE_6__* @GIT_BUF_INIT to i8*), i64 4, i1 false)
  %4 = call i32 (...) @clar_sandbox_path()
  %5 = call i32 @git_buf_joinpath(%struct.TYPE_6__* %2, i32 %4, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %6 = call i32 @cl_git_pass(i32 %5)
  %7 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @fixture, i32 0, i32 0), align 4
  %8 = call i32 @git_worktree_lookup(i32** %1, i32 %7, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %9 = call i32 @cl_git_pass(i32 %8)
  %10 = load i32*, i32** %1, align 8
  %11 = call i32 @git_worktree_path(i32* %10)
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @cl_assert_equal_s(i32 %11, i32 %13)
  %15 = call i32 @git_buf_dispose(%struct.TYPE_6__* %2)
  %16 = load i32*, i32** %1, align 8
  %17 = call i32 @git_worktree_free(i32* %16)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_buf_joinpath(%struct.TYPE_6__*, i32, i8*) #2

declare dso_local i32 @clar_sandbox_path(...) #2

declare dso_local i32 @git_worktree_lookup(i32**, i32, i8*) #2

declare dso_local i32 @cl_assert_equal_s(i32, i32) #2

declare dso_local i32 @git_worktree_path(i32*) #2

declare dso_local i32 @git_buf_dispose(%struct.TYPE_6__*) #2

declare dso_local i32 @git_worktree_free(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
