; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/tm6000/extr_tm6000-alsa.c_dsp_buffer_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/tm6000/extr_tm6000-alsa.c_dsp_buffer_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i64 }
%struct.snd_tm6000_card = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"Allocating buffer\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, i32)* @dsp_buffer_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dsp_buffer_alloc(%struct.snd_pcm_substream* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_tm6000_card*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %8 = call %struct.snd_tm6000_card* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %7)
  store %struct.snd_tm6000_card* %8, %struct.snd_tm6000_card** %6, align 8
  %9 = call i32 @dprintk(i32 2, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %11 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %28

16:                                               ; preds = %2
  %17 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %18 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* %5, align 4
  %23 = icmp sgt i32 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %16
  store i32 0, i32* %3, align 4
  br label %50

25:                                               ; preds = %16
  %26 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %27 = call i32 @dsp_buffer_free(%struct.snd_pcm_substream* %26)
  br label %28

28:                                               ; preds = %25, %2
  %29 = load i32, i32* %5, align 4
  %30 = call i64 @vmalloc(i32 %29)
  %31 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %32 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  store i64 %30, i64* %34, align 8
  %35 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %36 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %35, i32 0, i32 0
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %28
  %42 = load i32, i32* @ENOMEM, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %3, align 4
  br label %50

44:                                               ; preds = %28
  %45 = load i32, i32* %5, align 4
  %46 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %47 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %46, i32 0, i32 0
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  store i32 %45, i32* %49, align 8
  store i32 0, i32* %3, align 4
  br label %50

50:                                               ; preds = %44, %41, %24
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local %struct.snd_tm6000_card* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @dprintk(i32, i8*) #1

declare dso_local i32 @dsp_buffer_free(%struct.snd_pcm_substream*) #1

declare dso_local i64 @vmalloc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
