; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavdevice/extr_pulse_audio_enc.c_pulse_stream_wait.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavdevice/extr_pulse_audio_enc.c_pulse_stream_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@PA_STREAM_READY = common dso_local global i64 0, align 8
@PA_STREAM_FAILED = common dso_local global i64 0, align 8
@PA_STREAM_TERMINATED = common dso_local global i64 0, align 8
@AVERROR_EXTERNAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*)* @pulse_stream_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pulse_stream_wait(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  br label %5

5:                                                ; preds = %22, %1
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = call i64 @pa_stream_get_state(i32 %8)
  store i64 %9, i64* %4, align 8
  %10 = load i64, i64* @PA_STREAM_READY, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %12, label %27

12:                                               ; preds = %5
  %13 = load i64, i64* %4, align 8
  %14 = load i64, i64* @PA_STREAM_FAILED, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %20, label %16

16:                                               ; preds = %12
  %17 = load i64, i64* %4, align 8
  %18 = load i64, i64* @PA_STREAM_TERMINATED, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %16, %12
  %21 = load i32, i32* @AVERROR_EXTERNAL, align 4
  store i32 %21, i32* %2, align 4
  br label %28

22:                                               ; preds = %16
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @pa_threaded_mainloop_wait(i32 %25)
  br label %5

27:                                               ; preds = %5
  store i32 0, i32* %2, align 4
  br label %28

28:                                               ; preds = %27, %20
  %29 = load i32, i32* %2, align 4
  ret i32 %29
}

declare dso_local i64 @pa_stream_get_state(i32) #1

declare dso_local i32 @pa_threaded_mainloop_wait(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
