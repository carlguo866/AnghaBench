; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/echoaudio/extr_darla24_dsp.c_set_sample_rate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/echoaudio/extr_darla24_dsp.c_set_sample_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.echoaudio = type { i32, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@GD24_96000 = common dso_local global i32 0, align 4
@GD24_88200 = common dso_local global i32 0, align 4
@GD24_48000 = common dso_local global i32 0, align 4
@GD24_44100 = common dso_local global i32 0, align 4
@GD24_32000 = common dso_local global i32 0, align 4
@GD24_22050 = common dso_local global i32 0, align 4
@GD24_16000 = common dso_local global i32 0, align 4
@GD24_11025 = common dso_local global i32 0, align 4
@GD24_8000 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"set_sample_rate: Error, invalid sample rate %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"set_sample_rate: %d clock %d\0A\00", align 1
@ECHO_CLOCK_ESYNC = common dso_local global i64 0, align 8
@GD24_EXT_SYNC = common dso_local global i32 0, align 4
@DSP_VC_SET_GD_AUDIO_STATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.echoaudio*, i32)* @set_sample_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_sample_rate(%struct.echoaudio* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.echoaudio*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.echoaudio* %0, %struct.echoaudio** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  switch i32 %7, label %26 [
    i32 96000, label %8
    i32 88200, label %10
    i32 48000, label %12
    i32 44100, label %14
    i32 32000, label %16
    i32 22050, label %18
    i32 16000, label %20
    i32 11025, label %22
    i32 8000, label %24
  ]

8:                                                ; preds = %2
  %9 = load i32, i32* @GD24_96000, align 4
  store i32 %9, i32* %6, align 4
  br label %33

10:                                               ; preds = %2
  %11 = load i32, i32* @GD24_88200, align 4
  store i32 %11, i32* %6, align 4
  br label %33

12:                                               ; preds = %2
  %13 = load i32, i32* @GD24_48000, align 4
  store i32 %13, i32* %6, align 4
  br label %33

14:                                               ; preds = %2
  %15 = load i32, i32* @GD24_44100, align 4
  store i32 %15, i32* %6, align 4
  br label %33

16:                                               ; preds = %2
  %17 = load i32, i32* @GD24_32000, align 4
  store i32 %17, i32* %6, align 4
  br label %33

18:                                               ; preds = %2
  %19 = load i32, i32* @GD24_22050, align 4
  store i32 %19, i32* %6, align 4
  br label %33

20:                                               ; preds = %2
  %21 = load i32, i32* @GD24_16000, align 4
  store i32 %21, i32* %6, align 4
  br label %33

22:                                               ; preds = %2
  %23 = load i32, i32* @GD24_11025, align 4
  store i32 %23, i32* %6, align 4
  br label %33

24:                                               ; preds = %2
  %25 = load i32, i32* @GD24_8000, align 4
  store i32 %25, i32* %6, align 4
  br label %33

26:                                               ; preds = %2
  %27 = load i32, i32* %5, align 4
  %28 = sext i32 %27 to i64
  %29 = inttoptr i64 %28 to i8*
  %30 = call i32 @DE_ACT(i8* %29)
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %73

33:                                               ; preds = %24, %22, %20, %18, %16, %14, %12, %10, %8
  %34 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %35 = call i64 @wait_handshake(%struct.echoaudio* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %33
  %38 = load i32, i32* @EIO, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %3, align 4
  br label %73

40:                                               ; preds = %33
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* %6, align 4
  %43 = sext i32 %42 to i64
  %44 = inttoptr i64 %43 to i8*
  %45 = call i32 @DE_ACT(i8* %44)
  %46 = load i32, i32* %5, align 4
  %47 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %48 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 8
  %49 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %50 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @ECHO_CLOCK_ESYNC, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %40
  %55 = load i32, i32* @GD24_EXT_SYNC, align 4
  store i32 %55, i32* %6, align 4
  br label %56

56:                                               ; preds = %54, %40
  %57 = load i32, i32* %5, align 4
  %58 = call i32 @cpu_to_le32(i32 %57)
  %59 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %60 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %59, i32 0, i32 2
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 1
  store i32 %58, i32* %62, align 4
  %63 = load i32, i32* %6, align 4
  %64 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %65 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %64, i32 0, i32 2
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  store i32 %63, i32* %67, align 4
  %68 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %69 = call i32 @clear_handshake(%struct.echoaudio* %68)
  %70 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %71 = load i32, i32* @DSP_VC_SET_GD_AUDIO_STATE, align 4
  %72 = call i32 @send_vector(%struct.echoaudio* %70, i32 %71)
  store i32 %72, i32* %3, align 4
  br label %73

73:                                               ; preds = %56, %37, %26
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

declare dso_local i32 @DE_ACT(i8*) #1

declare dso_local i64 @wait_handshake(%struct.echoaudio*) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @clear_handshake(%struct.echoaudio*) #1

declare dso_local i32 @send_vector(%struct.echoaudio*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
