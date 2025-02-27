; ModuleID = '/home/carl/AnghaBench/obs-studio/plugins/win-capture/extr_window-helpers.c_next_window.c'
source_filename = "/home/carl/AnghaBench/obs-studio/plugins/win-capture/extr_window-helpers.c_next_window.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GW_HWNDNEXT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, i32, i32**, i32)* @next_window to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @next_window(i32* %0, i32 %1, i32** %2, i32 %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  store i32* %0, i32** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32** %2, i32*** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load i32**, i32*** %8, align 8
  %12 = load i32*, i32** %11, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %14, label %18

14:                                               ; preds = %4
  %15 = load i32**, i32*** %8, align 8
  %16 = load i32*, i32** %15, align 8
  store i32* %16, i32** %6, align 8
  %17 = load i32**, i32*** %8, align 8
  store i32* null, i32** %17, align 8
  br label %18

18:                                               ; preds = %14, %4
  br label %19

19:                                               ; preds = %18, %39
  %20 = load i32, i32* %9, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %19
  %23 = call i32 (...) @GetDesktopWindow()
  %24 = load i32*, i32** %6, align 8
  %25 = call i32* @FindWindowEx(i32 %23, i32* %24, i32* null, i32* null)
  store i32* %25, i32** %6, align 8
  br label %30

26:                                               ; preds = %19
  %27 = load i32*, i32** %6, align 8
  %28 = load i32, i32* @GW_HWNDNEXT, align 4
  %29 = call i32* @GetNextWindow(i32* %27, i32 %28)
  store i32* %29, i32** %6, align 8
  br label %30

30:                                               ; preds = %26, %22
  %31 = load i32*, i32** %6, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %33, label %38

33:                                               ; preds = %30
  %34 = load i32*, i32** %6, align 8
  %35 = load i32, i32* %7, align 4
  %36 = call i64 @check_window_valid(i32* %34, i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %33, %30
  br label %40

39:                                               ; preds = %33
  br label %19

40:                                               ; preds = %38
  %41 = load i32*, i32** %6, align 8
  %42 = call i64 @is_uwp_window(i32* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %54

44:                                               ; preds = %40
  %45 = load i32*, i32** %6, align 8
  %46 = call i32* @get_uwp_actual_window(i32* %45)
  store i32* %46, i32** %10, align 8
  %47 = load i32*, i32** %10, align 8
  %48 = icmp ne i32* %47, null
  br i1 %48, label %49, label %53

49:                                               ; preds = %44
  %50 = load i32*, i32** %6, align 8
  %51 = load i32**, i32*** %8, align 8
  store i32* %50, i32** %51, align 8
  %52 = load i32*, i32** %10, align 8
  store i32* %52, i32** %5, align 8
  br label %56

53:                                               ; preds = %44
  br label %54

54:                                               ; preds = %53, %40
  %55 = load i32*, i32** %6, align 8
  store i32* %55, i32** %5, align 8
  br label %56

56:                                               ; preds = %54, %49
  %57 = load i32*, i32** %5, align 8
  ret i32* %57
}

declare dso_local i32* @FindWindowEx(i32, i32*, i32*, i32*) #1

declare dso_local i32 @GetDesktopWindow(...) #1

declare dso_local i32* @GetNextWindow(i32*, i32) #1

declare dso_local i64 @check_window_valid(i32*, i32) #1

declare dso_local i64 @is_uwp_window(i32*) #1

declare dso_local i32* @get_uwp_actual_window(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
