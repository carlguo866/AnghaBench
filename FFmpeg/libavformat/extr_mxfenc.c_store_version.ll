; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_mxfenc.c_store_version.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_mxfenc.c_store_version.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32* }

@AVFMT_FLAG_BITEXACT = common dso_local global i32 0, align 4
@LIBAVFORMAT_VERSION_MAJOR = common dso_local global i32 0, align 4
@LIBAVFORMAT_VERSION_MINOR = common dso_local global i32 0, align 4
@LIBAVFORMAT_VERSION_MICRO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*)* @store_version to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @store_version(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  %3 = alloca i32*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %4 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 1
  %6 = load i32*, i32** %5, align 8
  store i32* %6, i32** %3, align 8
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @AVFMT_FLAG_BITEXACT, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %20

13:                                               ; preds = %1
  %14 = load i32*, i32** %3, align 8
  %15 = call i32 @avio_wb16(i32* %14, i32 0)
  %16 = load i32*, i32** %3, align 8
  %17 = call i32 @avio_wb16(i32* %16, i32 0)
  %18 = load i32*, i32** %3, align 8
  %19 = call i32 @avio_wb16(i32* %18, i32 0)
  br label %30

20:                                               ; preds = %1
  %21 = load i32*, i32** %3, align 8
  %22 = load i32, i32* @LIBAVFORMAT_VERSION_MAJOR, align 4
  %23 = call i32 @avio_wb16(i32* %21, i32 %22)
  %24 = load i32*, i32** %3, align 8
  %25 = load i32, i32* @LIBAVFORMAT_VERSION_MINOR, align 4
  %26 = call i32 @avio_wb16(i32* %24, i32 %25)
  %27 = load i32*, i32** %3, align 8
  %28 = load i32, i32* @LIBAVFORMAT_VERSION_MICRO, align 4
  %29 = call i32 @avio_wb16(i32* %27, i32 %28)
  br label %30

30:                                               ; preds = %20, %13
  %31 = load i32*, i32** %3, align 8
  %32 = call i32 @avio_wb16(i32* %31, i32 0)
  %33 = load i32*, i32** %3, align 8
  %34 = call i32 @avio_wb16(i32* %33, i32 0)
  ret void
}

declare dso_local i32 @avio_wb16(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
