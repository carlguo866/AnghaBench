; ModuleID = '/home/carl/AnghaBench/mpv/audio/out/extr_ao_coreaudio_exclusive.c_audio_pause.c'
source_filename = "/home/carl/AnghaBench/mpv/audio/out/extr_ao_coreaudio_exclusive.c_audio_pause.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ao = type { %struct.priv* }
%struct.priv = type { i32, i32 }

@.str = private unnamed_addr constant [24 x i8] c"can't stop audio device\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ao*)* @audio_pause to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @audio_pause(%struct.ao* %0) #0 {
  %2 = alloca %struct.ao*, align 8
  %3 = alloca %struct.priv*, align 8
  %4 = alloca i32, align 4
  store %struct.ao* %0, %struct.ao** %2, align 8
  %5 = load %struct.ao*, %struct.ao** %2, align 8
  %6 = getelementptr inbounds %struct.ao, %struct.ao* %5, i32 0, i32 0
  %7 = load %struct.priv*, %struct.priv** %6, align 8
  store %struct.priv* %7, %struct.priv** %3, align 8
  %8 = load %struct.priv*, %struct.priv** %3, align 8
  %9 = getelementptr inbounds %struct.priv, %struct.priv* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.priv*, %struct.priv** %3, align 8
  %12 = getelementptr inbounds %struct.priv, %struct.priv* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @AudioDeviceStop(i32 %10, i32 %13)
  store i32 %14, i32* %4, align 4
  %15 = call i32 @CHECK_CA_WARN(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  ret void
}

declare dso_local i32 @AudioDeviceStop(i32, i32) #1

declare dso_local i32 @CHECK_CA_WARN(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
