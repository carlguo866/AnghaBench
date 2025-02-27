; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/extr_soc-dapm.c_snd_soc_dapm_weak_routes.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/extr_soc-dapm.c_snd_soc_dapm_weak_routes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dapm_context = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.snd_soc_dapm_route = type { i32 }

@SND_SOC_DAPM_CLASS_INIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_soc_dapm_weak_routes(%struct.snd_soc_dapm_context* %0, %struct.snd_soc_dapm_route* %1, i32 %2) #0 {
  %4 = alloca %struct.snd_soc_dapm_context*, align 8
  %5 = alloca %struct.snd_soc_dapm_route*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.snd_soc_dapm_context* %0, %struct.snd_soc_dapm_context** %4, align 8
  store %struct.snd_soc_dapm_route* %1, %struct.snd_soc_dapm_route** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %9, align 4
  %10 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %4, align 8
  %11 = getelementptr inbounds %struct.snd_soc_dapm_context, %struct.snd_soc_dapm_context* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* @SND_SOC_DAPM_CLASS_INIT, align 4
  %15 = call i32 @mutex_lock_nested(i32* %13, i32 %14)
  store i32 0, i32* %7, align 4
  br label %16

16:                                               ; preds = %31, %3
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %34

20:                                               ; preds = %16
  %21 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %4, align 8
  %22 = load %struct.snd_soc_dapm_route*, %struct.snd_soc_dapm_route** %5, align 8
  %23 = call i32 @snd_soc_dapm_weak_route(%struct.snd_soc_dapm_context* %21, %struct.snd_soc_dapm_route* %22)
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %20
  %27 = load i32, i32* %8, align 4
  store i32 %27, i32* %9, align 4
  br label %28

28:                                               ; preds = %26, %20
  %29 = load %struct.snd_soc_dapm_route*, %struct.snd_soc_dapm_route** %5, align 8
  %30 = getelementptr inbounds %struct.snd_soc_dapm_route, %struct.snd_soc_dapm_route* %29, i32 1
  store %struct.snd_soc_dapm_route* %30, %struct.snd_soc_dapm_route** %5, align 8
  br label %31

31:                                               ; preds = %28
  %32 = load i32, i32* %7, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %7, align 4
  br label %16

34:                                               ; preds = %16
  %35 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %4, align 8
  %36 = getelementptr inbounds %struct.snd_soc_dapm_context, %struct.snd_soc_dapm_context* %35, i32 0, i32 0
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = call i32 @mutex_unlock(i32* %38)
  %40 = load i32, i32* %9, align 4
  ret i32 %40
}

declare dso_local i32 @mutex_lock_nested(i32*, i32) #1

declare dso_local i32 @snd_soc_dapm_weak_route(%struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_route*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
