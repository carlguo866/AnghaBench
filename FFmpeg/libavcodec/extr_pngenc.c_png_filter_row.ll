; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_pngenc.c_png_filter_row.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_pngenc.c_png_filter_row.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 (i32*, i32*, i32*, i32)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, i32*, i32, i32*, i32*, i32, i32)* @png_filter_row to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @png_filter_row(%struct.TYPE_6__* %0, i32* %1, i32 %2, i32* %3, i32* %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %16 = load i32, i32* %10, align 4
  switch i32 %16, label %140 [
    i32 131, label %17
    i32 129, label %22
    i32 128, label %29
    i32 132, label %39
    i32 130, label %98
  ]

17:                                               ; preds = %7
  %18 = load i32*, i32** %9, align 8
  %19 = load i32*, i32** %11, align 8
  %20 = load i32, i32* %13, align 4
  %21 = call i32 @memcpy(i32* %18, i32* %19, i32 %20)
  br label %140

22:                                               ; preds = %7
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %24 = load i32*, i32** %9, align 8
  %25 = load i32*, i32** %11, align 8
  %26 = load i32, i32* %14, align 4
  %27 = load i32, i32* %13, align 4
  %28 = call i32 @sub_left_prediction(%struct.TYPE_6__* %23, i32* %24, i32* %25, i32 %26, i32 %27)
  br label %140

29:                                               ; preds = %7
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i32 (i32*, i32*, i32*, i32)*, i32 (i32*, i32*, i32*, i32)** %32, align 8
  %34 = load i32*, i32** %9, align 8
  %35 = load i32*, i32** %11, align 8
  %36 = load i32*, i32** %12, align 8
  %37 = load i32, i32* %13, align 4
  %38 = call i32 %33(i32* %34, i32* %35, i32* %36, i32 %37)
  br label %140

39:                                               ; preds = %7
  store i32 0, i32* %15, align 4
  br label %40

40:                                               ; preds = %61, %39
  %41 = load i32, i32* %15, align 4
  %42 = load i32, i32* %14, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %64

44:                                               ; preds = %40
  %45 = load i32*, i32** %11, align 8
  %46 = load i32, i32* %15, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = load i32*, i32** %12, align 8
  %51 = load i32, i32* %15, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = ashr i32 %54, 1
  %56 = sub nsw i32 %49, %55
  %57 = load i32*, i32** %9, align 8
  %58 = load i32, i32* %15, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  store i32 %56, i32* %60, align 4
  br label %61

61:                                               ; preds = %44
  %62 = load i32, i32* %15, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %15, align 4
  br label %40

64:                                               ; preds = %40
  br label %65

65:                                               ; preds = %94, %64
  %66 = load i32, i32* %15, align 4
  %67 = load i32, i32* %13, align 4
  %68 = icmp slt i32 %66, %67
  br i1 %68, label %69, label %97

69:                                               ; preds = %65
  %70 = load i32*, i32** %11, align 8
  %71 = load i32, i32* %15, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = load i32*, i32** %11, align 8
  %76 = load i32, i32* %15, align 4
  %77 = load i32, i32* %14, align 4
  %78 = sub nsw i32 %76, %77
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %75, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = load i32*, i32** %12, align 8
  %83 = load i32, i32* %15, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %82, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = add nsw i32 %81, %86
  %88 = ashr i32 %87, 1
  %89 = sub nsw i32 %74, %88
  %90 = load i32*, i32** %9, align 8
  %91 = load i32, i32* %15, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %90, i64 %92
  store i32 %89, i32* %93, align 4
  br label %94

94:                                               ; preds = %69
  %95 = load i32, i32* %15, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %15, align 4
  br label %65

97:                                               ; preds = %65
  br label %140

98:                                               ; preds = %7
  store i32 0, i32* %15, align 4
  br label %99

99:                                               ; preds = %119, %98
  %100 = load i32, i32* %15, align 4
  %101 = load i32, i32* %14, align 4
  %102 = icmp slt i32 %100, %101
  br i1 %102, label %103, label %122

103:                                              ; preds = %99
  %104 = load i32*, i32** %11, align 8
  %105 = load i32, i32* %15, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %104, i64 %106
  %108 = load i32, i32* %107, align 4
  %109 = load i32*, i32** %12, align 8
  %110 = load i32, i32* %15, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %109, i64 %111
  %113 = load i32, i32* %112, align 4
  %114 = sub nsw i32 %108, %113
  %115 = load i32*, i32** %9, align 8
  %116 = load i32, i32* %15, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i32, i32* %115, i64 %117
  store i32 %114, i32* %118, align 4
  br label %119

119:                                              ; preds = %103
  %120 = load i32, i32* %15, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %15, align 4
  br label %99

122:                                              ; preds = %99
  %123 = load i32*, i32** %9, align 8
  %124 = load i32, i32* %15, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i32, i32* %123, i64 %125
  %127 = load i32*, i32** %11, align 8
  %128 = load i32, i32* %15, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i32, i32* %127, i64 %129
  %131 = load i32*, i32** %12, align 8
  %132 = load i32, i32* %15, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i32, i32* %131, i64 %133
  %135 = load i32, i32* %13, align 4
  %136 = load i32, i32* %15, align 4
  %137 = sub nsw i32 %135, %136
  %138 = load i32, i32* %14, align 4
  %139 = call i32 @sub_png_paeth_prediction(i32* %126, i32* %130, i32* %134, i32 %137, i32 %138)
  br label %140

140:                                              ; preds = %7, %122, %97, %29, %22, %17
  ret void
}

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @sub_left_prediction(%struct.TYPE_6__*, i32*, i32*, i32, i32) #1

declare dso_local i32 @sub_png_paeth_prediction(i32*, i32*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
