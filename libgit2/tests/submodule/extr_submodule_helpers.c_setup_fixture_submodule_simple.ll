; ModuleID = '/home/carl/AnghaBench/libgit2/tests/submodule/extr_submodule_helpers.c_setup_fixture_submodule_simple.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/submodule/extr_submodule_helpers.c_setup_fixture_submodule_simple.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [17 x i8] c"submodule_simple\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"testrepo.git\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"submodule_simple/testrepo\00", align 1
@cleanup_fixture_submodules = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @setup_fixture_submodule_simple() #0 {
  %1 = alloca i32*, align 8
  %2 = call i32* @cl_git_sandbox_init(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  store i32* %2, i32** %1, align 8
  %3 = call i32 @cl_fixture_sandbox(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %4 = call i32 @p_mkdir(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 511)
  %5 = load i32, i32* @cleanup_fixture_submodules, align 4
  %6 = call i32 @cl_set_cleanup(i32 %5, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %7 = load i32*, i32** %1, align 8
  %8 = call i32 @git_repository_reinit_filesystem(i32* %7, i32 1)
  %9 = call i32 @cl_git_pass(i32 %8)
  %10 = load i32*, i32** %1, align 8
  ret i32* %10
}

declare dso_local i32* @cl_git_sandbox_init(i8*) #1

declare dso_local i32 @cl_fixture_sandbox(i8*) #1

declare dso_local i32 @p_mkdir(i8*, i32) #1

declare dso_local i32 @cl_set_cleanup(i32, i8*) #1

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_repository_reinit_filesystem(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
