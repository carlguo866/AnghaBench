; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_movenc.c_mov_write_wfex_tag.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_movenc.c_mov_write_wfex_tag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [5 x i8] c"wfex\00", align 1
@FF_PUT_WAV_HEADER_FORCE_WAVEFORMATEX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, %struct.TYPE_5__*)* @mov_write_wfex_tag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mov_write_wfex_tag(i32* %0, i32* %1, %struct.TYPE_5__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.TYPE_5__* %2, %struct.TYPE_5__** %7, align 8
  %10 = load i32*, i32** %6, align 8
  %11 = call i32 @avio_tell(i32* %10)
  store i32 %11, i32* %9, align 4
  %12 = load i32*, i32** %6, align 8
  %13 = call i32 @avio_wb32(i32* %12, i32 0)
  %14 = load i32*, i32** %6, align 8
  %15 = call i32 @ffio_wfourcc(i32* %14, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %16 = load i32*, i32** %5, align 8
  %17 = load i32*, i32** %6, align 8
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @FF_PUT_WAV_HEADER_FORCE_WAVEFORMATEX, align 4
  %24 = call i32 @ff_put_wav_header(i32* %16, i32* %17, i32 %22, i32 %23)
  store i32 %24, i32* %8, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %3
  %27 = load i32, i32* %8, align 4
  store i32 %27, i32* %4, align 4
  br label %32

28:                                               ; preds = %3
  %29 = load i32*, i32** %6, align 8
  %30 = load i32, i32* %9, align 4
  %31 = call i32 @update_size(i32* %29, i32 %30)
  store i32 %31, i32* %4, align 4
  br label %32

32:                                               ; preds = %28, %26
  %33 = load i32, i32* %4, align 4
  ret i32 %33
}

declare dso_local i32 @avio_tell(i32*) #1

declare dso_local i32 @avio_wb32(i32*, i32) #1

declare dso_local i32 @ffio_wfourcc(i32*, i8*) #1

declare dso_local i32 @ff_put_wav_header(i32*, i32*, i32, i32) #1

declare dso_local i32 @update_size(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
