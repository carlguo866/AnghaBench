; ModuleID = '/home/carl/AnghaBench/libgit2/src/extr_notes.c_remove_note_in_tree_eexists_cb.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/extr_notes.c_remove_note_in_tree_eexists_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32**, i32*, i32*, i32*, i8*, i32, i32)* @remove_note_in_tree_eexists_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @remove_note_in_tree_eexists_cb(i32** %0, i32* %1, i32* %2, i32* %3, i8* %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32** %0, i32*** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32* %3, i32** %11, align 8
  store i8* %4, i8** %12, align 8
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %15 = load i32*, i32** %11, align 8
  %16 = ptrtoint i32* %15 to i32
  %17 = call i32 @GIT_UNUSED(i32 %16)
  %18 = load i32, i32* %14, align 4
  %19 = call i32 @GIT_UNUSED(i32 %18)
  %20 = load i32**, i32*** %8, align 8
  %21 = load i32*, i32** %9, align 8
  %22 = load i32*, i32** %10, align 8
  %23 = load i8*, i8** %12, align 8
  %24 = load i32, i32* %13, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i8, i8* %23, i64 %25
  %27 = call i32 @tree_write(i32** %20, i32* %21, i32* %22, i32* null, i8* %26, i32 0)
  ret i32 %27
}

declare dso_local i32 @GIT_UNUSED(i32) #1

declare dso_local i32 @tree_write(i32**, i32*, i32*, i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
