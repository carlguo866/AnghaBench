; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mxpegdec.c_mxpeg_decode_com.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mxpegdec.c_mxpeg_decode_com.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"MXM\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i32*, i32)* @mxpeg_decode_com to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mxpeg_decode_com(%struct.TYPE_6__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %9, align 4
  %10 = load i32, i32* %7, align 4
  %11 = icmp slt i32 %10, 2
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %44

13:                                               ; preds = %3
  %14 = load i32*, i32** %6, align 8
  %15 = call i32 @AV_RB16(i32* %14)
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = icmp sgt i32 %16, 14
  br i1 %17, label %18, label %34

18:                                               ; preds = %13
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp sle i32 %19, %20
  br i1 %21, label %22, label %34

22:                                               ; preds = %18
  %23 = load i32*, i32** %6, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 2
  %25 = call i32 @strncmp(i32* %24, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 3)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %34, label %27

27:                                               ; preds = %22
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %29 = load i32*, i32** %6, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 2
  %31 = load i32, i32* %8, align 4
  %32 = sub nsw i32 %31, 2
  %33 = call i32 @mxpeg_decode_mxm(%struct.TYPE_6__* %28, i32* %30, i32 %32)
  store i32 %33, i32* %9, align 4
  br label %34

34:                                               ; preds = %27, %22, %18, %13
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* %7, align 4
  %40 = call i32 @FFMIN(i32 %38, i32 %39)
  %41 = mul nsw i32 8, %40
  %42 = call i32 @skip_bits(i32* %37, i32 %41)
  %43 = load i32, i32* %9, align 4
  store i32 %43, i32* %4, align 4
  br label %44

44:                                               ; preds = %34, %12
  %45 = load i32, i32* %4, align 4
  ret i32 %45
}

declare dso_local i32 @AV_RB16(i32*) #1

declare dso_local i32 @strncmp(i32*, i8*, i32) #1

declare dso_local i32 @mxpeg_decode_mxm(%struct.TYPE_6__*, i32*, i32) #1

declare dso_local i32 @skip_bits(i32*, i32) #1

declare dso_local i32 @FFMIN(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
