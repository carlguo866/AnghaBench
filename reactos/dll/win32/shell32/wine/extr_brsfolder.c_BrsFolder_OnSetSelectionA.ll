; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/shell32/wine/extr_brsfolder.c_BrsFolder_OnSetSelectionA.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/shell32/wine/extr_brsfolder.c_BrsFolder_OnSetSelectionA.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4
@CP_ACP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32)* @BrsFolder_OnSetSelectionA to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @BrsFolder_OnSetSelectionA(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32* null, i32** %8, align 8
  %11 = load i32, i32* @FALSE, align 4
  store i32 %11, i32* %9, align 4
  %12 = load i32, i32* %7, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %19, label %14

14:                                               ; preds = %3
  %15 = load i32*, i32** %5, align 8
  %16 = load i32*, i32** %6, align 8
  %17 = load i32, i32* %7, align 4
  %18 = call i32 @BrsFolder_OnSetSelectionW(i32* %15, i32* %16, i32 %17)
  store i32 %18, i32* %4, align 4
  br label %49

19:                                               ; preds = %3
  %20 = load i32, i32* @CP_ACP, align 4
  %21 = load i32*, i32** %6, align 8
  %22 = call i32 @MultiByteToWideChar(i32 %20, i32 0, i32* %21, i32 -1, i32* null, i32 0)
  store i32 %22, i32* %10, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %44

24:                                               ; preds = %19
  %25 = call i32 (...) @GetProcessHeap()
  %26 = load i32, i32* %10, align 4
  %27 = sext i32 %26 to i64
  %28 = mul i64 %27, 4
  %29 = trunc i64 %28 to i32
  %30 = call i32* @HeapAlloc(i32 %25, i32 0, i32 %29)
  store i32* %30, i32** %8, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %32, label %44

32:                                               ; preds = %24
  %33 = load i32, i32* @CP_ACP, align 4
  %34 = load i32*, i32** %6, align 8
  %35 = load i32*, i32** %8, align 8
  %36 = load i32, i32* %10, align 4
  %37 = call i32 @MultiByteToWideChar(i32 %33, i32 0, i32* %34, i32 -1, i32* %35, i32 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %32
  %40 = load i32*, i32** %5, align 8
  %41 = load i32*, i32** %8, align 8
  %42 = load i32, i32* %7, align 4
  %43 = call i32 @BrsFolder_OnSetSelectionW(i32* %40, i32* %41, i32 %42)
  store i32 %43, i32* %9, align 4
  br label %44

44:                                               ; preds = %39, %32, %24, %19
  %45 = call i32 (...) @GetProcessHeap()
  %46 = load i32*, i32** %8, align 8
  %47 = call i32 @HeapFree(i32 %45, i32 0, i32* %46)
  %48 = load i32, i32* %9, align 4
  store i32 %48, i32* %4, align 4
  br label %49

49:                                               ; preds = %44, %14
  %50 = load i32, i32* %4, align 4
  ret i32 %50
}

declare dso_local i32 @BrsFolder_OnSetSelectionW(i32*, i32*, i32) #1

declare dso_local i32 @MultiByteToWideChar(i32, i32, i32*, i32, i32*, i32) #1

declare dso_local i32* @HeapAlloc(i32, i32, i32) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @HeapFree(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
