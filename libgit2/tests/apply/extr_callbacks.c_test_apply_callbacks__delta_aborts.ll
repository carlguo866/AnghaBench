; ModuleID = '/home/carl/AnghaBench/libgit2/tests/apply/extr_callbacks.c_test_apply_callbacks__delta_aborts.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/apply/extr_callbacks.c_test_apply_callbacks__delta_aborts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@GIT_APPLY_OPTIONS_INIT = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@delta_abort_cb = common dso_local global i32 0, align 4
@DIFF_MODIFY_TWO_FILES = common dso_local global i32 0, align 4
@repo = common dso_local global i32 0, align 4
@GIT_APPLY_LOCATION_INDEX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_apply_callbacks__delta_aborts() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca %struct.TYPE_4__, align 4
  %3 = bitcast %struct.TYPE_4__* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %3, i8* align 4 bitcast (%struct.TYPE_4__* @GIT_APPLY_OPTIONS_INIT to i8*), i64 4, i1 false)
  %4 = load i32, i32* @delta_abort_cb, align 4
  %5 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 0
  store i32 %4, i32* %5, align 4
  %6 = load i32, i32* @DIFF_MODIFY_TWO_FILES, align 4
  %7 = load i32, i32* @DIFF_MODIFY_TWO_FILES, align 4
  %8 = call i32 @strlen(i32 %7)
  %9 = call i32 @git_diff_from_buffer(i32** %1, i32 %6, i32 %8)
  %10 = call i32 @cl_git_pass(i32 %9)
  %11 = load i32, i32* @repo, align 4
  %12 = load i32*, i32** %1, align 8
  %13 = load i32, i32* @GIT_APPLY_LOCATION_INDEX, align 4
  %14 = call i32 @git_apply(i32 %11, i32* %12, i32 %13, %struct.TYPE_4__* %2)
  %15 = call i32 @cl_git_fail_with(i32 -99, i32 %14)
  %16 = load i32, i32* @repo, align 4
  %17 = call i32 @validate_index_unchanged(i32 %16)
  %18 = load i32, i32* @repo, align 4
  %19 = call i32 @validate_workdir_unchanged(i32 %18)
  %20 = load i32*, i32** %1, align 8
  %21 = call i32 @git_diff_free(i32* %20)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_diff_from_buffer(i32**, i32, i32) #2

declare dso_local i32 @strlen(i32) #2

declare dso_local i32 @cl_git_fail_with(i32, i32) #2

declare dso_local i32 @git_apply(i32, i32*, i32, %struct.TYPE_4__*) #2

declare dso_local i32 @validate_index_unchanged(i32) #2

declare dso_local i32 @validate_workdir_unchanged(i32) #2

declare dso_local i32 @git_diff_free(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
