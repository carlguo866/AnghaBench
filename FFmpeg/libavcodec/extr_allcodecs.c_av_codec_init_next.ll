; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_allcodecs.c_av_codec_init_next.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_allcodecs.c_av_codec_init_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.TYPE_2__* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @av_codec_init_next to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @av_codec_init_next() #0 {
  %1 = alloca %struct.TYPE_2__*, align 8
  %2 = alloca %struct.TYPE_2__*, align 8
  %3 = alloca i8*, align 8
  store %struct.TYPE_2__* null, %struct.TYPE_2__** %1, align 8
  store i8* null, i8** %3, align 8
  br label %4

4:                                                ; preds = %15, %0
  %5 = call i64 @av_codec_iterate(i8** %3)
  %6 = inttoptr i64 %5 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %6, %struct.TYPE_2__** %2, align 8
  %7 = icmp ne %struct.TYPE_2__* %6, null
  br i1 %7, label %8, label %17

8:                                                ; preds = %4
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %1, align 8
  %10 = icmp ne %struct.TYPE_2__* %9, null
  br i1 %10, label %11, label %15

11:                                               ; preds = %8
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %2, align 8
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %1, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  store %struct.TYPE_2__* %12, %struct.TYPE_2__** %14, align 8
  br label %15

15:                                               ; preds = %11, %8
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %2, align 8
  store %struct.TYPE_2__* %16, %struct.TYPE_2__** %1, align 8
  br label %4

17:                                               ; preds = %4
  ret void
}

declare dso_local i64 @av_codec_iterate(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
