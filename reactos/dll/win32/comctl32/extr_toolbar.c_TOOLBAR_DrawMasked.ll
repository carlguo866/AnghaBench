; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_toolbar.c_TOOLBAR_DrawMasked.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comctl32/extr_toolbar.c_TOOLBAR_DrawMasked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ILD_MASK = common dso_local global i32 0, align 4
@NOTSRCERASE = common dso_local global i32 0, align 4
@COLOR_3DHILIGHT = common dso_local global i32 0, align 4
@COLOR_3DSHADOW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, i64, i64, i32)* @TOOLBAR_DrawMasked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @TOOLBAR_DrawMasked(i32 %0, i32 %1, i32 %2, i64 %3, i64 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  store i32 %5, i32* %12, align 4
  %19 = load i32, i32* %7, align 4
  %20 = call i32 @ImageList_GetIconSize(i32 %19, i64* %13, i64* %14)
  %21 = load i32, i32* %9, align 4
  %22 = call i32 @CreateCompatibleDC(i32 %21)
  store i32 %22, i32* %18, align 4
  %23 = load i32, i32* %9, align 4
  %24 = load i64, i64* %13, align 8
  %25 = load i64, i64* %14, align 8
  %26 = call i32 @CreateCompatibleBitmap(i32 %23, i64 %24, i64 %25)
  store i32 %26, i32* %16, align 4
  %27 = load i32, i32* %18, align 4
  %28 = load i32, i32* %16, align 4
  %29 = call i32 @SelectObject(i32 %27, i32 %28)
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* %18, align 4
  %33 = load i64, i64* %13, align 8
  %34 = load i64, i64* %14, align 8
  %35 = call i32 @RGB(i32 255, i32 255, i32 255)
  %36 = call i32 @RGB(i32 0, i32 0, i32 0)
  %37 = load i32, i32* %12, align 4
  %38 = call i32 @ImageList_DrawEx(i32 %30, i32 %31, i32 %32, i32 0, i32 0, i64 %33, i64 %34, i32 %35, i32 %36, i32 %37)
  %39 = call i32 @CreateCompatibleDC(i32 0)
  store i32 %39, i32* %17, align 4
  %40 = load i64, i64* %13, align 8
  %41 = load i64, i64* %14, align 8
  %42 = call i32 @CreateBitmap(i64 %40, i64 %41, i32 1, i32 1, i32* null)
  store i32 %42, i32* %15, align 4
  %43 = load i32, i32* %17, align 4
  %44 = load i32, i32* %15, align 4
  %45 = call i32 @SelectObject(i32 %43, i32 %44)
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* %17, align 4
  %49 = load i64, i64* %13, align 8
  %50 = load i64, i64* %14, align 8
  %51 = call i32 @RGB(i32 255, i32 255, i32 255)
  %52 = call i32 @RGB(i32 0, i32 0, i32 0)
  %53 = load i32, i32* @ILD_MASK, align 4
  %54 = call i32 @ImageList_DrawEx(i32 %46, i32 %47, i32 %48, i32 0, i32 0, i64 %49, i64 %50, i32 %51, i32 %52, i32 %53)
  %55 = load i32, i32* %18, align 4
  %56 = call i32 @RGB(i32 255, i32 255, i32 255)
  %57 = call i32 @SetBkColor(i32 %55, i32 %56)
  %58 = load i32, i32* %17, align 4
  %59 = load i64, i64* %13, align 8
  %60 = load i64, i64* %14, align 8
  %61 = load i32, i32* %18, align 4
  %62 = load i32, i32* @NOTSRCERASE, align 4
  %63 = call i32 @BitBlt(i32 %58, i64 0, i64 0, i64 %59, i64 %60, i32 %61, i32 0, i32 0, i32 %62)
  %64 = load i32, i32* %9, align 4
  %65 = call i32 @RGB(i32 255, i32 255, i32 255)
  %66 = call i32 @SetBkColor(i32 %64, i32 %65)
  %67 = load i32, i32* %9, align 4
  %68 = load i32, i32* @COLOR_3DHILIGHT, align 4
  %69 = call i32 @GetSysColorBrush(i32 %68)
  %70 = call i32 @SelectObject(i32 %67, i32 %69)
  %71 = load i32, i32* %9, align 4
  %72 = load i64, i64* %10, align 8
  %73 = add nsw i64 %72, 1
  %74 = load i64, i64* %11, align 8
  %75 = add nsw i64 %74, 1
  %76 = load i64, i64* %13, align 8
  %77 = load i64, i64* %14, align 8
  %78 = load i32, i32* %17, align 4
  %79 = call i32 @BitBlt(i32 %71, i64 %73, i64 %75, i64 %76, i64 %77, i32 %78, i32 0, i32 0, i32 14812998)
  %80 = load i32, i32* %9, align 4
  %81 = load i32, i32* @COLOR_3DSHADOW, align 4
  %82 = call i32 @GetSysColorBrush(i32 %81)
  %83 = call i32 @SelectObject(i32 %80, i32 %82)
  %84 = load i32, i32* %9, align 4
  %85 = load i64, i64* %10, align 8
  %86 = load i64, i64* %11, align 8
  %87 = load i64, i64* %13, align 8
  %88 = load i64, i64* %14, align 8
  %89 = load i32, i32* %17, align 4
  %90 = call i32 @BitBlt(i32 %84, i64 %85, i64 %86, i64 %87, i64 %88, i32 %89, i32 0, i32 0, i32 14812998)
  %91 = load i32, i32* %16, align 4
  %92 = call i32 @DeleteObject(i32 %91)
  %93 = load i32, i32* %18, align 4
  %94 = call i32 @DeleteDC(i32 %93)
  %95 = load i32, i32* %15, align 4
  %96 = call i32 @DeleteObject(i32 %95)
  %97 = load i32, i32* %17, align 4
  %98 = call i32 @DeleteDC(i32 %97)
  ret void
}

declare dso_local i32 @ImageList_GetIconSize(i32, i64*, i64*) #1

declare dso_local i32 @CreateCompatibleDC(i32) #1

declare dso_local i32 @CreateCompatibleBitmap(i32, i64, i64) #1

declare dso_local i32 @SelectObject(i32, i32) #1

declare dso_local i32 @ImageList_DrawEx(i32, i32, i32, i32, i32, i64, i64, i32, i32, i32) #1

declare dso_local i32 @RGB(i32, i32, i32) #1

declare dso_local i32 @CreateBitmap(i64, i64, i32, i32, i32*) #1

declare dso_local i32 @SetBkColor(i32, i32) #1

declare dso_local i32 @BitBlt(i32, i64, i64, i64, i64, i32, i32, i32, i32) #1

declare dso_local i32 @GetSysColorBrush(i32) #1

declare dso_local i32 @DeleteObject(i32) #1

declare dso_local i32 @DeleteDC(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
