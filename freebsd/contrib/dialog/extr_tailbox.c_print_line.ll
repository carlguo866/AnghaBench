; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/dialog/extr_tailbox.c_print_line.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/dialog/extr_tailbox.c_print_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32, i32)* @print_line to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_line(i32* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = load i32*, i32** %5, align 8
  %14 = call i8* @get_line(i32* %13)
  store i8* %14, i8** %12, align 8
  %15 = load i32*, i32** %6, align 8
  %16 = load i32, i32* %7, align 4
  %17 = call i32 @wmove(i32* %15, i32 %16, i32 0)
  %18 = load i32*, i32** %6, align 8
  %19 = call i32 @waddch(i32* %18, i8 signext 32)
  %20 = load i32*, i32** %6, align 8
  %21 = load i8*, i8** %12, align 8
  %22 = load i8*, i8** %12, align 8
  %23 = call i64 @strlen(i8* %22)
  %24 = trunc i64 %23 to i32
  %25 = load i32, i32* %8, align 4
  %26 = sub nsw i32 %25, 2
  %27 = call i32 @MIN(i32 %24, i32 %26)
  %28 = call i32 @waddnstr(i32* %20, i8* %21, i32 %27)
  %29 = load i32*, i32** %6, align 8
  %30 = load i32, i32* %10, align 4
  %31 = load i32, i32* %11, align 4
  %32 = call i32 @getyx(i32* %29, i32 %30, i32 %31)
  %33 = load i32, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %34

34:                                               ; preds = %43, %4
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* %11, align 4
  %38 = sub nsw i32 %36, %37
  %39 = icmp slt i32 %35, %38
  br i1 %39, label %40, label %46

40:                                               ; preds = %34
  %41 = load i32*, i32** %6, align 8
  %42 = call i32 @waddch(i32* %41, i8 signext 32)
  br label %43

43:                                               ; preds = %40
  %44 = load i32, i32* %9, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %9, align 4
  br label %34

46:                                               ; preds = %34
  ret void
}

declare dso_local i8* @get_line(i32*) #1

declare dso_local i32 @wmove(i32*, i32, i32) #1

declare dso_local i32 @waddch(i32*, i8 signext) #1

declare dso_local i32 @waddnstr(i32*, i8*, i32) #1

declare dso_local i32 @MIN(i32, i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @getyx(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
