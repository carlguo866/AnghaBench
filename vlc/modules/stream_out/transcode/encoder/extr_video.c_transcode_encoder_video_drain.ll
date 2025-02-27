; ModuleID = '/home/carl/AnghaBench/vlc/modules/stream_out/transcode/encoder/extr_video.c_transcode_encoder_video_drain.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/stream_out/transcode/encoder/extr_video.c_transcode_encoder_video_drain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i32, i64 }

@VLC_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @transcode_encoder_video_drain(%struct.TYPE_5__* %0, i32** %1) #0 {
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i32**, align 8
  %5 = alloca i32*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  store i32** %1, i32*** %4, align 8
  %6 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 4
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %21, label %10

10:                                               ; preds = %2
  br label %11

11:                                               ; preds = %17, %10
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %13 = call i32* @transcode_encoder_encode(%struct.TYPE_5__* %12, i32* null)
  store i32* %13, i32** %5, align 8
  %14 = load i32**, i32*** %4, align 8
  %15 = load i32*, i32** %5, align 8
  %16 = call i32 @block_ChainAppend(i32** %14, i32* %15)
  br label %17

17:                                               ; preds = %11
  %18 = load i32*, i32** %5, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %11, label %20

20:                                               ; preds = %17
  br label %52

21:                                               ; preds = %2
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 4
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %47

26:                                               ; preds = %21
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %47, label %31

31:                                               ; preds = %26
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 2
  %34 = call i32 @vlc_mutex_lock(i32* %33)
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  store i32 1, i32* %36, align 8
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 3
  %39 = call i32 @vlc_cond_signal(i32* %38)
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 2
  %42 = call i32 @vlc_mutex_unlock(i32* %41)
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @vlc_join(i32 %45, i32* null)
  br label %47

47:                                               ; preds = %31, %26, %21
  %48 = load i32**, i32*** %4, align 8
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %50 = call i32* @transcode_encoder_get_output_async(%struct.TYPE_5__* %49)
  %51 = call i32 @block_ChainAppend(i32** %48, i32* %50)
  br label %52

52:                                               ; preds = %47, %20
  %53 = load i32, i32* @VLC_SUCCESS, align 4
  ret i32 %53
}

declare dso_local i32* @transcode_encoder_encode(%struct.TYPE_5__*, i32*) #1

declare dso_local i32 @block_ChainAppend(i32**, i32*) #1

declare dso_local i32 @vlc_mutex_lock(i32*) #1

declare dso_local i32 @vlc_cond_signal(i32*) #1

declare dso_local i32 @vlc_mutex_unlock(i32*) #1

declare dso_local i32 @vlc_join(i32, i32*) #1

declare dso_local i32* @transcode_encoder_get_output_async(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
