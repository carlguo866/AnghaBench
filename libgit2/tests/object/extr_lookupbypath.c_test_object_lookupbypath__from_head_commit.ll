; ModuleID = '/home/carl/AnghaBench/libgit2/tests/object/extr_lookupbypath.c_test_object_lookupbypath__from_head_commit.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/object/extr_lookupbypath.c_test_object_lookupbypath__from_head_commit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@g_actualobject = common dso_local global i32 0, align 4
@g_head_commit = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [24 x i8] c"subdir/subdir_test2.txt\00", align 1
@GIT_OBJECT_BLOB = common dso_local global i32 0, align 4
@g_expectedobject = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_object_lookupbypath__from_head_commit() #0 {
  %1 = load i64, i64* @g_head_commit, align 8
  %2 = inttoptr i64 %1 to i32*
  %3 = load i32, i32* @GIT_OBJECT_BLOB, align 4
  %4 = call i32 @git_object_lookup_bypath(i32* @g_actualobject, i32* %2, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %3)
  %5 = call i32 @cl_git_pass(i32 %4)
  %6 = load i32, i32* @g_expectedobject, align 4
  %7 = call i32 @git_object_id(i32 %6)
  %8 = load i32, i32* @g_actualobject, align 4
  %9 = call i32 @git_object_id(i32 %8)
  %10 = call i32 @cl_assert_equal_oid(i32 %7, i32 %9)
  ret void
}

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_object_lookup_bypath(i32*, i32*, i8*, i32) #1

declare dso_local i32 @cl_assert_equal_oid(i32, i32) #1

declare dso_local i32 @git_object_id(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
