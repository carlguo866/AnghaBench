; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/sparc/extr_dbri.c_snd_dbri_trigger.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/sparc/extr_dbri.c_snd_dbri_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i32 }
%struct.snd_dbri = type { i32 }
%struct.dbri_streaminfo = type { i32 }

@D_USR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"start audio, period is %d bytes\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"stop audio.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, i32)* @snd_dbri_trigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_dbri_trigger(%struct.snd_pcm_substream* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_dbri*, align 8
  %6 = alloca %struct.dbri_streaminfo*, align 8
  %7 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %9 = call %struct.snd_dbri* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %8)
  store %struct.snd_dbri* %9, %struct.snd_dbri** %5, align 8
  %10 = load %struct.snd_dbri*, %struct.snd_dbri** %5, align 8
  %11 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %12 = call %struct.dbri_streaminfo* @DBRI_STREAM(%struct.snd_dbri* %10, %struct.snd_pcm_substream* %11)
  store %struct.dbri_streaminfo* %12, %struct.dbri_streaminfo** %6, align 8
  store i32 0, i32* %7, align 4
  %13 = load i32, i32* %4, align 4
  switch i32 %13, label %30 [
    i32 129, label %14
    i32 128, label %22
  ]

14:                                               ; preds = %2
  %15 = load i32, i32* @D_USR, align 4
  %16 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %17 = call i64 @snd_pcm_lib_period_bytes(%struct.snd_pcm_substream* %16)
  %18 = trunc i64 %17 to i32
  %19 = call i32 (i32, i8*, ...) @dprintk(i32 %15, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load %struct.snd_dbri*, %struct.snd_dbri** %5, align 8
  %21 = call i32 @xmit_descs(%struct.snd_dbri* %20)
  br label %33

22:                                               ; preds = %2
  %23 = load i32, i32* @D_USR, align 4
  %24 = call i32 (i32, i8*, ...) @dprintk(i32 %23, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %25 = load %struct.snd_dbri*, %struct.snd_dbri** %5, align 8
  %26 = load %struct.dbri_streaminfo*, %struct.dbri_streaminfo** %6, align 8
  %27 = getelementptr inbounds %struct.dbri_streaminfo, %struct.dbri_streaminfo* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @reset_pipe(%struct.snd_dbri* %25, i32 %28)
  br label %33

30:                                               ; preds = %2
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %7, align 4
  br label %33

33:                                               ; preds = %30, %22, %14
  %34 = load i32, i32* %7, align 4
  ret i32 %34
}

declare dso_local %struct.snd_dbri* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local %struct.dbri_streaminfo* @DBRI_STREAM(%struct.snd_dbri*, %struct.snd_pcm_substream*) #1

declare dso_local i32 @dprintk(i32, i8*, ...) #1

declare dso_local i64 @snd_pcm_lib_period_bytes(%struct.snd_pcm_substream*) #1

declare dso_local i32 @xmit_descs(%struct.snd_dbri*) #1

declare dso_local i32 @reset_pipe(%struct.snd_dbri*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
