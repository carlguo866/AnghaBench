; ModuleID = '/home/carl/AnghaBench/libgit2/tests/index/extr_read_index.c_test_index_read_index__read_and_writes.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/index/extr_read_index.c_test_index_read_index__read_and_writes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [41 x i8] c"ae90f12eea699729ed24555e40b9fd669da12a12\00", align 1
@_repo = common dso_local global i32 0, align 4
@_index = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_index_read_index__read_and_writes() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = call i32 @git_oid_fromstr(i32* %1, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %7 = call i32 @cl_git_pass(i32 %6)
  %8 = load i32, i32* @_repo, align 4
  %9 = call i32 @git_tree_lookup(i32** %3, i32 %8, i32* %1)
  %10 = call i32 @cl_git_pass(i32 %9)
  %11 = call i32 @git_index_new(i32** %4)
  %12 = call i32 @cl_git_pass(i32 %11)
  %13 = load i32*, i32** %4, align 8
  %14 = load i32*, i32** %3, align 8
  %15 = call i32 @git_index_read_tree(i32* %13, i32* %14)
  %16 = call i32 @cl_git_pass(i32 %15)
  %17 = load i32, i32* @_index, align 4
  %18 = load i32*, i32** %4, align 8
  %19 = call i32 @git_index_read_index(i32 %17, i32* %18)
  %20 = call i32 @cl_git_pass(i32 %19)
  %21 = load i32, i32* @_index, align 4
  %22 = call i32 @git_index_write(i32 %21)
  %23 = call i32 @cl_git_pass(i32 %22)
  %24 = load i32, i32* @_index, align 4
  %25 = call i32 @git_index_path(i32 %24)
  %26 = call i32 @git_index_open(i32** %5, i32 %25)
  %27 = call i32 @cl_git_pass(i32 %26)
  %28 = load i32*, i32** %5, align 8
  %29 = load i32, i32* @_repo, align 4
  %30 = call i32 @git_index_write_tree_to(i32* %2, i32* %28, i32 %29)
  %31 = call i32 @cl_git_pass(i32 %30)
  %32 = call i32 @cl_assert_equal_oid(i32* %1, i32* %2)
  %33 = load i32*, i32** %3, align 8
  %34 = call i32 @git_tree_free(i32* %33)
  %35 = load i32*, i32** %4, align 8
  %36 = call i32 @git_index_free(i32* %35)
  %37 = load i32*, i32** %5, align 8
  %38 = call i32 @git_index_free(i32* %37)
  ret void
}

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_oid_fromstr(i32*, i8*) #1

declare dso_local i32 @git_tree_lookup(i32**, i32, i32*) #1

declare dso_local i32 @git_index_new(i32**) #1

declare dso_local i32 @git_index_read_tree(i32*, i32*) #1

declare dso_local i32 @git_index_read_index(i32, i32*) #1

declare dso_local i32 @git_index_write(i32) #1

declare dso_local i32 @git_index_open(i32**, i32) #1

declare dso_local i32 @git_index_path(i32) #1

declare dso_local i32 @git_index_write_tree_to(i32*, i32*, i32) #1

declare dso_local i32 @cl_assert_equal_oid(i32*, i32*) #1

declare dso_local i32 @git_tree_free(i32*) #1

declare dso_local i32 @git_index_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
