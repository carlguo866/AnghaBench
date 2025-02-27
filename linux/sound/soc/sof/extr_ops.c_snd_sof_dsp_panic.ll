; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sof/extr_ops.c_snd_sof_dsp_panic.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sof/extr_ops.c_snd_sof_dsp_panic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_sof_dev = type { i64, i32 }

@.str = private unnamed_addr constant [20 x i8] c"error : DSP panic!\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"panic: dsp_oops_offset %zu offset %d\0A\00", align 1
@SOF_DBG_REGS = common dso_local global i32 0, align 4
@SOF_DBG_MBOX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @snd_sof_dsp_panic(%struct.snd_sof_dev* %0, i64 %1) #0 {
  %3 = alloca %struct.snd_sof_dev*, align 8
  %4 = alloca i64, align 8
  store %struct.snd_sof_dev* %0, %struct.snd_sof_dev** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %3, align 8
  %6 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 8
  %8 = call i32 @dev_err(i32 %7, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %9 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %3, align 8
  %10 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %2
  %14 = load i64, i64* %4, align 8
  %15 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %3, align 8
  %16 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %15, i32 0, i32 0
  store i64 %14, i64* %16, align 8
  br label %26

17:                                               ; preds = %2
  %18 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %3, align 8
  %19 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %3, align 8
  %22 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* %4, align 8
  %25 = call i32 @dev_dbg(i32 %20, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i64 %23, i64 %24)
  br label %26

26:                                               ; preds = %17, %13
  %27 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %3, align 8
  %28 = load i32, i32* @SOF_DBG_REGS, align 4
  %29 = load i32, i32* @SOF_DBG_MBOX, align 4
  %30 = or i32 %28, %29
  %31 = call i32 @snd_sof_dsp_dbg_dump(%struct.snd_sof_dev* %27, i32 %30)
  %32 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %3, align 8
  %33 = call i32 @snd_sof_trace_notify_for_error(%struct.snd_sof_dev* %32)
  ret void
}

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i64, i64) #1

declare dso_local i32 @snd_sof_dsp_dbg_dump(%struct.snd_sof_dev*, i32) #1

declare dso_local i32 @snd_sof_trace_notify_for_error(%struct.snd_sof_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
