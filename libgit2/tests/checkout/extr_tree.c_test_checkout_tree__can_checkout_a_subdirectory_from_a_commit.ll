; ModuleID = '/home/carl/AnghaBench/libgit2/tests/checkout/extr_tree.c_test_checkout_tree__can_checkout_a_subdirectory_from_a_commit.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/checkout/extr_tree.c_test_checkout_tree__can_checkout_a_subdirectory_from_a_commit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i8**, i32 }

@.str = private unnamed_addr constant [7 x i8] c"ab/de/\00", align 1
@__const.test_checkout_tree__can_checkout_a_subdirectory_from_a_commit.entries = private unnamed_addr constant [1 x i8*] [i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0)], align 8
@g_opts = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@g_object = common dso_local global i32 0, align 4
@g_repo = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"subtrees\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"./testrepo/ab/\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"./testrepo/ab/de/2.txt\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"./testrepo/ab/de/fgh/1.txt\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_checkout_tree__can_checkout_a_subdirectory_from_a_commit() #0 {
  %1 = alloca [1 x i8*], align 8
  %2 = bitcast [1 x i8*]* %1 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %2, i8* align 8 bitcast ([1 x i8*]* @__const.test_checkout_tree__can_checkout_a_subdirectory_from_a_commit.entries to i8*), i64 8, i1 false)
  %3 = getelementptr inbounds [1 x i8*], [1 x i8*]* %1, i64 0, i64 0
  store i8** %3, i8*** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @g_opts, i32 0, i32 0, i32 0), align 8
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @g_opts, i32 0, i32 0, i32 1), align 8
  %4 = load i32, i32* @g_repo, align 4
  %5 = call i32 @git_revparse_single(i32* @g_object, i32 %4, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  %6 = call i32 @cl_git_pass(i32 %5)
  %7 = call i32 @git_path_isdir(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %8 = call i32 @cl_assert_equal_i(i32 0, i32 %7)
  %9 = load i32, i32* @g_repo, align 4
  %10 = load i32, i32* @g_object, align 4
  %11 = call i32 @git_checkout_tree(i32 %9, i32 %10, %struct.TYPE_5__* @g_opts)
  %12 = call i32 @cl_git_pass(i32 %11)
  %13 = call i32 @git_path_isfile(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  %14 = call i32 @cl_assert_equal_i(i32 1, i32 %13)
  %15 = call i32 @git_path_isfile(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0))
  %16 = call i32 @cl_assert_equal_i(i32 1, i32 %15)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_revparse_single(i32*, i32, i8*) #2

declare dso_local i32 @cl_assert_equal_i(i32, i32) #2

declare dso_local i32 @git_path_isdir(i8*) #2

declare dso_local i32 @git_checkout_tree(i32, i32, %struct.TYPE_5__*) #2

declare dso_local i32 @git_path_isfile(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
