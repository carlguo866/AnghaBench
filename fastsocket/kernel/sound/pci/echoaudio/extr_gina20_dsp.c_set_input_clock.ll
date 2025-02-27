; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/echoaudio/extr_gina20_dsp.c_set_input_clock.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/echoaudio/extr_gina20_dsp.c_set_input_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.echoaudio = type { i32, i8*, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32, i8* }

@.str = private unnamed_addr constant [18 x i8] c"set_input_clock:\0A\00", align 1
@GD_CLOCK_UNDEF = common dso_local global i8* null, align 8
@GD_SPDIF_STATUS_UNDEF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Set Gina clock to INTERNAL\0A\00", align 1
@GD_CLOCK_SPDIFIN = common dso_local global i8* null, align 8
@GD_SPDIF_STATUS_NOCHANGE = common dso_local global i32 0, align 4
@DSP_VC_SET_GD_AUDIO_STATE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"Set Gina20 clock to SPDIF\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.echoaudio*, i32)* @set_input_clock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_input_clock(%struct.echoaudio* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.echoaudio*, align 8
  %5 = alloca i32, align 4
  store %struct.echoaudio* %0, %struct.echoaudio** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = call i32 @DE_ACT(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %7 = load i32, i32* %5, align 4
  switch i32 %7, label %47 [
    i32 129, label %8
    i32 128, label %24
  ]

8:                                                ; preds = %2
  %9 = load i8*, i8** @GD_CLOCK_UNDEF, align 8
  %10 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %11 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %10, i32 0, i32 1
  store i8* %9, i8** %11, align 8
  %12 = load i32, i32* @GD_SPDIF_STATUS_UNDEF, align 4
  %13 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %14 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %13, i32 0, i32 4
  store i32 %12, i32* %14, align 4
  %15 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %16 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %17 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @set_sample_rate(%struct.echoaudio* %15, i32 %18)
  %20 = load i32, i32* %5, align 4
  %21 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %22 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 8
  %23 = call i32 @DE_ACT(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %50

24:                                               ; preds = %2
  %25 = load i8*, i8** @GD_CLOCK_SPDIFIN, align 8
  %26 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %27 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %26, i32 0, i32 2
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  store i8* %25, i8** %29, align 8
  %30 = load i32, i32* @GD_SPDIF_STATUS_NOCHANGE, align 4
  %31 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %32 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %31, i32 0, i32 2
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  store i32 %30, i32* %34, align 8
  %35 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %36 = call i32 @clear_handshake(%struct.echoaudio* %35)
  %37 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %38 = load i32, i32* @DSP_VC_SET_GD_AUDIO_STATE, align 4
  %39 = call i32 @send_vector(%struct.echoaudio* %37, i32 %38)
  %40 = load i8*, i8** @GD_CLOCK_SPDIFIN, align 8
  %41 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %42 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %41, i32 0, i32 1
  store i8* %40, i8** %42, align 8
  %43 = call i32 @DE_ACT(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %44 = load i32, i32* %5, align 4
  %45 = load %struct.echoaudio*, %struct.echoaudio** %4, align 8
  %46 = getelementptr inbounds %struct.echoaudio, %struct.echoaudio* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 8
  br label %50

47:                                               ; preds = %2
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %3, align 4
  br label %51

50:                                               ; preds = %24, %8
  store i32 0, i32* %3, align 4
  br label %51

51:                                               ; preds = %50, %47
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local i32 @DE_ACT(i8*) #1

declare dso_local i32 @set_sample_rate(%struct.echoaudio*, i32) #1

declare dso_local i32 @clear_handshake(%struct.echoaudio*) #1

declare dso_local i32 @send_vector(%struct.echoaudio*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
