; ModuleID = '/home/carl/AnghaBench/libgit2/tests/cherrypick/extr_bare.c_test_cherrypick_bare__automerge.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/cherrypick/extr_bare.c_test_cherrypick_bare__automerge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.merge_index_entry = type { i32, i8*, i8*, i32 }

@.str = private unnamed_addr constant [41 x i8] c"38c05a857e831a7e759d83778bfc85d003e21c45\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"file1.txt\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"a661b5dec1004e2c62654ded3762370c27cf266b\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"file2.txt\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"df6b290e0bd6a89b01d69f66687e8abf385283ca\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"file3.txt\00", align 1
@.str.6 = private unnamed_addr constant [41 x i8] c"d3d77487660ee3c0194ee01dc5eaf478782b1c7e\00", align 1
@repo = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [41 x i8] c"cfc4f0999a8367568e049af4f72e452d40828a15\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_cherrypick_bare__automerge() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [3 x %struct.merge_index_entry], align 16
  store i32* null, i32** %1, align 8
  store i32* null, i32** %2, align 8
  store i32* null, i32** %3, align 8
  %7 = getelementptr inbounds [3 x %struct.merge_index_entry], [3 x %struct.merge_index_entry]* %6, i64 0, i64 0
  %8 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %7, i32 0, i32 0
  store i32 33188, i32* %8, align 16
  %9 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %7, i32 0, i32 1
  store i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i8** %9, align 8
  %10 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %7, i32 0, i32 2
  store i8* null, i8** %10, align 16
  %11 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %7, i32 0, i32 3
  store i32 ptrtoint ([10 x i8]* @.str.1 to i32), i32* %11, align 8
  %12 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %7, i64 1
  %13 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %12, i32 0, i32 0
  store i32 33188, i32* %13, align 16
  %14 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %12, i32 0, i32 1
  store i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i8** %14, align 8
  %15 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %12, i32 0, i32 2
  store i8* null, i8** %15, align 16
  %16 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %12, i32 0, i32 3
  store i32 ptrtoint ([10 x i8]* @.str.3 to i32), i32* %16, align 8
  %17 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %12, i64 1
  %18 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %17, i32 0, i32 0
  store i32 33188, i32* %18, align 16
  %19 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %17, i32 0, i32 1
  store i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0), i8** %19, align 8
  %20 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %17, i32 0, i32 2
  store i8* null, i8** %20, align 16
  %21 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %17, i32 0, i32 3
  store i32 ptrtoint ([10 x i8]* @.str.5 to i32), i32* %21, align 8
  %22 = call i32 @git_oid_fromstr(i32* %4, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i64 0, i64 0))
  %23 = load i32, i32* @repo, align 4
  %24 = call i32 @git_commit_lookup(i32** %1, i32 %23, i32* %4)
  %25 = call i32 @cl_git_pass(i32 %24)
  %26 = call i32 @git_oid_fromstr(i32* %5, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.7, i64 0, i64 0))
  %27 = load i32, i32* @repo, align 4
  %28 = call i32 @git_commit_lookup(i32** %2, i32 %27, i32* %5)
  %29 = call i32 @cl_git_pass(i32 %28)
  %30 = load i32, i32* @repo, align 4
  %31 = load i32*, i32** %2, align 8
  %32 = load i32*, i32** %1, align 8
  %33 = call i32 @git_cherrypick_commit(i32** %3, i32 %30, i32* %31, i32* %32, i32 0, i32* null)
  %34 = call i32 @cl_git_pass(i32 %33)
  %35 = load i32*, i32** %3, align 8
  %36 = getelementptr inbounds [3 x %struct.merge_index_entry], [3 x %struct.merge_index_entry]* %6, i64 0, i64 0
  %37 = call i32 @merge_test_index(i32* %35, %struct.merge_index_entry* %36, i32 3)
  %38 = call i32 @cl_assert(i32 %37)
  %39 = load i32*, i32** %3, align 8
  %40 = call i32 @git_index_free(i32* %39)
  %41 = load i32*, i32** %1, align 8
  %42 = call i32 @git_commit_free(i32* %41)
  %43 = load i32*, i32** %2, align 8
  %44 = call i32 @git_commit_free(i32* %43)
  ret void
}

declare dso_local i32 @git_oid_fromstr(i32*, i8*) #1

declare dso_local i32 @cl_git_pass(i32) #1

declare dso_local i32 @git_commit_lookup(i32**, i32, i32*) #1

declare dso_local i32 @git_cherrypick_commit(i32**, i32, i32*, i32*, i32, i32*) #1

declare dso_local i32 @cl_assert(i32) #1

declare dso_local i32 @merge_test_index(i32*, %struct.merge_index_entry*, i32) #1

declare dso_local i32 @git_index_free(i32*) #1

declare dso_local i32 @git_commit_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
