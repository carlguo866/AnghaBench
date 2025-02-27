; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/pci/pcxhr/extr_pcxhr_core.c_pcxhr_init_rmh.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/pci/pcxhr/extr_pcxhr_core.c_pcxhr_init_rmh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.pcxhr_rmh = type { i32, i32, i32, i32, i32* }

@CMD_LAST_INDEX = common dso_local global i32 0, align 4
@pcxhr_dsp_cmds = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pcxhr_init_rmh(%struct.pcxhr_rmh* %0, i32 %1) #0 {
  %3 = alloca %struct.pcxhr_rmh*, align 8
  %4 = alloca i32, align 4
  store %struct.pcxhr_rmh* %0, %struct.pcxhr_rmh** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @CMD_LAST_INDEX, align 4
  %7 = icmp sge i32 %5, %6
  %8 = zext i1 %7 to i32
  %9 = call i64 @snd_BUG_ON(i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  br label %44

12:                                               ; preds = %2
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pcxhr_dsp_cmds, align 8
  %14 = load i32, i32* %4, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i64 %15
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.pcxhr_rmh*, %struct.pcxhr_rmh** %3, align 8
  %20 = getelementptr inbounds %struct.pcxhr_rmh, %struct.pcxhr_rmh* %19, i32 0, i32 4
  %21 = load i32*, i32** %20, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 0
  store i32 %18, i32* %22, align 4
  %23 = load %struct.pcxhr_rmh*, %struct.pcxhr_rmh** %3, align 8
  %24 = getelementptr inbounds %struct.pcxhr_rmh, %struct.pcxhr_rmh* %23, i32 0, i32 0
  store i32 1, i32* %24, align 8
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pcxhr_dsp_cmds, align 8
  %26 = load i32, i32* %4, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.pcxhr_rmh*, %struct.pcxhr_rmh** %3, align 8
  %32 = getelementptr inbounds %struct.pcxhr_rmh, %struct.pcxhr_rmh* %31, i32 0, i32 3
  store i32 %30, i32* %32, align 4
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pcxhr_dsp_cmds, align 8
  %34 = load i32, i32* %4, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.pcxhr_rmh*, %struct.pcxhr_rmh** %3, align 8
  %40 = getelementptr inbounds %struct.pcxhr_rmh, %struct.pcxhr_rmh* %39, i32 0, i32 2
  store i32 %38, i32* %40, align 8
  %41 = load i32, i32* %4, align 4
  %42 = load %struct.pcxhr_rmh*, %struct.pcxhr_rmh** %3, align 8
  %43 = getelementptr inbounds %struct.pcxhr_rmh, %struct.pcxhr_rmh* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 4
  br label %44

44:                                               ; preds = %12, %11
  ret void
}

declare dso_local i64 @snd_BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
