; ModuleID = '/home/carl/AnghaBench/libgit2/tests/config/extr_read.c_test_config_read__whitespace_not_required_around_assignment.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/config/extr_read.c_test_config_read__whitespace_not_required_around_assignment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [16 x i8] c"config/config14\00", align 1
@buf = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"a.b\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"d.e\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"f\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_config_read__whitespace_not_required_around_assignment() #0 {
  %1 = alloca i32*, align 8
  %2 = call i32 @cl_fixture(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %3 = call i32 @git_config_open_ondisk(i32** %1, i32 %2)
  %4 = call i32 @cl_git_pass(i32 %3)
  %5 = load i32*, i32** %1, align 8
  %6 = call i32 @git_config_get_string_buf(i32* @buf, i32* %5, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %7 = call i32 @cl_git_pass(i32 %6)
  %8 = call i32 @git_buf_cstr(i32* @buf)
  %9 = call i32 @cl_assert_equal_s(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 %8)
  %10 = call i32 @git_buf_clear(i32* @buf)
  %11 = load i32*, i32** %1, align 8
  %12 = call i32 @git_config_get_string_buf(i32* @buf, i32* %11, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %13 = call i32 @cl_git_pass(i32 %12)
  %14 = call i32 @git_buf_cstr(i32* @buf)
  %15 = call i32 @cl_assert_equal_s(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i64 0, i64 0), i32 %14)
  %16 = load i32*, i32** %1, align 8
  %17 = call i32 @git_config_free(i32* %16)
  ret void
}

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_config_open_ondisk(i32**, i32) #1

declare dso_local i32 @cl_fixture(i8*) #1

declare dso_local i32 @git_config_get_string_buf(i32*, i32*, i8*) #1

declare dso_local i32 @cl_assert_equal_s(i8*, i32) #1

declare dso_local i32 @git_buf_cstr(i32*) #1

declare dso_local i32 @git_buf_clear(i32*) #1

declare dso_local i32 @git_config_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
