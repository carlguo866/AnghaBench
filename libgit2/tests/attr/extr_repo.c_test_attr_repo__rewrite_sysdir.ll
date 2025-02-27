; ModuleID = '/home/carl/AnghaBench/libgit2/tests/attr/extr_repo.c_test_attr_repo__rewrite_sysdir.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/attr/extr_repo.c_test_attr_repo__rewrite_sysdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@GIT_BUF_INIT = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@.str = private unnamed_addr constant [7 x i8] c"system\00", align 1
@GIT_SYSDIR_SYSTEM = common dso_local global i32 0, align 4
@g_repo = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"system/gitattributes\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"file foo=first\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"file\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"foo\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"first\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"file foo=second\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"second\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_attr_repo__rewrite_sysdir() #0 {
  %1 = alloca %struct.TYPE_5__, align 4
  %2 = alloca i8*, align 8
  %3 = bitcast %struct.TYPE_5__* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %3, i8* align 4 bitcast (%struct.TYPE_5__* @GIT_BUF_INIT to i8*), i64 4, i1 false)
  %4 = call i32 @p_mkdir(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 511)
  %5 = call i32 @cl_git_pass(i32 %4)
  %6 = call i32 (...) @clar_sandbox_path()
  %7 = call i32 @git_buf_joinpath(%struct.TYPE_5__* %1, i32 %6, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %8 = call i32 @cl_git_pass(i32 %7)
  %9 = load i32, i32* @GIT_SYSDIR_SYSTEM, align 4
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %1, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @git_sysdir_set(i32 %9, i32 %11)
  %13 = call i32 @cl_git_pass(i32 %12)
  %14 = call i32 (...) @cl_git_sandbox_reopen()
  store i32 %14, i32* @g_repo, align 4
  %15 = call i32 @cl_git_rewritefile(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %16 = load i32, i32* @g_repo, align 4
  %17 = call i32 @git_attr_get(i8** %2, i32 %16, i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %18 = call i32 @cl_git_pass(i32 %17)
  %19 = load i8*, i8** %2, align 8
  %20 = call i32 @cl_assert_equal_s(i8* %19, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  %21 = call i32 @cl_git_rewritefile(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0))
  %22 = load i32, i32* @g_repo, align 4
  %23 = call i32 @git_attr_get(i8** %2, i32 %22, i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %24 = call i32 @cl_git_pass(i32 %23)
  %25 = load i8*, i8** %2, align 8
  %26 = call i32 @cl_assert_equal_s(i8* %25, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0))
  %27 = call i32 @git_buf_dispose(%struct.TYPE_5__* %1)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @p_mkdir(i8*, i32) #2

declare dso_local i32 @git_buf_joinpath(%struct.TYPE_5__*, i32, i8*) #2

declare dso_local i32 @clar_sandbox_path(...) #2

declare dso_local i32 @git_sysdir_set(i32, i32) #2

declare dso_local i32 @cl_git_sandbox_reopen(...) #2

declare dso_local i32 @cl_git_rewritefile(i8*, i8*) #2

declare dso_local i32 @git_attr_get(i8**, i32, i32, i8*, i8*) #2

declare dso_local i32 @cl_assert_equal_s(i8*, i8*) #2

declare dso_local i32 @git_buf_dispose(%struct.TYPE_5__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
