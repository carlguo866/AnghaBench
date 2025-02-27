; ModuleID = '/home/carl/AnghaBench/libgit2/examples/extr_ls-files.c_lg2_ls_files.c'
source_filename = "/home/carl/AnghaBench/libgit2/examples/extr_ls-files.c_lg2_ls_files.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lg2_ls_files(i32* %0, i32 %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8** %2, i8*** %7, align 8
  store i32* null, i32** %8, align 8
  %11 = load i32, i32* %6, align 4
  %12 = load i8**, i8*** %7, align 8
  %13 = call i32 @parse_options(i32* %9, i32 %11, i8** %12)
  store i32 %13, i32* %10, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = load i32, i32* %10, align 4
  store i32 %16, i32* %4, align 4
  br label %29

17:                                               ; preds = %3
  %18 = load i32*, i32** %5, align 8
  %19 = call i32 @git_repository_index(i32** %8, i32* %18)
  store i32 %19, i32* %10, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %17
  br label %25

22:                                               ; preds = %17
  %23 = load i32*, i32** %8, align 8
  %24 = call i32 @print_paths(i32* %9, i32* %23)
  store i32 %24, i32* %10, align 4
  br label %25

25:                                               ; preds = %22, %21
  %26 = load i32*, i32** %8, align 8
  %27 = call i32 @git_index_free(i32* %26)
  %28 = load i32, i32* %10, align 4
  store i32 %28, i32* %4, align 4
  br label %29

29:                                               ; preds = %25, %15
  %30 = load i32, i32* %4, align 4
  ret i32 %30
}

declare dso_local i32 @parse_options(i32*, i32, i8**) #1

declare dso_local i32 @git_repository_index(i32**, i32*) #1

declare dso_local i32 @print_paths(i32*, i32*) #1

declare dso_local i32 @git_index_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
