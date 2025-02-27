; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_mpegts.c_mp4_read_iods.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_mpegts.c_mp4_read_iods.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }

@MP4IODescrTag = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32, i32*, i32*, i32)* @mp4_read_iods to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mp4_read_iods(i32* %0, i32* %1, i32 %2, i32* %3, i32* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_4__, align 4
  %15 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32 %5, i32* %13, align 4
  %16 = load i32*, i32** %8, align 8
  %17 = load i32*, i32** %9, align 8
  %18 = load i32, i32* %10, align 4
  %19 = load i32*, i32** %11, align 8
  %20 = load i32, i32* %13, align 4
  %21 = call i32 @init_MP4DescrParseContext(%struct.TYPE_4__* %14, i32* %16, i32* %17, i32 %18, i32* %19, i32 %20)
  store i32 %21, i32* %15, align 4
  %22 = load i32, i32* %15, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %6
  %25 = load i32, i32* %15, align 4
  store i32 %25, i32* %7, align 4
  br label %36

26:                                               ; preds = %6
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 1
  %28 = call i32 @avio_tell(i32* %27)
  %29 = load i32, i32* %10, align 4
  %30 = load i32, i32* @MP4IODescrTag, align 4
  %31 = call i32 @parse_mp4_descr(%struct.TYPE_4__* %14, i32 %28, i32 %29, i32 %30)
  store i32 %31, i32* %15, align 4
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32*, i32** %12, align 8
  store i32 %33, i32* %34, align 4
  %35 = load i32, i32* %15, align 4
  store i32 %35, i32* %7, align 4
  br label %36

36:                                               ; preds = %26, %24
  %37 = load i32, i32* %7, align 4
  ret i32 %37
}

declare dso_local i32 @init_MP4DescrParseContext(%struct.TYPE_4__*, i32*, i32*, i32, i32*, i32) #1

declare dso_local i32 @parse_mp4_descr(%struct.TYPE_4__*, i32, i32, i32) #1

declare dso_local i32 @avio_tell(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
