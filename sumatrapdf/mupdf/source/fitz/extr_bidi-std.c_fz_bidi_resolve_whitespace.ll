; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_bidi-std.c_fz_bidi_resolve_whitespace.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/fitz/extr_bidi-std.c_fz_bidi_resolve_whitespace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fz_bidi_resolve_whitespace(i32 %0, i32* %1, i32* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i64 %3, i64* %8, align 8
  store i64 0, i64* %9, align 8
  %12 = load i32, i32* %5, align 4
  store i32 %12, i32* %10, align 4
  store i64 0, i64* %11, align 8
  br label %13

13:                                               ; preds = %48, %4
  %14 = load i64, i64* %11, align 8
  %15 = load i64, i64* %8, align 8
  %16 = icmp ult i64 %14, %15
  br i1 %16, label %17, label %51

17:                                               ; preds = %13
  %18 = load i32*, i32** %6, align 8
  %19 = load i64, i64* %11, align 8
  %20 = getelementptr inbounds i32, i32* %18, i64 %19
  %21 = load i32, i32* %20, align 4
  switch i32 %21, label %22 [
    i32 128, label %23
    i32 131, label %26
    i32 134, label %26
    i32 133, label %26
    i32 130, label %26
    i32 132, label %26
    i32 135, label %26
    i32 129, label %33
    i32 136, label %33
  ]

22:                                               ; preds = %17
  store i64 0, i64* %9, align 8
  br label %43

23:                                               ; preds = %17
  %24 = load i64, i64* %9, align 8
  %25 = add i64 %24, 1
  store i64 %25, i64* %9, align 8
  br label %43

26:                                               ; preds = %17, %17, %17, %17, %17, %17
  %27 = load i32, i32* %10, align 4
  %28 = load i32*, i32** %7, align 8
  %29 = load i64, i64* %11, align 8
  %30 = getelementptr inbounds i32, i32* %28, i64 %29
  store i32 %27, i32* %30, align 4
  %31 = load i64, i64* %9, align 8
  %32 = add i64 %31, 1
  store i64 %32, i64* %9, align 8
  br label %43

33:                                               ; preds = %17, %17
  %34 = load i32*, i32** %7, align 8
  %35 = load i64, i64* %9, align 8
  %36 = load i64, i64* %11, align 8
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @set_deferred_level_run(i32* %34, i64 %35, i64 %36, i32 %37)
  store i64 0, i64* %9, align 8
  %39 = load i32, i32* %5, align 4
  %40 = load i32*, i32** %7, align 8
  %41 = load i64, i64* %11, align 8
  %42 = getelementptr inbounds i32, i32* %40, i64 %41
  store i32 %39, i32* %42, align 4
  br label %43

43:                                               ; preds = %33, %26, %23, %22
  %44 = load i32*, i32** %7, align 8
  %45 = load i64, i64* %11, align 8
  %46 = getelementptr inbounds i32, i32* %44, i64 %45
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %10, align 4
  br label %48

48:                                               ; preds = %43
  %49 = load i64, i64* %11, align 8
  %50 = add i64 %49, 1
  store i64 %50, i64* %11, align 8
  br label %13

51:                                               ; preds = %13
  %52 = load i32*, i32** %7, align 8
  %53 = load i64, i64* %9, align 8
  %54 = load i64, i64* %11, align 8
  %55 = load i32, i32* %5, align 4
  %56 = call i32 @set_deferred_level_run(i32* %52, i64 %53, i64 %54, i32 %55)
  ret void
}

declare dso_local i32 @set_deferred_level_run(i32*, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
