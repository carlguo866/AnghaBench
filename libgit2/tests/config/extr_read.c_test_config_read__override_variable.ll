; ModuleID = '/home/carl/AnghaBench/libgit2/tests/config/extr_read.c_test_config_read__override_variable.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/config/extr_read.c_test_config_read__override_variable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@clean_test_config = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"./testconfig\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"[some] var = one\0Avar = two\00", align 1
@buf = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"some.var\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"two\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_config_read__override_variable() #0 {
  %1 = alloca i32*, align 8
  %2 = call i32 @cl_set_cleanup(i32* @clean_test_config, i32* null)
  %3 = call i32 @cl_git_mkfile(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %4 = call i32 @git_config_open_ondisk(i32** %1, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %5 = call i32 @cl_git_pass(i32 %4)
  %6 = load i32*, i32** %1, align 8
  %7 = call i32 @git_config_get_string_buf(i32* @buf, i32* %6, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  %8 = call i32 @cl_git_pass(i32 %7)
  %9 = call i32 @git_buf_cstr(i32* @buf)
  %10 = call i32 @cl_assert_equal_s(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 %9)
  %11 = load i32*, i32** %1, align 8
  %12 = call i32 @git_config_free(i32* %11)
  ret void
}

declare dso_local i32 @cl_set_cleanup(i32*, i32*) #1

declare dso_local i32 @cl_git_mkfile(i8*, i8*) #1

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_config_open_ondisk(i32**, i8*) #1

declare dso_local i32 @git_config_get_string_buf(i32*, i32*, i8*) #1

declare dso_local i32 @cl_assert_equal_s(i8*, i32) #1

declare dso_local i32 @git_buf_cstr(i32*) #1

declare dso_local i32 @git_config_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
