; ModuleID = '/home/carl/AnghaBench/libgit2/tests/refs/reflog/extr_messages.c_test_refs_reflog_messages__newline_gets_replaced.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/refs/reflog/extr_messages.c_test_refs_reflog_messages__newline_gets_replaced.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"me\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"foo@example.com\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"a65fedf39aefe402d3bb6e24df4d4f5fe4547750\00", align 1
@g_repo = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"HEAD\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"inner\0Anewline\00", align 1
@.str.5 = private unnamed_addr constant [14 x i8] c"inner newline\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_refs_reflog_messages__newline_gets_replaced() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = call i32 @git_signature_now(i32** %2, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %6 = call i32 @cl_git_pass(i32 %5)
  %7 = call i32 @git_oid_fromstr(i32* %4, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  %8 = call i32 @cl_git_pass(i32 %7)
  %9 = load i32, i32* @g_repo, align 4
  %10 = call i32 @git_reflog_read(i32** %3, i32 %9, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  %11 = call i32 @cl_git_pass(i32 %10)
  %12 = load i32*, i32** %3, align 8
  %13 = call i32 @git_reflog_entrycount(i32* %12)
  %14 = call i32 @cl_assert_equal_sz(i32 7, i32 %13)
  %15 = load i32*, i32** %3, align 8
  %16 = load i32*, i32** %2, align 8
  %17 = call i32 @git_reflog_append(i32* %15, i32* %4, i32* %16, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  %18 = call i32 @cl_git_pass(i32 %17)
  %19 = load i32*, i32** %3, align 8
  %20 = call i32 @git_reflog_entrycount(i32* %19)
  %21 = call i32 @cl_assert_equal_sz(i32 8, i32 %20)
  %22 = load i32*, i32** %3, align 8
  %23 = call i32* @git_reflog_entry_byindex(i32* %22, i32 0)
  store i32* %23, i32** %1, align 8
  %24 = call i32 @cl_assert(i32* %23)
  %25 = load i32*, i32** %1, align 8
  %26 = call i32 @git_reflog_entry_message(i32* %25)
  %27 = call i32 @cl_assert_equal_s(i32 %26, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.5, i64 0, i64 0))
  %28 = load i32*, i32** %2, align 8
  %29 = call i32 @git_signature_free(i32* %28)
  %30 = load i32*, i32** %3, align 8
  %31 = call i32 @git_reflog_free(i32* %30)
  ret void
}

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_signature_now(i32**, i8*, i8*) #1

declare dso_local i32 @git_oid_fromstr(i32*, i8*) #1

declare dso_local i32 @git_reflog_read(i32**, i32, i8*) #1

declare dso_local i32 @cl_assert_equal_sz(i32, i32) #1

declare dso_local i32 @git_reflog_entrycount(i32*) #1

declare dso_local i32 @git_reflog_append(i32*, i32*, i32*, i8*) #1

declare dso_local i32 @cl_assert(i32*) #1

declare dso_local i32* @git_reflog_entry_byindex(i32*, i32) #1

declare dso_local i32 @cl_assert_equal_s(i32, i8*) #1

declare dso_local i32 @git_reflog_entry_message(i32*) #1

declare dso_local i32 @git_signature_free(i32*) #1

declare dso_local i32 @git_reflog_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
