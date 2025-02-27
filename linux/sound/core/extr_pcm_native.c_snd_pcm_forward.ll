; ModuleID = '/home/carl/AnghaBench/linux/sound/core/extr_pcm_native.c_snd_pcm_forward.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/extr_pcm_native.c_snd_pcm_forward.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.snd_pcm_substream*, i32)* @snd_pcm_forward to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @snd_pcm_forward(%struct.snd_pcm_substream* %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  store i64 0, i64* %3, align 8
  br label %27

10:                                               ; preds = %2
  %11 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %12 = call i32 @snd_pcm_stream_lock_irq(%struct.snd_pcm_substream* %11)
  %13 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %14 = call i64 @do_pcm_hwsync(%struct.snd_pcm_substream* %13)
  store i64 %14, i64* %6, align 8
  %15 = load i64, i64* %6, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %23, label %17

17:                                               ; preds = %10
  %18 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %19 = load i32, i32* %5, align 4
  %20 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %21 = call i32 @snd_pcm_avail(%struct.snd_pcm_substream* %20)
  %22 = call i64 @forward_appl_ptr(%struct.snd_pcm_substream* %18, i32 %19, i32 %21)
  store i64 %22, i64* %6, align 8
  br label %23

23:                                               ; preds = %17, %10
  %24 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %25 = call i32 @snd_pcm_stream_unlock_irq(%struct.snd_pcm_substream* %24)
  %26 = load i64, i64* %6, align 8
  store i64 %26, i64* %3, align 8
  br label %27

27:                                               ; preds = %23, %9
  %28 = load i64, i64* %3, align 8
  ret i64 %28
}

declare dso_local i32 @snd_pcm_stream_lock_irq(%struct.snd_pcm_substream*) #1

declare dso_local i64 @do_pcm_hwsync(%struct.snd_pcm_substream*) #1

declare dso_local i64 @forward_appl_ptr(%struct.snd_pcm_substream*, i32, i32) #1

declare dso_local i32 @snd_pcm_avail(%struct.snd_pcm_substream*) #1

declare dso_local i32 @snd_pcm_stream_unlock_irq(%struct.snd_pcm_substream*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
