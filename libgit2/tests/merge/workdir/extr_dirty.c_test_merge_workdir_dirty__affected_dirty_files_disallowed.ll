; ModuleID = '/home/carl/AnghaBench/libgit2/tests/merge/workdir/extr_dirty.c_test_merge_workdir_dirty__affected_dirty_files_disallowed.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/merge/workdir/extr_dirty.c_test_merge_workdir_dirty__affected_dirty_files_disallowed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@affected = common dso_local global i8*** null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_merge_workdir_dirty__affected_dirty_files_disallowed() #0 {
  %1 = alloca i8**, align 8
  %2 = alloca i64, align 8
  store i64 0, i64* %2, align 8
  %3 = load i8***, i8**** @affected, align 8
  %4 = load i64, i64* %2, align 8
  %5 = getelementptr inbounds i8**, i8*** %3, i64 %4
  %6 = load i8**, i8*** %5, align 8
  store i8** %6, i8*** %1, align 8
  br label %7

7:                                                ; preds = %16, %0
  %8 = load i8**, i8*** %1, align 8
  %9 = getelementptr inbounds i8*, i8** %8, i64 0
  %10 = load i8*, i8** %9, align 8
  %11 = icmp ne i8* %10, null
  br i1 %11, label %12, label %22

12:                                               ; preds = %7
  %13 = load i8**, i8*** %1, align 8
  %14 = call i32 @merge_dirty_files(i8** %13)
  %15 = call i32 @cl_git_fail(i32 %14)
  br label %16

16:                                               ; preds = %12
  %17 = load i8***, i8**** @affected, align 8
  %18 = load i64, i64* %2, align 8
  %19 = add i64 %18, 1
  store i64 %19, i64* %2, align 8
  %20 = getelementptr inbounds i8**, i8*** %17, i64 %19
  %21 = load i8**, i8*** %20, align 8
  store i8** %21, i8*** %1, align 8
  br label %7

22:                                               ; preds = %7
  ret void
}

declare dso_local i32 @cl_git_fail(i32) #1

declare dso_local i32 @merge_dirty_files(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
