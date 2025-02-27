; ModuleID = '/home/carl/AnghaBench/libgit2/tests/repo/extr_hashfile.c_test_repo_hashfile__simple.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/repo/extr_hashfile.c_test_repo_hashfile__simple.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8* }

@GIT_BUF_INIT = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@.str = private unnamed_addr constant [20 x i8] c"status/current_file\00", align 1
@GIT_OBJECT_BLOB = common dso_local global i32 0, align 4
@_repo = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"current_file\00", align 1
@GIT_OBJECT_ANY = common dso_local global i32 0, align 4
@GIT_OBJECT_OFS_DELTA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_repo_hashfile__simple() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_5__, align 8
  %4 = bitcast %struct.TYPE_5__* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %4, i8* align 8 bitcast (%struct.TYPE_5__* @GIT_BUF_INIT to i8*), i64 8, i1 false)
  %5 = load i32, i32* @GIT_OBJECT_BLOB, align 4
  %6 = call i32 @git_odb_hashfile(i32* %1, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %5)
  %7 = call i32 @cl_git_pass(i32 %6)
  %8 = load i32, i32* @_repo, align 4
  %9 = load i32, i32* @GIT_OBJECT_BLOB, align 4
  %10 = call i32 @git_repository_hashfile(i32* %2, i32 %8, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %9, i32* null)
  %11 = call i32 @cl_git_pass(i32 %10)
  %12 = call i32 @cl_assert_equal_oid(i32* %1, i32* %2)
  %13 = load i32, i32* @_repo, align 4
  %14 = call i32 @git_repository_workdir(i32 %13)
  %15 = call i32 @git_buf_joinpath(%struct.TYPE_5__* %3, i32 %14, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %16 = call i32 @cl_git_pass(i32 %15)
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  %19 = load i32, i32* @GIT_OBJECT_BLOB, align 4
  %20 = call i32 @git_odb_hashfile(i32* %1, i8* %18, i32 %19)
  %21 = call i32 @cl_git_pass(i32 %20)
  %22 = load i32, i32* @_repo, align 4
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 0
  %24 = load i8*, i8** %23, align 8
  %25 = load i32, i32* @GIT_OBJECT_BLOB, align 4
  %26 = call i32 @git_repository_hashfile(i32* %2, i32 %22, i8* %24, i32 %25, i32* null)
  %27 = call i32 @cl_git_pass(i32 %26)
  %28 = call i32 @cl_assert_equal_oid(i32* %1, i32* %2)
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 0
  %30 = load i8*, i8** %29, align 8
  %31 = load i32, i32* @GIT_OBJECT_ANY, align 4
  %32 = call i32 @git_odb_hashfile(i32* %1, i8* %30, i32 %31)
  %33 = call i32 @cl_git_fail(i32 %32)
  %34 = load i32, i32* @_repo, align 4
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  %37 = load i32, i32* @GIT_OBJECT_OFS_DELTA, align 4
  %38 = call i32 @git_repository_hashfile(i32* %2, i32 %34, i8* %36, i32 %37, i32* null)
  %39 = call i32 @cl_git_fail(i32 %38)
  %40 = call i32 @git_buf_dispose(%struct.TYPE_5__* %3)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_odb_hashfile(i32*, i8*, i32) #2

declare dso_local i32 @git_repository_hashfile(i32*, i32, i8*, i32, i32*) #2

declare dso_local i32 @cl_assert_equal_oid(i32*, i32*) #2

declare dso_local i32 @git_buf_joinpath(%struct.TYPE_5__*, i32, i8*) #2

declare dso_local i32 @git_repository_workdir(i32) #2

declare dso_local i32 @cl_git_fail(i32) #2

declare dso_local i32 @git_buf_dispose(%struct.TYPE_5__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
