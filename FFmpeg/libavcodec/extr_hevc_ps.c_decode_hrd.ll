; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_hevc_ps.c_decode_hrd.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_hevc_ps.c_decode_hrd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"nb_cpb %d invalid\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32, i32)* @decode_hrd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_hrd(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %59

17:                                               ; preds = %3
  %18 = load i32*, i32** %5, align 8
  %19 = call i32 @get_bits1(i32* %18)
  store i32 %19, i32* %8, align 4
  %20 = load i32*, i32** %5, align 8
  %21 = call i32 @get_bits1(i32* %20)
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %8, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %17
  %25 = load i32, i32* %9, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %58

27:                                               ; preds = %24, %17
  %28 = load i32*, i32** %5, align 8
  %29 = call i32 @get_bits1(i32* %28)
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* %10, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %41

32:                                               ; preds = %27
  %33 = load i32*, i32** %5, align 8
  %34 = call i32 @skip_bits(i32* %33, i32 8)
  %35 = load i32*, i32** %5, align 8
  %36 = call i32 @skip_bits(i32* %35, i32 5)
  %37 = load i32*, i32** %5, align 8
  %38 = call i32 @skip_bits(i32* %37, i32 1)
  %39 = load i32*, i32** %5, align 8
  %40 = call i32 @skip_bits(i32* %39, i32 5)
  br label %41

41:                                               ; preds = %32, %27
  %42 = load i32*, i32** %5, align 8
  %43 = call i32 @skip_bits(i32* %42, i32 4)
  %44 = load i32*, i32** %5, align 8
  %45 = call i32 @skip_bits(i32* %44, i32 4)
  %46 = load i32, i32* %10, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %41
  %49 = load i32*, i32** %5, align 8
  %50 = call i32 @skip_bits(i32* %49, i32 4)
  br label %51

51:                                               ; preds = %48, %41
  %52 = load i32*, i32** %5, align 8
  %53 = call i32 @skip_bits(i32* %52, i32 5)
  %54 = load i32*, i32** %5, align 8
  %55 = call i32 @skip_bits(i32* %54, i32 5)
  %56 = load i32*, i32** %5, align 8
  %57 = call i32 @skip_bits(i32* %56, i32 5)
  br label %58

58:                                               ; preds = %51, %24
  br label %59

59:                                               ; preds = %58, %3
  store i32 0, i32* %11, align 4
  br label %60

60:                                               ; preds = %116, %59
  %61 = load i32, i32* %11, align 4
  %62 = load i32, i32* %7, align 4
  %63 = icmp slt i32 %61, %62
  br i1 %63, label %64, label %119

64:                                               ; preds = %60
  store i32 0, i32* %12, align 4
  store i32 1, i32* %13, align 4
  %65 = load i32*, i32** %5, align 8
  %66 = call i32 @get_bits1(i32* %65)
  store i32 %66, i32* %14, align 4
  %67 = load i32, i32* %14, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %72, label %69

69:                                               ; preds = %64
  %70 = load i32*, i32** %5, align 8
  %71 = call i32 @get_bits1(i32* %70)
  store i32 %71, i32* %14, align 4
  br label %72

72:                                               ; preds = %69, %64
  %73 = load i32, i32* %14, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %72
  %76 = load i32*, i32** %5, align 8
  %77 = call i32 @get_ue_golomb_long(i32* %76)
  br label %81

78:                                               ; preds = %72
  %79 = load i32*, i32** %5, align 8
  %80 = call i32 @get_bits1(i32* %79)
  store i32 %80, i32* %12, align 4
  br label %81

81:                                               ; preds = %78, %75
  %82 = load i32, i32* %12, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %99, label %84

84:                                               ; preds = %81
  %85 = load i32*, i32** %5, align 8
  %86 = call i32 @get_ue_golomb_long(i32* %85)
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %13, align 4
  %88 = load i32, i32* %13, align 4
  %89 = icmp ult i32 %88, 1
  br i1 %89, label %93, label %90

90:                                               ; preds = %84
  %91 = load i32, i32* %13, align 4
  %92 = icmp ugt i32 %91, 32
  br i1 %92, label %93, label %98

93:                                               ; preds = %90, %84
  %94 = load i32, i32* @AV_LOG_ERROR, align 4
  %95 = load i32, i32* %13, align 4
  %96 = call i32 @av_log(i32* null, i32 %94, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %95)
  %97 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %97, i32* %4, align 4
  br label %120

98:                                               ; preds = %90
  br label %99

99:                                               ; preds = %98, %81
  %100 = load i32, i32* %8, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %107

102:                                              ; preds = %99
  %103 = load i32*, i32** %5, align 8
  %104 = load i32, i32* %13, align 4
  %105 = load i32, i32* %10, align 4
  %106 = call i32 @decode_sublayer_hrd(i32* %103, i32 %104, i32 %105)
  br label %107

107:                                              ; preds = %102, %99
  %108 = load i32, i32* %9, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %115

110:                                              ; preds = %107
  %111 = load i32*, i32** %5, align 8
  %112 = load i32, i32* %13, align 4
  %113 = load i32, i32* %10, align 4
  %114 = call i32 @decode_sublayer_hrd(i32* %111, i32 %112, i32 %113)
  br label %115

115:                                              ; preds = %110, %107
  br label %116

116:                                              ; preds = %115
  %117 = load i32, i32* %11, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %11, align 4
  br label %60

119:                                              ; preds = %60
  store i32 0, i32* %4, align 4
  br label %120

120:                                              ; preds = %119, %93
  %121 = load i32, i32* %4, align 4
  ret i32 %121
}

declare dso_local i32 @get_bits1(i32*) #1

declare dso_local i32 @skip_bits(i32*, i32) #1

declare dso_local i32 @get_ue_golomb_long(i32*) #1

declare dso_local i32 @av_log(i32*, i32, i8*, i32) #1

declare dso_local i32 @decode_sublayer_hrd(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
