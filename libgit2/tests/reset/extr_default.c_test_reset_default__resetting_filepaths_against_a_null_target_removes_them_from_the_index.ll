; ModuleID = '/home/carl/AnghaBench/libgit2/tests/reset/extr_default.c_test_reset_default__resetting_filepaths_against_a_null_target_removes_them_from_the_index.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/reset/extr_default.c_test_reset_default__resetting_filepaths_against_a_null_target_removes_them_from_the_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8**, i32 }

@.str = private unnamed_addr constant [15 x i8] c"staged_changes\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"staged_new_file\00", align 1
@__const.test_reset_default__resetting_filepaths_against_a_null_target_removes_them_from_the_index.paths = private unnamed_addr constant [2 x i8*] [i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i32 0, i32 0)], align 16
@.str.2 = private unnamed_addr constant [7 x i8] c"status\00", align 1
@_pathspecs = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@_repo = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_reset_default__resetting_filepaths_against_a_null_target_removes_them_from_the_index() #0 {
  %1 = alloca [2 x i8*], align 16
  %2 = bitcast [2 x i8*]* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %2, i8* align 16 bitcast ([2 x i8*]* @__const.test_reset_default__resetting_filepaths_against_a_null_target_removes_them_from_the_index.paths to i8*), i64 16, i1 false)
  %3 = call i32 @initialize(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %4 = getelementptr inbounds [2 x i8*], [2 x i8*]* %1, i64 0, i64 0
  store i8** %4, i8*** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_pathspecs, i32 0, i32 0), align 8
  store i32 2, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @_pathspecs, i32 0, i32 1), align 8
  %5 = call i32 @assert_content_in_index(%struct.TYPE_4__* @_pathspecs, i32 1, i32* null)
  %6 = load i32, i32* @_repo, align 4
  %7 = call i32 @git_reset_default(i32 %6, i32* null, %struct.TYPE_4__* @_pathspecs)
  %8 = call i32 @cl_git_pass(i32 %7)
  %9 = call i32 @assert_content_in_index(%struct.TYPE_4__* @_pathspecs, i32 0, i32* null)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @initialize(i8*) #2

declare dso_local i32 @assert_content_in_index(%struct.TYPE_4__*, i32, i32*) #2

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_reset_default(i32, i32*, %struct.TYPE_4__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
