; ModuleID = '/home/carl/AnghaBench/libgit2/tests/submodule/extr_nosubs.c_test_submodule_nosubs__lookup.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/submodule/extr_nosubs.c_test_submodule_nosubs__lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"status\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"status/subrepo\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"status/subrepo/.git\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"gitdir: ../.git\00", align 1
@GIT_ENOTFOUND = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [7 x i8] c"subdir\00", align 1
@GIT_EEXISTS = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [8 x i8] c"subrepo\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_submodule_nosubs__lookup() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = call i32* @cl_git_sandbox_init(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i32* %3, i32** %1, align 8
  store i32* null, i32** %2, align 8
  %4 = call i32 @p_mkdir(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 511)
  %5 = call i32 @cl_git_mkfile(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0))
  %6 = load i32, i32* @GIT_ENOTFOUND, align 4
  %7 = load i32*, i32** %1, align 8
  %8 = call i32 @git_submodule_lookup(i32** %2, i32* %7, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %9 = call i32 @cl_assert_equal_i(i32 %6, i32 %8)
  %10 = load i32, i32* @GIT_EEXISTS, align 4
  %11 = load i32*, i32** %1, align 8
  %12 = call i32 @git_submodule_lookup(i32** %2, i32* %11, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  %13 = call i32 @cl_assert_equal_i(i32 %10, i32 %12)
  %14 = load i32, i32* @GIT_ENOTFOUND, align 4
  %15 = load i32*, i32** %1, align 8
  %16 = call i32 @git_submodule_lookup(i32** %2, i32* %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0))
  %17 = call i32 @cl_assert_equal_i(i32 %14, i32 %16)
  %18 = load i32, i32* @GIT_EEXISTS, align 4
  %19 = load i32*, i32** %1, align 8
  %20 = call i32 @git_submodule_lookup(i32** %2, i32* %19, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i64 0, i64 0))
  %21 = call i32 @cl_assert_equal_i(i32 %18, i32 %20)
  ret void
}

declare dso_local i32* @cl_git_sandbox_init(i8*) #1

declare dso_local i32 @p_mkdir(i8*, i32) #1

declare dso_local i32 @cl_git_mkfile(i8*, i8*) #1

declare dso_local i32 @cl_assert_equal_i(i32, i32) #1

declare dso_local i32 @git_submodule_lookup(i32**, i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
