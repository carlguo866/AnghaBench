; ModuleID = '/home/carl/AnghaBench/ijkplayer/ijkmedia/ijkj4a/j4a/class/tv/danmaku/ijk/media/player/extr_IjkMediaPlayer.c_J4AC_tv_danmaku_ijk_media_player_IjkMediaPlayer__onNativeInvoke.c'
source_filename = "/home/carl/AnghaBench/ijkplayer/ijkmedia/ijkj4a/j4a/class/tv/danmaku/ijk/media/player/extr_IjkMediaPlayer.c_J4AC_tv_danmaku_ijk_media_player_IjkMediaPlayer__onNativeInvoke.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32 (%struct.TYPE_5__**, i32, i32, i32, i32, i32)* }

@class_J4AC_tv_danmaku_ijk_media_player_IjkMediaPlayer = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @J4AC_tv_danmaku_ijk_media_player_IjkMediaPlayer__onNativeInvoke(%struct.TYPE_5__** %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_5__**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_5__** %0, %struct.TYPE_5__*** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %5, align 8
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load i32 (%struct.TYPE_5__**, i32, i32, i32, i32, i32)*, i32 (%struct.TYPE_5__**, i32, i32, i32, i32, i32)** %11, align 8
  %13 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %5, align 8
  %14 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @class_J4AC_tv_danmaku_ijk_media_player_IjkMediaPlayer, i32 0, i32 1), align 4
  %15 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @class_J4AC_tv_danmaku_ijk_media_player_IjkMediaPlayer, i32 0, i32 0), align 4
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* %8, align 4
  %19 = call i32 %12(%struct.TYPE_5__** %13, i32 %14, i32 %15, i32 %16, i32 %17, i32 %18)
  ret i32 %19
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
