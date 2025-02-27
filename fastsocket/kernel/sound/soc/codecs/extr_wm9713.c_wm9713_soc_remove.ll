; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_wm9713.c_wm9713_soc_remove.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/sound/soc/codecs/extr_wm9713.c_wm9713_soc_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.snd_soc_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.snd_soc_codec* }
%struct.snd_soc_codec = type { %struct.snd_soc_codec*, %struct.snd_soc_codec* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @wm9713_soc_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm9713_soc_remove(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.snd_soc_device*, align 8
  %5 = alloca %struct.snd_soc_codec*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %7 = call %struct.snd_soc_device* @platform_get_drvdata(%struct.platform_device* %6)
  store %struct.snd_soc_device* %7, %struct.snd_soc_device** %4, align 8
  %8 = load %struct.snd_soc_device*, %struct.snd_soc_device** %4, align 8
  %9 = getelementptr inbounds %struct.snd_soc_device, %struct.snd_soc_device* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %11, align 8
  store %struct.snd_soc_codec* %12, %struct.snd_soc_codec** %5, align 8
  %13 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %5, align 8
  %14 = icmp eq %struct.snd_soc_codec* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %33

16:                                               ; preds = %1
  %17 = load %struct.snd_soc_device*, %struct.snd_soc_device** %4, align 8
  %18 = call i32 @snd_soc_dapm_free(%struct.snd_soc_device* %17)
  %19 = load %struct.snd_soc_device*, %struct.snd_soc_device** %4, align 8
  %20 = call i32 @snd_soc_free_pcms(%struct.snd_soc_device* %19)
  %21 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %5, align 8
  %22 = call i32 @snd_soc_free_ac97_codec(%struct.snd_soc_codec* %21)
  %23 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %5, align 8
  %24 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %23, i32 0, i32 1
  %25 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %24, align 8
  %26 = call i32 @kfree(%struct.snd_soc_codec* %25)
  %27 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %5, align 8
  %28 = getelementptr inbounds %struct.snd_soc_codec, %struct.snd_soc_codec* %27, i32 0, i32 0
  %29 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %28, align 8
  %30 = call i32 @kfree(%struct.snd_soc_codec* %29)
  %31 = load %struct.snd_soc_codec*, %struct.snd_soc_codec** %5, align 8
  %32 = call i32 @kfree(%struct.snd_soc_codec* %31)
  store i32 0, i32* %2, align 4
  br label %33

33:                                               ; preds = %16, %15
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local %struct.snd_soc_device* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @snd_soc_dapm_free(%struct.snd_soc_device*) #1

declare dso_local i32 @snd_soc_free_pcms(%struct.snd_soc_device*) #1

declare dso_local i32 @snd_soc_free_ac97_codec(%struct.snd_soc_codec*) #1

declare dso_local i32 @kfree(%struct.snd_soc_codec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
