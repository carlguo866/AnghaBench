; ModuleID = '/home/carl/AnghaBench/linux/sound/aoa/soundbus/i2sbus/extr_pcm.c_i2sbus_hw_free.c'
source_filename = "/home/carl/AnghaBench/linux/sound/aoa/soundbus/i2sbus/extr_pcm.c_i2sbus_hw_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.i2sbus_dev = type { i32 }
%struct.pcm_info = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, i32)* @i2sbus_hw_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i2sbus_hw_free(%struct.snd_pcm_substream* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.i2sbus_dev*, align 8
  %6 = alloca %struct.pcm_info*, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %8 = call %struct.i2sbus_dev* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %7)
  store %struct.i2sbus_dev* %8, %struct.i2sbus_dev** %5, align 8
  %9 = load %struct.i2sbus_dev*, %struct.i2sbus_dev** %5, align 8
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @get_pcm_info(%struct.i2sbus_dev* %9, i32 %10, %struct.pcm_info** %6, i32* null)
  %12 = load %struct.pcm_info*, %struct.pcm_info** %6, align 8
  %13 = getelementptr inbounds %struct.pcm_info, %struct.pcm_info* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %2
  %18 = load %struct.i2sbus_dev*, %struct.i2sbus_dev** %5, align 8
  %19 = load %struct.pcm_info*, %struct.pcm_info** %6, align 8
  %20 = call i32 @i2sbus_wait_for_stop(%struct.i2sbus_dev* %18, %struct.pcm_info* %19)
  br label %21

21:                                               ; preds = %17, %2
  %22 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %23 = call i32 @snd_pcm_lib_free_pages(%struct.snd_pcm_substream* %22)
  ret i32 0
}

declare dso_local %struct.i2sbus_dev* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @get_pcm_info(%struct.i2sbus_dev*, i32, %struct.pcm_info**, i32*) #1

declare dso_local i32 @i2sbus_wait_for_stop(%struct.i2sbus_dev*, %struct.pcm_info*) #1

declare dso_local i32 @snd_pcm_lib_free_pages(%struct.snd_pcm_substream*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
