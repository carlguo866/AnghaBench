; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/aw2/extr_aw2-saa7146.c_snd_aw2_saa7146_define_it_playback_callback.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/aw2/extr_aw2-saa7146.c_snd_aw2_saa7146_define_it_playback_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i8*, i64 }

@NB_STREAM_PLAYBACK = common dso_local global i32 0, align 4
@arr_substream_it_playback_cb = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @snd_aw2_saa7146_define_it_playback_callback(i32 %0, i64 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store i64 %1, i64* %5, align 8
  store i8* %2, i8** %6, align 8
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @NB_STREAM_PLAYBACK, align 4
  %9 = icmp ult i32 %7, %8
  br i1 %9, label %10, label %23

10:                                               ; preds = %3
  %11 = load i64, i64* %5, align 8
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** @arr_substream_it_playback_cb, align 8
  %13 = load i32, i32* %4, align 4
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i64 %14
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  store i64 %11, i64* %16, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** @arr_substream_it_playback_cb, align 8
  %19 = load i32, i32* %4, align 4
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  store i8* %17, i8** %22, align 8
  br label %23

23:                                               ; preds = %10, %3
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
