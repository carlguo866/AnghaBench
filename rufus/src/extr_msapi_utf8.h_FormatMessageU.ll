; ModuleID = '/home/carl/AnghaBench/rufus/src/extr_msapi_utf8.h_FormatMessageU.c'
source_filename = "/home/carl/AnghaBench/rufus/src/extr_msapi_utf8.h_FormatMessageU.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ERROR_INVALID_DATA = common dso_local global i64 0, align 8
@wlpBuffer = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i32, i64, i64, i8*, i64, i32*)* @FormatMessageU to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @FormatMessageU(i64 %0, i32 %1, i64 %2, i64 %3, i8* %4, i64 %5, i32* %6) #0 {
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store i64 %0, i64* %8, align 8
  store i32 %1, i32* %9, align 4
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i8* %4, i8** %12, align 8
  store i64 %5, i64* %13, align 8
  store i32* %6, i32** %14, align 8
  store i64 0, i64* %15, align 8
  %17 = load i64, i64* @ERROR_INVALID_DATA, align 8
  store i64 %17, i64* %16, align 8
  %18 = load i8*, i8** %12, align 8
  %19 = load i64, i64* %13, align 8
  %20 = call i32 @walloc(i8* %18, i64 %19)
  %21 = load i64, i64* %8, align 8
  %22 = load i32, i32* %9, align 4
  %23 = load i64, i64* %10, align 8
  %24 = load i64, i64* %11, align 8
  %25 = load i32, i32* @wlpBuffer, align 4
  %26 = load i64, i64* %13, align 8
  %27 = load i32*, i32** %14, align 8
  %28 = call i64 @FormatMessageW(i64 %21, i32 %22, i64 %23, i64 %24, i32 %25, i64 %26, i32* %27)
  store i64 %28, i64* %15, align 8
  %29 = call i64 (...) @GetLastError()
  store i64 %29, i64* %16, align 8
  %30 = load i64, i64* %15, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %40

32:                                               ; preds = %7
  %33 = load i32, i32* @wlpBuffer, align 4
  %34 = load i8*, i8** %12, align 8
  %35 = load i64, i64* %13, align 8
  %36 = call i64 @wchar_to_utf8_no_alloc(i32 %33, i8* %34, i64 %35)
  store i64 %36, i64* %15, align 8
  %37 = icmp eq i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %32
  %39 = call i64 (...) @GetLastError()
  store i64 %39, i64* %16, align 8
  store i64 0, i64* %15, align 8
  br label %40

40:                                               ; preds = %38, %32, %7
  %41 = load i8*, i8** %12, align 8
  %42 = call i32 @wfree(i8* %41)
  %43 = load i64, i64* %16, align 8
  %44 = call i32 @SetLastError(i64 %43)
  %45 = load i64, i64* %15, align 8
  ret i64 %45
}

declare dso_local i32 @walloc(i8*, i64) #1

declare dso_local i64 @FormatMessageW(i64, i32, i64, i64, i32, i64, i32*) #1

declare dso_local i64 @GetLastError(...) #1

declare dso_local i64 @wchar_to_utf8_no_alloc(i32, i8*, i64) #1

declare dso_local i32 @wfree(i8*) #1

declare dso_local i32 @SetLastError(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
