; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_refs.c_git_reference_foreach_glob.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_refs.c_git_reference_foreach_glob.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GIT_ITEROVER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @git_reference_foreach_glob(i32* %0, i8* %1, i32 (i8*, i8*)* %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32 (i8*, i8*)*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 (i8*, i8*)* %2, i32 (i8*, i8*)** %8, align 8
  store i8* %3, i8** %9, align 8
  %13 = load i32*, i32** %6, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = call i32 @git_reference_iterator_glob_new(i32** %10, i32* %13, i8* %14)
  store i32 %15, i32* %12, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %4
  %18 = load i32, i32* %12, align 4
  store i32 %18, i32* %5, align 4
  br label %44

19:                                               ; preds = %4
  br label %20

20:                                               ; preds = %34, %19
  %21 = load i32*, i32** %10, align 8
  %22 = call i32 @git_reference_next_name(i8** %11, i32* %21)
  store i32 %22, i32* %12, align 4
  %23 = icmp ne i32 %22, 0
  %24 = xor i1 %23, true
  br i1 %24, label %25, label %35

25:                                               ; preds = %20
  %26 = load i32 (i8*, i8*)*, i32 (i8*, i8*)** %8, align 8
  %27 = load i8*, i8** %11, align 8
  %28 = load i8*, i8** %9, align 8
  %29 = call i32 %26(i8* %27, i8* %28)
  store i32 %29, i32* %12, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %25
  %32 = load i32, i32* %12, align 4
  %33 = call i32 @git_error_set_after_callback(i32 %32)
  br label %35

34:                                               ; preds = %25
  br label %20

35:                                               ; preds = %31, %20
  %36 = load i32, i32* %12, align 4
  %37 = load i32, i32* @GIT_ITEROVER, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %35
  store i32 0, i32* %12, align 4
  br label %40

40:                                               ; preds = %39, %35
  %41 = load i32*, i32** %10, align 8
  %42 = call i32 @git_reference_iterator_free(i32* %41)
  %43 = load i32, i32* %12, align 4
  store i32 %43, i32* %5, align 4
  br label %44

44:                                               ; preds = %40, %17
  %45 = load i32, i32* %5, align 4
  ret i32 %45
}

declare dso_local i32 @git_reference_iterator_glob_new(i32**, i32*, i8*) #1

declare dso_local i32 @git_reference_next_name(i8**, i32*) #1

declare dso_local i32 @git_error_set_after_callback(i32) #1

declare dso_local i32 @git_reference_iterator_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
