; ModuleID = '/home/carl/AnghaBench/obs-studio/libobs/audio-monitoring/pulse/extr_pulseaudio-output.c_pulseaudio_underflow.c'
source_filename = "/home/carl/AnghaBench/obs-studio/libobs/audio-monitoring/pulse/extr_pulseaudio-output.c_pulseaudio_underflow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, %struct.TYPE_3__, i32, i32 }
%struct.TYPE_3__ = type { i32 }

@data = common dso_local global %struct.TYPE_4__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i8*)* @pulseaudio_underflow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pulseaudio_underflow(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load i32*, i32** %3, align 8
  %6 = call i32 @UNUSED_PARAMETER(i32* %5)
  %7 = load i8*, i8** %4, align 8
  %8 = call i32 @PULSE_DATA(i8* %7)
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** @data, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = call i32 @pthread_mutex_lock(i32* %10)
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** @data, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 4
  %15 = call i64 @obs_source_active(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %27

17:                                               ; preds = %2
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** @data, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = mul nsw i32 %21, 3
  %23 = sdiv i32 %22, 2
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** @data, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  store i32 %23, i32* %26, align 4
  br label %27

27:                                               ; preds = %17, %2
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** @data, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** @data, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  %33 = call i32 @pa_stream_set_buffer_attr(i32 %30, %struct.TYPE_3__* %32, i32* null, i32* null)
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** @data, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = call i32 @pthread_mutex_unlock(i32* %35)
  %37 = call i32 @pulseaudio_signal(i32 0)
  ret void
}

declare dso_local i32 @UNUSED_PARAMETER(i32*) #1

declare dso_local i32 @PULSE_DATA(i8*) #1

declare dso_local i32 @pthread_mutex_lock(i32*) #1

declare dso_local i64 @obs_source_active(i32) #1

declare dso_local i32 @pa_stream_set_buffer_attr(i32, %struct.TYPE_3__*, i32*, i32*) #1

declare dso_local i32 @pthread_mutex_unlock(i32*) #1

declare dso_local i32 @pulseaudio_signal(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
