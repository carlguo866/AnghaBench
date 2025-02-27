; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_jpeg2000dec.c_get_plt.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_jpeg2000dec.c_get_plt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@AV_LOG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"PLT marker at pos 0x%X\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*, i32)* @get_plt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_plt(%struct.TYPE_3__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @AV_LOG_DEBUG, align 4
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = call i64 @bytestream2_tell(i32* %13)
  %15 = sub nsw i64 %14, 4
  %16 = call i32 @av_log(i32 %10, i32 %11, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i64 %15)
  %17 = load i32, i32* %5, align 4
  %18 = icmp slt i32 %17, 4
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %20, i32* %3, align 4
  br label %44

21:                                               ; preds = %2
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = call i32 @bytestream2_get_byte(i32* %23)
  store i32 0, i32* %6, align 4
  br label %25

25:                                               ; preds = %34, %21
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* %5, align 4
  %28 = sub nsw i32 %27, 3
  %29 = icmp slt i32 %26, %28
  br i1 %29, label %30, label %37

30:                                               ; preds = %25
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = call i32 @bytestream2_get_byte(i32* %32)
  store i32 %33, i32* %7, align 4
  br label %34

34:                                               ; preds = %30
  %35 = load i32, i32* %6, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %6, align 4
  br label %25

37:                                               ; preds = %25
  %38 = load i32, i32* %7, align 4
  %39 = and i32 %38, 128
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %37
  %42 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %42, i32* %3, align 4
  br label %44

43:                                               ; preds = %37
  store i32 0, i32* %3, align 4
  br label %44

44:                                               ; preds = %43, %41, %19
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local i32 @av_log(i32, i32, i8*, i64) #1

declare dso_local i64 @bytestream2_tell(i32*) #1

declare dso_local i32 @bytestream2_get_byte(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
