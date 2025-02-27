; ModuleID = '/home/carl/AnghaBench/libgit2/tests/object/raw/extr_type2string.c_test_object_raw_type2string__convert_type_to_string.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/object/raw/extr_type2string.c_test_object_raw_type2string__convert_type_to_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GIT_OBJECT_INVALID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@GIT_OBJECT_COMMIT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"commit\00", align 1
@GIT_OBJECT_TREE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"tree\00", align 1
@GIT_OBJECT_BLOB = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"blob\00", align 1
@GIT_OBJECT_TAG = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [4 x i8] c"tag\00", align 1
@GIT_OBJECT_OFS_DELTA = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [10 x i8] c"OFS_DELTA\00", align 1
@GIT_OBJECT_REF_DELTA = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [10 x i8] c"REF_DELTA\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_object_raw_type2string__convert_type_to_string() #0 {
  %1 = load i32, i32* @GIT_OBJECT_INVALID, align 4
  %2 = call i32 @git_object_type2string(i32 %1)
  %3 = call i32 @cl_assert_equal_s(i32 %2, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %4 = call i32 @git_object_type2string(i32 0)
  %5 = call i32 @cl_assert_equal_s(i32 %4, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %6 = load i32, i32* @GIT_OBJECT_COMMIT, align 4
  %7 = call i32 @git_object_type2string(i32 %6)
  %8 = call i32 @cl_assert_equal_s(i32 %7, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %9 = load i32, i32* @GIT_OBJECT_TREE, align 4
  %10 = call i32 @git_object_type2string(i32 %9)
  %11 = call i32 @cl_assert_equal_s(i32 %10, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %12 = load i32, i32* @GIT_OBJECT_BLOB, align 4
  %13 = call i32 @git_object_type2string(i32 %12)
  %14 = call i32 @cl_assert_equal_s(i32 %13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %15 = load i32, i32* @GIT_OBJECT_TAG, align 4
  %16 = call i32 @git_object_type2string(i32 %15)
  %17 = call i32 @cl_assert_equal_s(i32 %16, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %18 = call i32 @git_object_type2string(i32 5)
  %19 = call i32 @cl_assert_equal_s(i32 %18, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* @GIT_OBJECT_OFS_DELTA, align 4
  %21 = call i32 @git_object_type2string(i32 %20)
  %22 = call i32 @cl_assert_equal_s(i32 %21, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0))
  %23 = load i32, i32* @GIT_OBJECT_REF_DELTA, align 4
  %24 = call i32 @git_object_type2string(i32 %23)
  %25 = call i32 @cl_assert_equal_s(i32 %24, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0))
  %26 = call i32 @git_object_type2string(i32 -2)
  %27 = call i32 @cl_assert_equal_s(i32 %26, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %28 = call i32 @git_object_type2string(i32 8)
  %29 = call i32 @cl_assert_equal_s(i32 %28, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %30 = call i32 @git_object_type2string(i32 1234)
  %31 = call i32 @cl_assert_equal_s(i32 %30, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  ret void
}

declare dso_local i32 @cl_assert_equal_s(i32, i8*) #1

declare dso_local i32 @git_object_type2string(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
