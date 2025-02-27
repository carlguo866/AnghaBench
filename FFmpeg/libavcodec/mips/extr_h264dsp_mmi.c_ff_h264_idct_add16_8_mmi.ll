; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_h264dsp_mmi.c_ff_h264_idct_add16_8_mmi.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/mips/extr_h264dsp_mmi.c_ff_h264_idct_add16_8_mmi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@scan8 = common dso_local global i64* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ff_h264_idct_add16_8_mmi(i32* %0, i32* %1, i64* %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i32* %1, i32** %7, align 8
  store i64* %2, i64** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32* %4, i32** %10, align 8
  store i32 0, i32* %11, align 4
  br label %13

13:                                               ; preds = %72, %5
  %14 = load i32, i32* %11, align 4
  %15 = icmp slt i32 %14, 16
  br i1 %15, label %16, label %75

16:                                               ; preds = %13
  %17 = load i32*, i32** %10, align 8
  %18 = load i64*, i64** @scan8, align 8
  %19 = load i32, i32* %11, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i64, i64* %18, i64 %20
  %22 = load i64, i64* %21, align 8
  %23 = getelementptr inbounds i32, i32* %17, i64 %22
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %12, align 4
  %25 = load i32, i32* %12, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %71

27:                                               ; preds = %16
  %28 = load i32, i32* %12, align 4
  %29 = icmp eq i32 %28, 1
  br i1 %29, label %30, label %54

30:                                               ; preds = %27
  %31 = load i64*, i64** %8, align 8
  %32 = load i32, i32* %11, align 4
  %33 = mul nsw i32 %32, 16
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i64, i64* %31, i64 %34
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %54

38:                                               ; preds = %30
  %39 = load i32*, i32** %6, align 8
  %40 = load i32*, i32** %7, align 8
  %41 = load i32, i32* %11, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %39, i64 %45
  %47 = load i64*, i64** %8, align 8
  %48 = load i32, i32* %11, align 4
  %49 = mul nsw i32 %48, 16
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i64, i64* %47, i64 %50
  %52 = load i32, i32* %9, align 4
  %53 = call i32 @ff_h264_idct_dc_add_8_mmi(i32* %46, i64* %51, i32 %52)
  br label %70

54:                                               ; preds = %30, %27
  %55 = load i32*, i32** %6, align 8
  %56 = load i32*, i32** %7, align 8
  %57 = load i32, i32* %11, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %55, i64 %61
  %63 = load i64*, i64** %8, align 8
  %64 = load i32, i32* %11, align 4
  %65 = mul nsw i32 %64, 16
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i64, i64* %63, i64 %66
  %68 = load i32, i32* %9, align 4
  %69 = call i32 @ff_h264_idct_add_8_mmi(i32* %62, i64* %67, i32 %68)
  br label %70

70:                                               ; preds = %54, %38
  br label %71

71:                                               ; preds = %70, %16
  br label %72

72:                                               ; preds = %71
  %73 = load i32, i32* %11, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %11, align 4
  br label %13

75:                                               ; preds = %13
  ret void
}

declare dso_local i32 @ff_h264_idct_dc_add_8_mmi(i32*, i64*, i32) #1

declare dso_local i32 @ff_h264_idct_add_8_mmi(i32*, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
