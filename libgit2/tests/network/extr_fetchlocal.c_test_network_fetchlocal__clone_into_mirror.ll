; ModuleID = '/home/carl/AnghaBench/libgit2/tests/network/extr_fetchlocal.c_test_network_fetchlocal__clone_into_mirror.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/network/extr_fetchlocal.c_test_network_fetchlocal__clone_into_mirror.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }

@GIT_CLONE_OPTIONS_INIT = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@remote_mirror_cb = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"testrepo.git\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"./foo.git\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"HEAD\00", align 1
@GIT_REFERENCE_SYMBOLIC = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [18 x i8] c"refs/heads/master\00", align 1
@.str.4 = private unnamed_addr constant [25 x i8] c"refs/remotes/test/master\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_network_fetchlocal__clone_into_mirror() #0 {
  %1 = alloca %struct.TYPE_4__, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = bitcast %struct.TYPE_4__* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %4, i8* align 4 bitcast (%struct.TYPE_4__* @GIT_CLONE_OPTIONS_INIT to i8*), i64 8, i1 false)
  %5 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 0
  store i32 1, i32* %5, align 4
  %6 = load i32, i32* @remote_mirror_cb, align 4
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %1, i32 0, i32 1
  store i32 %6, i32* %7, align 4
  %8 = call i32 @cl_git_fixture_url(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %9 = call i32 @git_clone(i32** %2, i32 %8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), %struct.TYPE_4__* %1)
  %10 = call i32 @cl_git_pass(i32 %9)
  %11 = load i32*, i32** %2, align 8
  %12 = call i32 @git_reference_lookup(i32** %3, i32* %11, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %13 = call i32 @cl_git_pass(i32 %12)
  %14 = load i32, i32* @GIT_REFERENCE_SYMBOLIC, align 4
  %15 = load i32*, i32** %3, align 8
  %16 = call i32 @git_reference_type(i32* %15)
  %17 = call i32 @cl_assert_equal_i(i32 %14, i32 %16)
  %18 = load i32*, i32** %3, align 8
  %19 = call i32 @git_reference_symbolic_target(i32* %18)
  %20 = call i32 @cl_assert_equal_s(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32 %19)
  %21 = load i32*, i32** %3, align 8
  %22 = call i32 @git_reference_free(i32* %21)
  %23 = load i32*, i32** %2, align 8
  %24 = call i32 @git_reference_lookup(i32** %3, i32* %23, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0))
  %25 = call i32 @cl_git_pass(i32 %24)
  %26 = load i32*, i32** %3, align 8
  %27 = call i32 @git_reference_free(i32* %26)
  %28 = load i32*, i32** %2, align 8
  %29 = call i32 @git_repository_free(i32* %28)
  %30 = call i32 @cl_fixture_cleanup(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_clone(i32**, i32, i8*, %struct.TYPE_4__*) #2

declare dso_local i32 @cl_git_fixture_url(i8*) #2

declare dso_local i32 @git_reference_lookup(i32**, i32*, i8*) #2

declare dso_local i32 @cl_assert_equal_i(i32, i32) #2

declare dso_local i32 @git_reference_type(i32*) #2

declare dso_local i32 @cl_assert_equal_s(i8*, i32) #2

declare dso_local i32 @git_reference_symbolic_target(i32*) #2

declare dso_local i32 @git_reference_free(i32*) #2

declare dso_local i32 @git_repository_free(i32*) #2

declare dso_local i32 @cl_fixture_cleanup(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
