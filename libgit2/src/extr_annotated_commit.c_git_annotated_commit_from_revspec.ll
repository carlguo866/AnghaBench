; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_annotated_commit.c_git_annotated_commit_from_revspec.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_annotated_commit.c_git_annotated_commit_from_revspec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GIT_OBJECT_COMMIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_annotated_commit_from_revspec(i32** %0, i32* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store i32** %0, i32*** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load i32**, i32*** %5, align 8
  %12 = icmp ne i32** %11, null
  br i1 %12, label %13, label %19

13:                                               ; preds = %3
  %14 = load i32*, i32** %6, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %13
  %17 = load i8*, i8** %7, align 8
  %18 = icmp ne i8* %17, null
  br label %19

19:                                               ; preds = %16, %13, %3
  %20 = phi i1 [ false, %13 ], [ false, %3 ], [ %18, %16 ]
  %21 = zext i1 %20 to i32
  %22 = call i32 @assert(i32 %21)
  %23 = load i32*, i32** %6, align 8
  %24 = load i8*, i8** %7, align 8
  %25 = call i32 @git_revparse_single(i32** %8, i32* %23, i8* %24)
  store i32 %25, i32* %10, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %19
  %28 = load i32, i32* %10, align 4
  store i32 %28, i32* %4, align 4
  br label %48

29:                                               ; preds = %19
  %30 = load i32*, i32** %8, align 8
  %31 = load i32, i32* @GIT_OBJECT_COMMIT, align 4
  %32 = call i32 @git_object_peel(i32** %9, i32* %30, i32 %31)
  store i32 %32, i32* %10, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %29
  %35 = load i32*, i32** %8, align 8
  %36 = call i32 @git_object_free(i32* %35)
  %37 = load i32, i32* %10, align 4
  store i32 %37, i32* %4, align 4
  br label %48

38:                                               ; preds = %29
  %39 = load i32**, i32*** %5, align 8
  %40 = load i32*, i32** %9, align 8
  %41 = load i8*, i8** %7, align 8
  %42 = call i32 @annotated_commit_init(i32** %39, i32* %40, i8* %41)
  store i32 %42, i32* %10, align 4
  %43 = load i32*, i32** %8, align 8
  %44 = call i32 @git_object_free(i32* %43)
  %45 = load i32*, i32** %9, align 8
  %46 = call i32 @git_object_free(i32* %45)
  %47 = load i32, i32* %10, align 4
  store i32 %47, i32* %4, align 4
  br label %48

48:                                               ; preds = %38, %34, %27
  %49 = load i32, i32* %4, align 4
  ret i32 %49
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @git_revparse_single(i32**, i32*, i8*) #1

declare dso_local i32 @git_object_peel(i32**, i32*, i32) #1

declare dso_local i32 @git_object_free(i32*) #1

declare dso_local i32 @annotated_commit_init(i32**, i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
