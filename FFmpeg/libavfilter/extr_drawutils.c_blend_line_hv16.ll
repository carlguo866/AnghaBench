; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_drawutils.c_blend_line_hv16.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_drawutils.c_blend_line_hv16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32, i32, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32)* @blend_line_hv16 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @blend_line_hv16(i32* %0, i32 %1, i32 %2, i32 %3, i32* %4, i32 %5, i32 %6, i32 %7, i32 %8, i32 %9, i32 %10, i32 %11, i32 %12, i32 %13) #0 {
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  store i32* %0, i32** %15, align 8
  store i32 %1, i32* %16, align 4
  store i32 %2, i32* %17, align 4
  store i32 %3, i32* %18, align 4
  store i32* %4, i32** %19, align 8
  store i32 %5, i32* %20, align 4
  store i32 %6, i32* %21, align 4
  store i32 %7, i32* %22, align 4
  store i32 %8, i32* %23, align 4
  store i32 %9, i32* %24, align 4
  store i32 %10, i32* %25, align 4
  store i32 %11, i32* %26, align 4
  store i32 %12, i32* %27, align 4
  store i32 %13, i32* %28, align 4
  %30 = load i32, i32* %26, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %53

32:                                               ; preds = %14
  %33 = load i32*, i32** %15, align 8
  %34 = load i32, i32* %17, align 4
  %35 = load i32, i32* %18, align 4
  %36 = load i32*, i32** %19, align 8
  %37 = load i32, i32* %20, align 4
  %38 = load i32, i32* %21, align 4
  %39 = load i32, i32* %26, align 4
  %40 = load i32, i32* %28, align 4
  %41 = load i32, i32* %23, align 4
  %42 = load i32, i32* %24, align 4
  %43 = add i32 %41, %42
  %44 = load i32, i32* %25, align 4
  %45 = call i32 @blend_pixel16(i32* %33, i32 %34, i32 %35, i32* %36, i32 %37, i32 %38, i32 %39, i32 %40, i32 %43, i32 %44)
  %46 = load i32, i32* %16, align 4
  %47 = load i32*, i32** %15, align 8
  %48 = sext i32 %46 to i64
  %49 = getelementptr inbounds i32, i32* %47, i64 %48
  store i32* %49, i32** %15, align 8
  %50 = load i32, i32* %26, align 4
  %51 = load i32, i32* %25, align 4
  %52 = add nsw i32 %51, %50
  store i32 %52, i32* %25, align 4
  br label %53

53:                                               ; preds = %32, %14
  store i32 0, i32* %29, align 4
  br label %54

54:                                               ; preds = %81, %53
  %55 = load i32, i32* %29, align 4
  %56 = load i32, i32* %22, align 4
  %57 = icmp slt i32 %55, %56
  br i1 %57, label %58, label %84

58:                                               ; preds = %54
  %59 = load i32*, i32** %15, align 8
  %60 = load i32, i32* %17, align 4
  %61 = load i32, i32* %18, align 4
  %62 = load i32*, i32** %19, align 8
  %63 = load i32, i32* %20, align 4
  %64 = load i32, i32* %21, align 4
  %65 = load i32, i32* %23, align 4
  %66 = shl i32 1, %65
  %67 = load i32, i32* %28, align 4
  %68 = load i32, i32* %23, align 4
  %69 = load i32, i32* %24, align 4
  %70 = add i32 %68, %69
  %71 = load i32, i32* %25, align 4
  %72 = call i32 @blend_pixel16(i32* %59, i32 %60, i32 %61, i32* %62, i32 %63, i32 %64, i32 %66, i32 %67, i32 %70, i32 %71)
  %73 = load i32, i32* %16, align 4
  %74 = load i32*, i32** %15, align 8
  %75 = sext i32 %73 to i64
  %76 = getelementptr inbounds i32, i32* %74, i64 %75
  store i32* %76, i32** %15, align 8
  %77 = load i32, i32* %23, align 4
  %78 = shl i32 1, %77
  %79 = load i32, i32* %25, align 4
  %80 = add nsw i32 %79, %78
  store i32 %80, i32* %25, align 4
  br label %81

81:                                               ; preds = %58
  %82 = load i32, i32* %29, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %29, align 4
  br label %54

84:                                               ; preds = %54
  %85 = load i32, i32* %27, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %101

87:                                               ; preds = %84
  %88 = load i32*, i32** %15, align 8
  %89 = load i32, i32* %17, align 4
  %90 = load i32, i32* %18, align 4
  %91 = load i32*, i32** %19, align 8
  %92 = load i32, i32* %20, align 4
  %93 = load i32, i32* %21, align 4
  %94 = load i32, i32* %27, align 4
  %95 = load i32, i32* %28, align 4
  %96 = load i32, i32* %23, align 4
  %97 = load i32, i32* %24, align 4
  %98 = add i32 %96, %97
  %99 = load i32, i32* %25, align 4
  %100 = call i32 @blend_pixel16(i32* %88, i32 %89, i32 %90, i32* %91, i32 %92, i32 %93, i32 %94, i32 %95, i32 %98, i32 %99)
  br label %101

101:                                              ; preds = %87, %84
  ret void
}

declare dso_local i32 @blend_pixel16(i32*, i32, i32, i32*, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
