; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_revparse.c_handle_linear_syntax.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_revparse.c_handle_linear_syntax.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GIT_OBJECT_COMMIT = common dso_local global i32 0, align 4
@GIT_EAMBIGUOUS = common dso_local global i32 0, align 4
@GIT_ENOTFOUND = common dso_local global i32 0, align 4
@GIT_EINVALIDSPEC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32**, i32*, i32)* @handle_linear_syntax to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_linear_syntax(i32** %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32**, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store i32** %0, i32*** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32* null, i32** %8, align 8
  %10 = load i32*, i32** %6, align 8
  %11 = load i32, i32* @GIT_OBJECT_COMMIT, align 4
  %12 = call i32 @git_object_peel(i32** %8, i32* %10, i32 %11)
  store i32 %12, i32* %9, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %28

14:                                               ; preds = %3
  %15 = load i32, i32* %9, align 4
  %16 = load i32, i32* @GIT_EAMBIGUOUS, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %22, label %18

18:                                               ; preds = %14
  %19 = load i32, i32* %9, align 4
  %20 = load i32, i32* @GIT_ENOTFOUND, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %18, %14
  %23 = load i32, i32* @GIT_EINVALIDSPEC, align 4
  br label %26

24:                                               ; preds = %18
  %25 = load i32, i32* %9, align 4
  br label %26

26:                                               ; preds = %24, %22
  %27 = phi i32 [ %23, %22 ], [ %25, %24 ]
  store i32 %27, i32* %4, align 4
  br label %36

28:                                               ; preds = %3
  %29 = load i32**, i32*** %5, align 8
  %30 = load i32*, i32** %8, align 8
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @git_commit_nth_gen_ancestor(i32** %29, i32* %30, i32 %31)
  store i32 %32, i32* %9, align 4
  %33 = load i32*, i32** %8, align 8
  %34 = call i32 @git_object_free(i32* %33)
  %35 = load i32, i32* %9, align 4
  store i32 %35, i32* %4, align 4
  br label %36

36:                                               ; preds = %28, %26
  %37 = load i32, i32* %4, align 4
  ret i32 %37
}

declare dso_local i32 @git_object_peel(i32**, i32*, i32) #1

declare dso_local i32 @git_commit_nth_gen_ancestor(i32**, i32*, i32) #1

declare dso_local i32 @git_object_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
