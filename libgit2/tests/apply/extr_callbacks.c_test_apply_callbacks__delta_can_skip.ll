; ModuleID = '/home/carl/AnghaBench/libgit2/tests/apply/extr_callbacks.c_test_apply_callbacks__delta_can_skip.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/apply/extr_callbacks.c_test_apply_callbacks__delta_can_skip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.merge_index_entry = type { i32, i8*, i8*, i32 }

@GIT_APPLY_OPTIONS_INIT = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@.str = private unnamed_addr constant [41 x i8] c"f51658077d85f2264fa179b4d0848268cb3475c3\00", align 1
@.str.1 = private unnamed_addr constant [14 x i8] c"asparagus.txt\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"68f6182f4c85d39e1309d97c7e456156dc9c0096\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"beef.txt\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"4b7c5650008b2e747fe1809eeb5a1dde0e80850a\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"bouilli.txt\00", align 1
@.str.6 = private unnamed_addr constant [41 x i8] c"c4e6cca3ec6ae0148ed231f97257df8c311e015f\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"gravy.txt\00", align 1
@.str.8 = private unnamed_addr constant [41 x i8] c"68af1fc7407fd9addf1701a87eb1c95c7494c598\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"oyster.txt\00", align 1
@.str.10 = private unnamed_addr constant [41 x i8] c"a7b066537e6be7109abfe4ff97b675d4e077da20\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"veal.txt\00", align 1
@delta_skip_cb = common dso_local global i32 0, align 4
@DIFF_MODIFY_TWO_FILES = common dso_local global i32 0, align 4
@repo = common dso_local global i32 0, align 4
@GIT_APPLY_LOCATION_WORKDIR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @test_apply_callbacks__delta_can_skip() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca %struct.TYPE_4__, align 4
  %3 = alloca [6 x %struct.merge_index_entry], align 16
  %4 = alloca i64, align 8
  %5 = bitcast %struct.TYPE_4__* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %5, i8* align 4 bitcast (%struct.TYPE_4__* @GIT_APPLY_OPTIONS_INIT to i8*), i64 4, i1 false)
  %6 = getelementptr inbounds [6 x %struct.merge_index_entry], [6 x %struct.merge_index_entry]* %3, i64 0, i64 0
  %7 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %6, i32 0, i32 0
  store i32 33188, i32* %7, align 16
  %8 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %6, i32 0, i32 1
  store i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i8** %8, align 8
  %9 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %6, i32 0, i32 2
  store i8* null, i8** %9, align 16
  %10 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %6, i32 0, i32 3
  store i32 ptrtoint ([14 x i8]* @.str.1 to i32), i32* %10, align 8
  %11 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %6, i64 1
  %12 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %11, i32 0, i32 0
  store i32 33188, i32* %12, align 16
  %13 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %11, i32 0, i32 1
  store i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i8** %13, align 8
  %14 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %11, i32 0, i32 2
  store i8* null, i8** %14, align 16
  %15 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %11, i32 0, i32 3
  store i32 ptrtoint ([9 x i8]* @.str.3 to i32), i32* %15, align 8
  %16 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %11, i64 1
  %17 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %16, i32 0, i32 0
  store i32 33188, i32* %17, align 16
  %18 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %16, i32 0, i32 1
  store i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0), i8** %18, align 8
  %19 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %16, i32 0, i32 2
  store i8* null, i8** %19, align 16
  %20 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %16, i32 0, i32 3
  store i32 ptrtoint ([12 x i8]* @.str.5 to i32), i32* %20, align 8
  %21 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %16, i64 1
  %22 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %21, i32 0, i32 0
  store i32 33188, i32* %22, align 16
  %23 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %21, i32 0, i32 1
  store i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.6, i64 0, i64 0), i8** %23, align 8
  %24 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %21, i32 0, i32 2
  store i8* null, i8** %24, align 16
  %25 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %21, i32 0, i32 3
  store i32 ptrtoint ([10 x i8]* @.str.7 to i32), i32* %25, align 8
  %26 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %21, i64 1
  %27 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %26, i32 0, i32 0
  store i32 33188, i32* %27, align 16
  %28 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %26, i32 0, i32 1
  store i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.8, i64 0, i64 0), i8** %28, align 8
  %29 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %26, i32 0, i32 2
  store i8* null, i8** %29, align 16
  %30 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %26, i32 0, i32 3
  store i32 ptrtoint ([11 x i8]* @.str.9 to i32), i32* %30, align 8
  %31 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %26, i64 1
  %32 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %31, i32 0, i32 0
  store i32 33188, i32* %32, align 16
  %33 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %31, i32 0, i32 1
  store i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.10, i64 0, i64 0), i8** %33, align 8
  %34 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %31, i32 0, i32 2
  store i8* null, i8** %34, align 16
  %35 = getelementptr inbounds %struct.merge_index_entry, %struct.merge_index_entry* %31, i32 0, i32 3
  store i32 ptrtoint ([9 x i8]* @.str.11 to i32), i32* %35, align 8
  store i64 6, i64* %4, align 8
  %36 = load i32, i32* @delta_skip_cb, align 4
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %2, i32 0, i32 0
  store i32 %36, i32* %37, align 4
  %38 = load i32, i32* @DIFF_MODIFY_TWO_FILES, align 4
  %39 = load i32, i32* @DIFF_MODIFY_TWO_FILES, align 4
  %40 = call i32 @strlen(i32 %39)
  %41 = call i32 @git_diff_from_buffer(i32** %1, i32 %38, i32 %40)
  %42 = call i32 @cl_git_pass(i32 %41)
  %43 = load i32, i32* @repo, align 4
  %44 = load i32*, i32** %1, align 8
  %45 = load i32, i32* @GIT_APPLY_LOCATION_WORKDIR, align 4
  %46 = call i32 @git_apply(i32 %43, i32* %44, i32 %45, %struct.TYPE_4__* %2)
  %47 = call i32 @cl_git_pass(i32 %46)
  %48 = load i32, i32* @repo, align 4
  %49 = call i32 @validate_index_unchanged(i32 %48)
  %50 = load i32, i32* @repo, align 4
  %51 = getelementptr inbounds [6 x %struct.merge_index_entry], [6 x %struct.merge_index_entry]* %3, i64 0, i64 0
  %52 = load i64, i64* %4, align 8
  %53 = call i32 @validate_apply_workdir(i32 %50, %struct.merge_index_entry* %51, i64 %52)
  %54 = load i32*, i32** %1, align 8
  %55 = call i32 @git_diff_free(i32* %54)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_diff_from_buffer(i32**, i32, i32) #2

declare dso_local i32 @strlen(i32) #2

declare dso_local i32 @git_apply(i32, i32*, i32, %struct.TYPE_4__*) #2

declare dso_local i32 @validate_index_unchanged(i32) #2

declare dso_local i32 @validate_apply_workdir(i32, %struct.merge_index_entry*, i64) #2

declare dso_local i32 @git_diff_free(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
