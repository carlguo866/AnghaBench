; ModuleID = '/home/carl/AnghaBench/freebsd/contrib/nvi/cl/extr_cl_funcs.c_addstr4.c'
source_filename = "/home/carl/AnghaBench/freebsd/contrib/nvi/cl/extr_cl_funcs.c_addstr4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stdscr = common dso_local global i32* null, align 8
@SC_SCR_EXWROTE = common dso_local global i32 0, align 4
@ERR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i64, i32)* @addstr4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @addstr4(i32* %0, i8* %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %15 = load i32*, i32** %6, align 8
  %16 = call i32* @CLP(i32* %15)
  store i32* %16, i32** %10, align 8
  %17 = load i32*, i32** %6, align 8
  %18 = call i32* @CLSP(i32* %17)
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %4
  %21 = load i32*, i32** %6, align 8
  %22 = call i32* @CLSP(i32* %21)
  br label %25

23:                                               ; preds = %4
  %24 = load i32*, i32** @stdscr, align 8
  br label %25

25:                                               ; preds = %23, %20
  %26 = phi i32* [ %22, %20 ], [ %24, %23 ]
  store i32* %26, i32** %11, align 8
  store i32 0, i32* %14, align 4
  %27 = load i32*, i32** %11, align 8
  %28 = load i64, i64* %12, align 8
  %29 = load i64, i64* %13, align 8
  %30 = call i32 @getyx(i32* %27, i64 %28, i64 %29)
  %31 = load i32*, i32** %6, align 8
  %32 = load i32, i32* @SC_SCR_EXWROTE, align 4
  %33 = call i32 @F_ISSET(i32* %31, i32 %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %49, label %35

35:                                               ; preds = %25
  %36 = load i64, i64* %12, align 8
  %37 = load i32*, i32** %6, align 8
  %38 = load i32*, i32** %6, align 8
  %39 = call i32 @LASTLINE(i32* %38)
  %40 = call i64 @RLNO(i32* %37, i32 %39)
  %41 = icmp eq i64 %36, %40
  br i1 %41, label %42, label %49

42:                                               ; preds = %35
  %43 = load i32*, i32** %6, align 8
  %44 = call i64 @IS_SPLIT(i32* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %42
  store i32 1, i32* %14, align 4
  %47 = load i32*, i32** %11, align 8
  %48 = call i32 @wstandout(i32* %47)
  br label %49

49:                                               ; preds = %46, %42, %35, %25
  %50 = load i32*, i32** %11, align 8
  %51 = load i8*, i8** %7, align 8
  %52 = load i64, i64* %8, align 8
  %53 = call i64 @waddnstr(i32* %50, i8* %51, i64 %52)
  %54 = load i64, i64* @ERR, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %49
  store i32 1, i32* %5, align 4
  br label %64

57:                                               ; preds = %49
  %58 = load i32, i32* %14, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %57
  %61 = load i32*, i32** %11, align 8
  %62 = call i32 @wstandend(i32* %61)
  br label %63

63:                                               ; preds = %60, %57
  store i32 0, i32* %5, align 4
  br label %64

64:                                               ; preds = %63, %56
  %65 = load i32, i32* %5, align 4
  ret i32 %65
}

declare dso_local i32* @CLP(i32*) #1

declare dso_local i32* @CLSP(i32*) #1

declare dso_local i32 @getyx(i32*, i64, i64) #1

declare dso_local i32 @F_ISSET(i32*, i32) #1

declare dso_local i64 @RLNO(i32*, i32) #1

declare dso_local i32 @LASTLINE(i32*) #1

declare dso_local i64 @IS_SPLIT(i32*) #1

declare dso_local i32 @wstandout(i32*) #1

declare dso_local i64 @waddnstr(i32*, i8*, i64) #1

declare dso_local i32 @wstandend(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
