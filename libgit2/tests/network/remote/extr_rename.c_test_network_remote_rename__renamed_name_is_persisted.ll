; ModuleID = '/home/carl/AnghaBench/libgit2/tests/network/remote/extr_rename.c_test_network_remote_rename__renamed_name_is_persisted.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/network/remote/extr_rename.c_test_network_remote_rename__renamed_name_is_persisted.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }

@_repo = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"just/renamed\00", align 1
@_remote_name = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"testrepo.git\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_network_remote_rename__renamed_name_is_persisted() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_4__, align 4
  %4 = bitcast %struct.TYPE_4__* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %4, i8 0, i64 8, i1 false)
  %5 = load i32, i32* @_repo, align 4
  %6 = call i32 @git_remote_lookup(i32** %1, i32 %5, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %7 = call i32 @cl_git_fail(i32 %6)
  %8 = load i32, i32* @_repo, align 4
  %9 = load i32, i32* @_remote_name, align 4
  %10 = call i32 @git_remote_rename(%struct.TYPE_4__* %3, i32 %8, i32 %9, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %11 = call i32 @cl_git_pass(i32 %10)
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %3, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @cl_assert_equal_i(i32 0, i32 %13)
  %15 = call i32 @git_strarray_free(%struct.TYPE_4__* %3)
  %16 = call i32 @git_repository_open(i32** %2, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %17 = call i32 @cl_git_pass(i32 %16)
  %18 = load i32, i32* @_repo, align 4
  %19 = call i32 @git_remote_lookup(i32** %1, i32 %18, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %20 = call i32 @cl_git_pass(i32 %19)
  %21 = load i32*, i32** %1, align 8
  %22 = call i32 @git_remote_free(i32* %21)
  %23 = load i32*, i32** %2, align 8
  %24 = call i32 @git_repository_free(i32* %23)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @cl_git_fail(i32) #2

declare dso_local i32 @git_remote_lookup(i32**, i32, i8*) #2

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_remote_rename(%struct.TYPE_4__*, i32, i32, i8*) #2

declare dso_local i32 @cl_assert_equal_i(i32, i32) #2

declare dso_local i32 @git_strarray_free(%struct.TYPE_4__*) #2

declare dso_local i32 @git_repository_open(i32**, i8*) #2

declare dso_local i32 @git_remote_free(i32*) #2

declare dso_local i32 @git_repository_free(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
