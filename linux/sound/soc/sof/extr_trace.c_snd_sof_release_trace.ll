; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sof/extr_trace.c_snd_sof_release_trace.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sof/extr_trace.c_snd_sof_release_trace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_sof_dev = type { i32, i32, i32, i32 }

@SNDRV_PCM_TRIGGER_STOP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"error: snd_sof_dma_trace_trigger: stop: %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [45 x i8] c"error: fail in snd_sof_dma_trace_release %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @snd_sof_release_trace(%struct.snd_sof_dev* %0) #0 {
  %2 = alloca %struct.snd_sof_dev*, align 8
  %3 = alloca i32, align 4
  store %struct.snd_sof_dev* %0, %struct.snd_sof_dev** %2, align 8
  %4 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %2, align 8
  %5 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %40

9:                                                ; preds = %1
  %10 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %2, align 8
  %11 = load i32, i32* @SNDRV_PCM_TRIGGER_STOP, align 4
  %12 = call i32 @snd_sof_dma_trace_trigger(%struct.snd_sof_dev* %10, i32 %11)
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* %3, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %9
  %16 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %2, align 8
  %17 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %3, align 4
  %20 = call i32 @dev_err(i32 %18, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %19)
  br label %21

21:                                               ; preds = %15, %9
  %22 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %2, align 8
  %23 = call i32 @snd_sof_dma_trace_release(%struct.snd_sof_dev* %22)
  store i32 %23, i32* %3, align 4
  %24 = load i32, i32* %3, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %21
  %27 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %2, align 8
  %28 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %3, align 4
  %31 = call i32 @dev_err(i32 %29, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0), i32 %30)
  br label %32

32:                                               ; preds = %26, %21
  %33 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %2, align 8
  %34 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %33, i32 0, i32 0
  store i32 0, i32* %34, align 4
  %35 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %2, align 8
  %36 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %35, i32 0, i32 1
  store i32 1, i32* %36, align 4
  %37 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %2, align 8
  %38 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %37, i32 0, i32 2
  %39 = call i32 @wake_up(i32* %38)
  br label %40

40:                                               ; preds = %32, %8
  ret void
}

declare dso_local i32 @snd_sof_dma_trace_trigger(%struct.snd_sof_dev*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @snd_sof_dma_trace_release(%struct.snd_sof_dev*) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
