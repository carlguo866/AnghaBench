; ModuleID = '/home/carl/AnghaBench/libgit2/tests/apply/extr_apply_helpers.c_validate_workdir_unchanged.c'
source_filename = "/home/carl/AnghaBench/libgit2/tests/apply/extr_apply_helpers.c_validate_workdir_unchanged.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@GIT_ITERATOR_OPTIONS_INIT = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@GIT_ITERATOR_INCLUDE_HASH = common dso_local global i32 0, align 4
@iterator_eq = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @validate_workdir_unchanged(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca [2 x i32*], align 16
  %8 = alloca %struct.TYPE_4__, align 4
  store i32* %0, i32** %2, align 8
  %9 = bitcast %struct.TYPE_4__* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %9, i8* align 4 bitcast (%struct.TYPE_4__* @GIT_ITERATOR_OPTIONS_INIT to i8*), i64 4, i1 false)
  %10 = load i32*, i32** %2, align 8
  %11 = call i32 @git_repository_head_tree(i32** %3, i32* %10)
  %12 = call i32 @cl_git_pass(i32 %11)
  %13 = load i32*, i32** %2, align 8
  %14 = call i32 @git_repository_index(i32** %4, i32* %13)
  %15 = call i32 @cl_git_pass(i32 %14)
  %16 = load i32, i32* @GIT_ITERATOR_INCLUDE_HASH, align 4
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = or i32 %18, %16
  store i32 %19, i32* %17, align 4
  %20 = load i32*, i32** %3, align 8
  %21 = call i32 @git_iterator_for_tree(i32** %5, i32* %20, i32* null)
  %22 = call i32 @cl_git_pass(i32 %21)
  %23 = load i32*, i32** %2, align 8
  %24 = load i32*, i32** %4, align 8
  %25 = call i32 @git_iterator_for_workdir(i32** %6, i32* %23, i32* %24, i32* null, %struct.TYPE_4__* %8)
  %26 = call i32 @cl_git_pass(i32 %25)
  %27 = load i32*, i32** %5, align 8
  %28 = getelementptr inbounds [2 x i32*], [2 x i32*]* %7, i64 0, i64 0
  store i32* %27, i32** %28, align 16
  %29 = load i32*, i32** %6, align 8
  %30 = getelementptr inbounds [2 x i32*], [2 x i32*]* %7, i64 0, i64 1
  store i32* %29, i32** %30, align 8
  %31 = getelementptr inbounds [2 x i32*], [2 x i32*]* %7, i64 0, i64 0
  %32 = load i32, i32* @iterator_eq, align 4
  %33 = call i32 @git_iterator_walk(i32** %31, i32 2, i32 %32, i32* null)
  %34 = call i32 @cl_git_pass(i32 %33)
  %35 = load i32*, i32** %5, align 8
  %36 = call i32 @git_iterator_free(i32* %35)
  %37 = load i32*, i32** %6, align 8
  %38 = call i32 @git_iterator_free(i32* %37)
  %39 = load i32*, i32** %3, align 8
  %40 = call i32 @git_tree_free(i32* %39)
  %41 = load i32*, i32** %4, align 8
  %42 = call i32 @git_index_free(i32* %41)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @cl_git_pass(i32) #2

declare dso_local i32 @git_repository_head_tree(i32**, i32*) #2

declare dso_local i32 @git_repository_index(i32**, i32*) #2

declare dso_local i32 @git_iterator_for_tree(i32**, i32*, i32*) #2

declare dso_local i32 @git_iterator_for_workdir(i32**, i32*, i32*, i32*, %struct.TYPE_4__*) #2

declare dso_local i32 @git_iterator_walk(i32**, i32, i32, i32*) #2

declare dso_local i32 @git_iterator_free(i32*) #2

declare dso_local i32 @git_tree_free(i32*) #2

declare dso_local i32 @git_index_free(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
