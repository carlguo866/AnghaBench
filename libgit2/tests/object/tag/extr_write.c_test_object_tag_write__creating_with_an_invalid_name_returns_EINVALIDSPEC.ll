; ModuleID = '/home/carl/AnghaBench/libgit2/tests/object/tag/extr_write.c_test_object_tag_write__creating_with_an_invalid_name_returns_EINVALIDSPEC.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/object/tag/extr_write.c_test_object_tag_write__creating_with_an_invalid_name_returns_EINVALIDSPEC.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@tagged_commit = common dso_local global i32 0, align 4
@g_repo = common dso_local global i32 0, align 4
@GIT_OBJECT_COMMIT = common dso_local global i32 0, align 4
@tagger_name = common dso_local global i32 0, align 4
@tagger_email = common dso_local global i32 0, align 4
@GIT_EINVALIDSPEC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"Inv@{id\00", align 1
@tagger_message = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_object_tag_write__creating_with_an_invalid_name_returns_EINVALIDSPEC() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = load i32, i32* @tagged_commit, align 4
  %6 = call i32 @git_oid_fromstr(i32* %1, i32 %5)
  %7 = load i32, i32* @g_repo, align 4
  %8 = load i32, i32* @GIT_OBJECT_COMMIT, align 4
  %9 = call i32 @git_object_lookup(i32** %4, i32 %7, i32* %1, i32 %8)
  %10 = call i32 @cl_git_pass(i32 %9)
  %11 = load i32, i32* @tagger_name, align 4
  %12 = load i32, i32* @tagger_email, align 4
  %13 = call i32 @git_signature_new(i32** %3, i32 %11, i32 %12, i32 123456789, i32 60)
  %14 = call i32 @cl_git_pass(i32 %13)
  %15 = load i32, i32* @GIT_EINVALIDSPEC, align 4
  %16 = load i32, i32* @g_repo, align 4
  %17 = load i32*, i32** %4, align 8
  %18 = load i32*, i32** %3, align 8
  %19 = load i32, i32* @tagger_message, align 4
  %20 = call i32 @git_tag_create(i32* %2, i32 %16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32* %17, i32* %18, i32 %19, i32 0)
  %21 = call i32 @cl_assert_equal_i(i32 %15, i32 %20)
  %22 = load i32, i32* @GIT_EINVALIDSPEC, align 4
  %23 = load i32, i32* @g_repo, align 4
  %24 = load i32*, i32** %4, align 8
  %25 = call i32 @git_tag_create_lightweight(i32* %2, i32 %23, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32* %24, i32 0)
  %26 = call i32 @cl_assert_equal_i(i32 %22, i32 %25)
  %27 = load i32*, i32** %4, align 8
  %28 = call i32 @git_object_free(i32* %27)
  %29 = load i32*, i32** %3, align 8
  %30 = call i32 @git_signature_free(i32* %29)
  ret void
}

declare dso_local i32 @git_oid_fromstr(i32*, i32) #1

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_object_lookup(i32**, i32, i32*, i32) #1

declare dso_local i32 @git_signature_new(i32**, i32, i32, i32, i32) #1

declare dso_local i32 @cl_assert_equal_i(i32, i32) #1

declare dso_local i32 @git_tag_create(i32*, i32, i8*, i32*, i32*, i32, i32) #1

declare dso_local i32 @git_tag_create_lightweight(i32*, i32, i8*, i32*, i32) #1

declare dso_local i32 @git_object_free(i32*) #1

declare dso_local i32 @git_signature_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
