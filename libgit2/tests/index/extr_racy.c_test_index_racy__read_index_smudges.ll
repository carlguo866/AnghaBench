; ModuleID = '/home/carl/AnghaBench/libgit2/tests/index/extr_racy.c_test_index_racy__read_index_smudges.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/index/extr_racy.c_test_index_racy__read_index_smudges.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@g_repo = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_index_racy__read_index_smudges() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca %struct.TYPE_4__*, align 8
  %4 = call i32 (...) @setup_race()
  %5 = load i32, i32* @g_repo, align 4
  %6 = call i32 @git_repository_index(i32** %1, i32 %5)
  %7 = call i32 @cl_git_pass(i32 %6)
  %8 = call i32 @git_index_new(i32** %2)
  %9 = call i32 @cl_git_pass(i32 %8)
  %10 = load i32*, i32** %2, align 8
  %11 = load i32*, i32** %1, align 8
  %12 = call i32 @git_index_read_index(i32* %10, i32* %11)
  %13 = call i32 @cl_git_pass(i32 %12)
  %14 = load i32*, i32** %2, align 8
  %15 = call %struct.TYPE_4__* @git_index_get_bypath(i32* %14, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32 0)
  store %struct.TYPE_4__* %15, %struct.TYPE_4__** %3, align 8
  %16 = call i32 @cl_assert(%struct.TYPE_4__* %15)
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @cl_assert_equal_i(i32 0, i32 %19)
  %21 = load i32*, i32** %1, align 8
  %22 = call i32 @git_index_free(i32* %21)
  %23 = load i32*, i32** %2, align 8
  %24 = call i32 @git_index_free(i32* %23)
  ret void
}

declare dso_local i32 @setup_race(...) #1

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_repository_index(i32**, i32) #1

declare dso_local i32 @git_index_new(i32**) #1

declare dso_local i32 @git_index_read_index(i32*, i32*) #1

declare dso_local i32 @cl_assert(%struct.TYPE_4__*) #1

declare dso_local %struct.TYPE_4__* @git_index_get_bypath(i32*, i8*, i32) #1

declare dso_local i32 @cl_assert_equal_i(i32, i32) #1

declare dso_local i32 @git_index_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
