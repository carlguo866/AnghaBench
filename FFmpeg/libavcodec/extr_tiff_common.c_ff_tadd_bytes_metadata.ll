; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_tiff_common.c_ff_tadd_bytes_metadata.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_tiff_common.c_ff_tadd_bytes_metadata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@INT_MAX = common dso_local global i32 0, align 4
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@AV_BPRINT_SIZE_UNLIMITED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%s%3i\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@AV_DICT_DONT_STRDUP_VAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ff_tadd_bytes_metadata(i32 %0, i8* %1, i8* %2, i32* %3, i32 %4, i32 %5, i32** %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32**, align 8
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i32 %0, i32* %9, align 4
  store i8* %1, i8** %10, align 8
  store i8* %2, i8** %11, align 8
  store i32* %3, i32** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32** %6, i32*** %15, align 8
  %20 = load i32, i32* %9, align 4
  %21 = sext i32 %20 to i64
  %22 = load i32, i32* @INT_MAX, align 4
  %23 = sext i32 %22 to i64
  %24 = udiv i64 %23, 4
  %25 = icmp uge i64 %21, %24
  br i1 %25, label %29, label %26

26:                                               ; preds = %7
  %27 = load i32, i32* %9, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %26, %7
  %30 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %30, i32* %8, align 4
  br label %87

31:                                               ; preds = %26
  %32 = load i32*, i32** %12, align 8
  %33 = call i32 @bytestream2_get_bytes_left(i32* %32)
  %34 = sext i32 %33 to i64
  %35 = load i32, i32* %9, align 4
  %36 = sext i32 %35 to i64
  %37 = mul i64 %36, 4
  %38 = icmp ult i64 %34, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %31
  %40 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %40, i32* %8, align 4
  br label %87

41:                                               ; preds = %31
  %42 = load i32, i32* %9, align 4
  %43 = mul nsw i32 10, %42
  %44 = load i32, i32* @AV_BPRINT_SIZE_UNLIMITED, align 4
  %45 = call i32 @av_bprint_init(i32* %16, i32 %43, i32 %44)
  store i32 0, i32* %18, align 4
  br label %46

46:                                               ; preds = %67, %41
  %47 = load i32, i32* %18, align 4
  %48 = load i32, i32* %9, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %70

50:                                               ; preds = %46
  %51 = load i32, i32* %14, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %50
  %54 = load i32*, i32** %12, align 8
  %55 = call i32 @bytestream2_get_byte(i32* %54)
  br label %59

56:                                               ; preds = %50
  %57 = load i32*, i32** %12, align 8
  %58 = call i32 @bytestream2_get_byte(i32* %57)
  br label %59

59:                                               ; preds = %56, %53
  %60 = phi i32 [ %55, %53 ], [ %58, %56 ]
  store i32 %60, i32* %19, align 4
  %61 = load i32, i32* %9, align 4
  %62 = load i8*, i8** %11, align 8
  %63 = load i32, i32* %18, align 4
  %64 = call i32 @auto_sep(i32 %61, i8* %62, i32 %63, i32 16)
  %65 = load i32, i32* %19, align 4
  %66 = call i32 @av_bprintf(i32* %16, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %64, i32 %65)
  br label %67

67:                                               ; preds = %59
  %68 = load i32, i32* %18, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %18, align 4
  br label %46

70:                                               ; preds = %46
  %71 = call i32 @av_bprint_finalize(i32* %16, i8** %17)
  store i32 %71, i32* %18, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %70
  %74 = load i32, i32* %18, align 4
  store i32 %74, i32* %8, align 4
  br label %87

75:                                               ; preds = %70
  %76 = load i8*, i8** %17, align 8
  %77 = icmp ne i8* %76, null
  br i1 %77, label %81, label %78

78:                                               ; preds = %75
  %79 = load i32, i32* @ENOMEM, align 4
  %80 = call i32 @AVERROR(i32 %79)
  store i32 %80, i32* %8, align 4
  br label %87

81:                                               ; preds = %75
  %82 = load i32**, i32*** %15, align 8
  %83 = load i8*, i8** %10, align 8
  %84 = load i8*, i8** %17, align 8
  %85 = load i32, i32* @AV_DICT_DONT_STRDUP_VAL, align 4
  %86 = call i32 @av_dict_set(i32** %82, i8* %83, i8* %84, i32 %85)
  store i32 0, i32* %8, align 4
  br label %87

87:                                               ; preds = %81, %78, %73, %39, %29
  %88 = load i32, i32* %8, align 4
  ret i32 %88
}

declare dso_local i32 @bytestream2_get_bytes_left(i32*) #1

declare dso_local i32 @av_bprint_init(i32*, i32, i32) #1

declare dso_local i32 @bytestream2_get_byte(i32*) #1

declare dso_local i32 @av_bprintf(i32*, i8*, i32, i32) #1

declare dso_local i32 @auto_sep(i32, i8*, i32, i32) #1

declare dso_local i32 @av_bprint_finalize(i32*, i8**) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @av_dict_set(i32**, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
