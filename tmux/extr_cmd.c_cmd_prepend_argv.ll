; ModuleID = '/home/carl/AnghaBench/tmux/extr_cmd.c_cmd_prepend_argv.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_cmd.c_cmd_prepend_argv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cmd_prepend_argv(i32* %0, i8*** %1, i8* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i8***, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i8*** %1, i8**** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load i32*, i32** %4, align 8
  %10 = load i32, i32* %9, align 4
  %11 = add nsw i32 %10, 1
  %12 = call i8** @xreallocarray(i32* null, i32 %11, i32 8)
  store i8** %12, i8*** %7, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = call i8* @xstrdup(i8* %13)
  %15 = load i8**, i8*** %7, align 8
  %16 = getelementptr inbounds i8*, i8** %15, i64 0
  store i8* %14, i8** %16, align 8
  store i32 0, i32* %8, align 4
  br label %17

17:                                               ; preds = %34, %3
  %18 = load i32, i32* %8, align 4
  %19 = load i32*, i32** %4, align 8
  %20 = load i32, i32* %19, align 4
  %21 = icmp slt i32 %18, %20
  br i1 %21, label %22, label %37

22:                                               ; preds = %17
  %23 = load i8***, i8**** %5, align 8
  %24 = load i8**, i8*** %23, align 8
  %25 = load i32, i32* %8, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i8*, i8** %24, i64 %26
  %28 = load i8*, i8** %27, align 8
  %29 = load i8**, i8*** %7, align 8
  %30 = load i32, i32* %8, align 4
  %31 = add nsw i32 1, %30
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i8*, i8** %29, i64 %32
  store i8* %28, i8** %33, align 8
  br label %34

34:                                               ; preds = %22
  %35 = load i32, i32* %8, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %8, align 4
  br label %17

37:                                               ; preds = %17
  %38 = load i8***, i8**** %5, align 8
  %39 = load i8**, i8*** %38, align 8
  %40 = call i32 @free(i8** %39)
  %41 = load i8**, i8*** %7, align 8
  %42 = load i8***, i8**** %5, align 8
  store i8** %41, i8*** %42, align 8
  %43 = load i32*, i32** %4, align 8
  %44 = load i32, i32* %43, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %43, align 4
  ret void
}

declare dso_local i8** @xreallocarray(i32*, i32, i32) #1

declare dso_local i8* @xstrdup(i8*) #1

declare dso_local i32 @free(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
