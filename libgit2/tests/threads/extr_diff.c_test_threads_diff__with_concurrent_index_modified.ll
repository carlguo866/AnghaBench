; ModuleID = '/home/carl/AnghaBench/libgit2/tests/threads/extr_diff.c_test_threads_diff__with_concurrent_index_modified.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/threads/extr_diff.c_test_threads_diff__with_concurrent_index_modified.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"status\00", align 1
@_repo = common dso_local global i32 0, align 4
@_check_counts = common dso_local global i64 0, align 8
@run_index_diffs_with_modifier = common dso_local global i32 0, align 4
@setup_trees = common dso_local global i32 0, align 4
@free_trees = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_threads_diff__with_concurrent_index_modified() #0 {
  %1 = call i32 @cl_git_sandbox_init(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store i32 %1, i32* @_repo, align 4
  store i64 0, i64* @_check_counts, align 8
  %2 = load i32, i32* @run_index_diffs_with_modifier, align 4
  %3 = load i32, i32* @setup_trees, align 4
  %4 = load i32, i32* @free_trees, align 4
  %5 = call i32 @run_in_parallel(i32 5, i32 16, i32 %2, i32 %3, i32 %4)
  ret void
}

declare dso_local i32 @cl_git_sandbox_init(i8*) #1

declare dso_local i32 @run_in_parallel(i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
