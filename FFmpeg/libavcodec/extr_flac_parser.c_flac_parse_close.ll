; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_flac_parser.c_flac_parse_close.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_flac_parser.c_flac_parse_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_7__* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*)* @flac_parse_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @flac_parse_close(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  %6 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 0
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  store %struct.TYPE_6__* %8, %struct.TYPE_6__** %3, align 8
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 2
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  store %struct.TYPE_7__* %11, %struct.TYPE_7__** %4, align 8
  br label %12

12:                                               ; preds = %15, %1
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %14 = icmp ne %struct.TYPE_7__* %13, null
  br i1 %14, label %15, label %22

15:                                               ; preds = %12
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %17, align 8
  store %struct.TYPE_7__* %18, %struct.TYPE_7__** %5, align 8
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %20 = call i32 @av_free(%struct.TYPE_7__* %19)
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  store %struct.TYPE_7__* %21, %struct.TYPE_7__** %4, align 8
  br label %12

22:                                               ; preds = %12
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 2
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %24, align 8
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 1
  %27 = call i32 @av_fifo_freep(i32* %26)
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = call i32 @av_freep(i32* %29)
  ret void
}

declare dso_local i32 @av_free(%struct.TYPE_7__*) #1

declare dso_local i32 @av_fifo_freep(i32*) #1

declare dso_local i32 @av_freep(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
