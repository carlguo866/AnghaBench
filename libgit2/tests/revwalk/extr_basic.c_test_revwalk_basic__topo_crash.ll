; ModuleID = '/home/carl/AnghaBench/libgit2/tests/revwalk/extr_basic.c_test_revwalk_basic__topo_crash.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/revwalk/extr_basic.c_test_revwalk_basic__topo_crash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [41 x i8] c"5b5b025afb0b4c913b4c338a42934a3863bf3644\00", align 1
@_walk = common dso_local global i32 0, align 4
@GIT_SORT_TOPOLOGICAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_revwalk_basic__topo_crash() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 @git_oid_fromstr(i32* %1, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %3 = call i32 @revwalk_basic_setup_walk(i32* null)
  %4 = load i32, i32* @_walk, align 4
  %5 = load i32, i32* @GIT_SORT_TOPOLOGICAL, align 4
  %6 = call i32 @git_revwalk_sorting(i32 %4, i32 %5)
  %7 = load i32, i32* @_walk, align 4
  %8 = call i32 @git_revwalk_push(i32 %7, i32* %1)
  %9 = call i32 @cl_git_pass(i32 %8)
  %10 = load i32, i32* @_walk, align 4
  %11 = call i32 @git_revwalk_hide(i32 %10, i32* %1)
  %12 = call i32 @cl_git_pass(i32 %11)
  %13 = load i32, i32* @_walk, align 4
  %14 = call i32 @git_revwalk_next(i32* %1, i32 %13)
  ret void
}

declare dso_local i32 @git_oid_fromstr(i32*, i8*) #1

declare dso_local i32 @revwalk_basic_setup_walk(i32*) #1

declare dso_local i32 @git_revwalk_sorting(i32, i32) #1

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_revwalk_push(i32, i32*) #1

declare dso_local i32 @git_revwalk_hide(i32, i32*) #1

declare dso_local i32 @git_revwalk_next(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
