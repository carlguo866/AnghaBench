; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/cs46xx/extr_dsp_spos.c_cs46xx_dsp_create_task_tree.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/cs46xx/extr_dsp_spos.c_cs46xx_dsp_create_task_tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dsp_task_descriptor = type { i32* }
%struct.snd_cs46xx = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"dsp_spos: failed to map TASK\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dsp_task_descriptor* (%struct.snd_cs46xx*, i8*, i32*, i32, i32)* @cs46xx_dsp_create_task_tree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dsp_task_descriptor* @cs46xx_dsp_create_task_tree(%struct.snd_cs46xx* %0, i8* %1, i32* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.snd_cs46xx*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.dsp_task_descriptor*, align 8
  store %struct.snd_cs46xx* %0, %struct.snd_cs46xx** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %12 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %6, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = load i32, i32* %9, align 4
  %15 = load i32, i32* %10, align 4
  %16 = call %struct.dsp_task_descriptor* @_map_task_tree(%struct.snd_cs46xx* %12, i8* %13, i32 %14, i32 %15)
  store %struct.dsp_task_descriptor* %16, %struct.dsp_task_descriptor** %11, align 8
  %17 = load %struct.dsp_task_descriptor*, %struct.dsp_task_descriptor** %11, align 8
  %18 = icmp ne %struct.dsp_task_descriptor* %17, null
  br i1 %18, label %19, label %28

19:                                               ; preds = %5
  %20 = load i32*, i32** %8, align 8
  %21 = load %struct.dsp_task_descriptor*, %struct.dsp_task_descriptor** %11, align 8
  %22 = getelementptr inbounds %struct.dsp_task_descriptor, %struct.dsp_task_descriptor* %21, i32 0, i32 0
  store i32* %20, i32** %22, align 8
  %23 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %6, align 8
  %24 = load i32*, i32** %8, align 8
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* %10, align 4
  %27 = call i32 @_dsp_create_task_tree(%struct.snd_cs46xx* %23, i32* %24, i32 %25, i32 %26)
  br label %35

28:                                               ; preds = %5
  %29 = load %struct.snd_cs46xx*, %struct.snd_cs46xx** %6, align 8
  %30 = getelementptr inbounds %struct.snd_cs46xx, %struct.snd_cs46xx* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @dev_err(i32 %33, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %35

35:                                               ; preds = %28, %19
  %36 = load %struct.dsp_task_descriptor*, %struct.dsp_task_descriptor** %11, align 8
  ret %struct.dsp_task_descriptor* %36
}

declare dso_local %struct.dsp_task_descriptor* @_map_task_tree(%struct.snd_cs46xx*, i8*, i32, i32) #1

declare dso_local i32 @_dsp_create_task_tree(%struct.snd_cs46xx*, i32*, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
