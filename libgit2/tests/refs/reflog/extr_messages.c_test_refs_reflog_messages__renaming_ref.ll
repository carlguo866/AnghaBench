; ModuleID = '/home/carl/AnghaBench/libgit2/tests/refs/reflog/extr_messages.c_test_refs_reflog_messages__renaming_ref.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/refs/reflog/extr_messages.c_test_refs_reflog_messages__renaming_ref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@g_repo = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"refs/heads/master\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"refs/heads/renamed\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"message\00", align 1
@.str.3 = private unnamed_addr constant [41 x i8] c"a65fedf39aefe402d3bb6e24df4d4f5fe4547750\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"foo@example.com\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_refs_reflog_messages__renaming_ref() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = load i32, i32* @g_repo, align 4
  %4 = call i32 @git_reference_lookup(i32** %1, i32 %3, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %5 = call i32 @cl_git_pass(i32 %4)
  %6 = load i32*, i32** %1, align 8
  %7 = call i32 @git_reference_rename(i32** %2, i32* %6, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 0, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %8 = call i32 @cl_git_pass(i32 %7)
  %9 = load i32, i32* @g_repo, align 4
  %10 = load i32*, i32** %2, align 8
  %11 = call i32 @git_reference_name(i32* %10)
  %12 = call i32 @cl_reflog_check_entry(i32 %9, i32 %11, i32 0, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0))
  %13 = load i32*, i32** %1, align 8
  %14 = call i32 @git_reference_free(i32* %13)
  %15 = load i32*, i32** %2, align 8
  %16 = call i32 @git_reference_free(i32* %15)
  ret void
}

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_reference_lookup(i32**, i32, i8*) #1

declare dso_local i32 @git_reference_rename(i32**, i32*, i8*, i32, i8*) #1

declare dso_local i32 @cl_reflog_check_entry(i32, i32, i32, i8*, i8*, i8*, i8*) #1

declare dso_local i32 @git_reference_name(i32*) #1

declare dso_local i32 @git_reference_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
