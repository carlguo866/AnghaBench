; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_diff_generate.c_diff_load_index.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_diff_generate.c_diff_load_index.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32**, i32*)* @diff_load_index to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @diff_load_index(i32** %0, i32* %1) #0 {
  %3 = alloca i32**, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store i32** %0, i32*** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load i32**, i32*** %3, align 8
  %7 = load i32*, i32** %4, align 8
  %8 = call i32 @git_repository_index__weakptr(i32** %6, i32* %7)
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %18, label %11

11:                                               ; preds = %2
  %12 = load i32**, i32*** %3, align 8
  %13 = load i32*, i32** %12, align 8
  %14 = call i64 @git_index_read(i32* %13, i32 0)
  %15 = icmp slt i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %11
  %17 = call i32 (...) @git_error_clear()
  br label %18

18:                                               ; preds = %16, %11, %2
  %19 = load i32, i32* %5, align 4
  ret i32 %19
}

declare dso_local i32 @git_repository_index__weakptr(i32**, i32*) #1

declare dso_local i64 @git_index_read(i32*, i32) #1

declare dso_local i32 @git_error_clear(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
