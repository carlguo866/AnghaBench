; ModuleID = '/home/carl/AnghaBench/libgit2/tests/attr/extr_repo.c_test_attr_repo__sysdir_with_session.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/attr/extr_repo.c_test_attr_repo__sysdir_with_session.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"foo\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"bar\00", align 1
@__const.test_attr_repo__sysdir_with_session.attrs = private unnamed_addr constant [2 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0)], align 16
@GIT_BUF_INIT = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"system\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"system/gitattributes\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"file foo=1 bar=2\00", align 1
@GIT_SYSDIR_SYSTEM = common dso_local global i32 0, align 4
@g_repo = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [5 x i8] c"file\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"2\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_attr_repo__sysdir_with_session() #0 {
  %1 = alloca [2 x i8*], align 16
  %2 = alloca [2 x i8*], align 16
  %3 = alloca %struct.TYPE_5__, align 4
  %4 = alloca i32, align 4
  %5 = bitcast [2 x i8*]* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %5, i8* align 16 bitcast ([2 x i8*]* @__const.test_attr_repo__sysdir_with_session.attrs to i8*), i64 16, i1 false)
  %6 = bitcast %struct.TYPE_5__* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %6, i8* align 4 bitcast (%struct.TYPE_5__* @GIT_BUF_INIT to i8*), i64 4, i1 false)
  %7 = call i32 @p_mkdir(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 511)
  %8 = call i32 @cl_git_pass(i32 %7)
  %9 = call i32 @cl_git_rewritefile(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  %10 = call i32 (...) @clar_sandbox_path()
  %11 = call i32 @git_buf_joinpath(%struct.TYPE_5__* %3, i32 %10, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %12 = call i32 @cl_git_pass(i32 %11)
  %13 = load i32, i32* @GIT_SYSDIR_SYSTEM, align 4
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @git_sysdir_set(i32 %13, i32 %15)
  %17 = call i32 @cl_git_pass(i32 %16)
  %18 = call i32 (...) @cl_git_sandbox_reopen()
  store i32 %18, i32* @g_repo, align 4
  %19 = load i32, i32* @g_repo, align 4
  %20 = call i32 @git_attr_session__init(i32* %4, i32 %19)
  %21 = call i32 @cl_git_pass(i32 %20)
  %22 = getelementptr inbounds [2 x i8*], [2 x i8*]* %1, i64 0, i64 0
  %23 = load i32, i32* @g_repo, align 4
  %24 = getelementptr inbounds [2 x i8*], [2 x i8*]* %2, i64 0, i64 0
  %25 = call i32 @ARRAY_SIZE(i8** %24)
  %26 = getelementptr inbounds [2 x i8*], [2 x i8*]* %2, i64 0, i64 0
  %27 = call i32 @git_attr_get_many_with_session(i8** %22, i32 %23, i32* %4, i32 0, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %25, i8** %26)
  %28 = call i32 @cl_git_pass(i32 %27)
  %29 = getelementptr inbounds [2 x i8*], [2 x i8*]* %1, i64 0, i64 0
  %30 = load i8*, i8** %29, align 16
  %31 = call i32 @cl_assert_equal_s(i8* %30, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.6, i64 0, i64 0))
  %32 = getelementptr inbounds [2 x i8*], [2 x i8*]* %1, i64 0, i64 1
  %33 = load i8*, i8** %32, align 8
  %34 = call i32 @cl_assert_equal_s(i8* %33, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i64 0, i64 0))
  %35 = call i32 @p_unlink(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  %36 = call i32 @cl_git_pass(i32 %35)
  %37 = call i32 @p_rmdir(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %38 = call i32 @cl_git_pass(i32 %37)
  %39 = call i32 @git_buf_dispose(%struct.TYPE_5__* %3)
  %40 = call i32 @git_attr_session__free(i32* %4)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @p_mkdir(i8*, i32) #2

declare dso_local i32 @cl_git_rewritefile(i8*, i8*) #2

declare dso_local i32 @git_buf_joinpath(%struct.TYPE_5__*, i32, i8*) #2

declare dso_local i32 @clar_sandbox_path(...) #2

declare dso_local i32 @git_sysdir_set(i32, i32) #2

declare dso_local i32 @cl_git_sandbox_reopen(...) #2

declare dso_local i32 @git_attr_session__init(i32*, i32) #2

declare dso_local i32 @git_attr_get_many_with_session(i8**, i32, i32*, i32, i8*, i32, i8**) #2

declare dso_local i32 @ARRAY_SIZE(i8**) #2

declare dso_local i32 @cl_assert_equal_s(i8*, i8*) #2

declare dso_local i32 @p_unlink(i8*) #2

declare dso_local i32 @p_rmdir(i8*) #2

declare dso_local i32 @git_buf_dispose(%struct.TYPE_5__*) #2

declare dso_local i32 @git_attr_session__free(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
