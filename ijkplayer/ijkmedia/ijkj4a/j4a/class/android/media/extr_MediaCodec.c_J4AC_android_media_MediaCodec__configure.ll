; ModuleID = '/home/carl/AnghaBench/ijkplayer/ijkmedia/ijkj4a/j4a/class/android/media/extr_MediaCodec.c_J4AC_android_media_MediaCodec__configure.c'
source_filename = "/home/carl/AnghaBench/ijkplayer/ijkmedia/ijkj4a/j4a/class/android/media/extr_MediaCodec.c_J4AC_android_media_MediaCodec__configure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 (%struct.TYPE_5__**, i32, i32, i32, i32, i32, i32)* }

@class_J4AC_android_media_MediaCodec = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @J4AC_android_media_MediaCodec__configure(%struct.TYPE_5__** %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.TYPE_5__**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.TYPE_5__** %0, %struct.TYPE_5__*** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %13 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %7, align 8
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load i32 (%struct.TYPE_5__**, i32, i32, i32, i32, i32, i32)*, i32 (%struct.TYPE_5__**, i32, i32, i32, i32, i32, i32)** %15, align 8
  %17 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %7, align 8
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @class_J4AC_android_media_MediaCodec, i32 0, i32 0), align 4
  %20 = load i32, i32* %9, align 4
  %21 = load i32, i32* %10, align 4
  %22 = load i32, i32* %11, align 4
  %23 = load i32, i32* %12, align 4
  %24 = call i32 %16(%struct.TYPE_5__** %17, i32 %18, i32 %19, i32 %20, i32 %21, i32 %22, i32 %23)
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
