; ModuleID = '/home/carl/AnghaBench/reactos/dll/win32/comdlg32/extr_printdlg.c_get_printer_infoW.c'
source_filename = "/home/carl/AnghaBench/reactos/dll/win32/comdlg32/extr_printdlg.c_get_printer_infoW.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ERROR_INSUFFICIENT_BUFFER = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [28 x i8] c"GetPrinterW failed with %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32)* @get_printer_infoW to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @get_printer_infoW(i32 %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i32* null, i32** %4, align 8
  store i64 0, i64* %5, align 8
  %7 = load i32, i32* %3, align 4
  %8 = call i64 @GetPrinterW(i32 %7, i32 2, i32* null, i64 0, i64* %5)
  store i64 %8, i64* %6, align 8
  %9 = load i64, i64* %6, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %23, label %11

11:                                               ; preds = %1
  %12 = call i64 (...) @GetLastError()
  %13 = load i64, i64* @ERROR_INSUFFICIENT_BUFFER, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %23

15:                                               ; preds = %11
  %16 = call i32 (...) @GetProcessHeap()
  %17 = load i64, i64* %5, align 8
  %18 = call i32* @HeapAlloc(i32 %16, i32 0, i64 %17)
  store i32* %18, i32** %4, align 8
  %19 = load i32, i32* %3, align 4
  %20 = load i32*, i32** %4, align 8
  %21 = load i64, i64* %5, align 8
  %22 = call i64 @GetPrinterW(i32 %19, i32 2, i32* %20, i64 %21, i64* %5)
  store i64 %22, i64* %6, align 8
  br label %23

23:                                               ; preds = %15, %11, %1
  %24 = load i64, i64* %6, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %23
  %27 = load i32*, i32** %4, align 8
  store i32* %27, i32** %2, align 8
  br label %34

28:                                               ; preds = %23
  %29 = call i64 (...) @GetLastError()
  %30 = call i32 @TRACE(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i64 %29)
  %31 = call i32 (...) @GetProcessHeap()
  %32 = load i32*, i32** %4, align 8
  %33 = call i32 @HeapFree(i32 %31, i32 0, i32* %32)
  store i32* null, i32** %2, align 8
  br label %34

34:                                               ; preds = %28, %26
  %35 = load i32*, i32** %2, align 8
  ret i32* %35
}

declare dso_local i64 @GetPrinterW(i32, i32, i32*, i64, i64*) #1

declare dso_local i64 @GetLastError(...) #1

declare dso_local i32* @HeapAlloc(i32, i32, i64) #1

declare dso_local i32 @GetProcessHeap(...) #1

declare dso_local i32 @TRACE(i8*, i64) #1

declare dso_local i32 @HeapFree(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
