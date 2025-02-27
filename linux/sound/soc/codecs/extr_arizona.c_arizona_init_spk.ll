; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_arizona.c_arizona_init_spk.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_arizona.c_arizona_init_spk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.snd_soc_dapm_context = type { i32 }
%struct.arizona_priv = type { %struct.arizona* }
%struct.arizona = type { i32 }

@arizona_spkl = common dso_local global i32 0, align 4
@arizona_spkr = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @arizona_init_spk(%struct.snd_soc_component* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_soc_component*, align 8
  %4 = alloca %struct.snd_soc_dapm_context*, align 8
  %5 = alloca %struct.arizona_priv*, align 8
  %6 = alloca %struct.arizona*, align 8
  %7 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %3, align 8
  %8 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %9 = call %struct.snd_soc_dapm_context* @snd_soc_component_get_dapm(%struct.snd_soc_component* %8)
  store %struct.snd_soc_dapm_context* %9, %struct.snd_soc_dapm_context** %4, align 8
  %10 = load %struct.snd_soc_component*, %struct.snd_soc_component** %3, align 8
  %11 = call %struct.arizona_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %10)
  store %struct.arizona_priv* %11, %struct.arizona_priv** %5, align 8
  %12 = load %struct.arizona_priv*, %struct.arizona_priv** %5, align 8
  %13 = getelementptr inbounds %struct.arizona_priv, %struct.arizona_priv* %12, i32 0, i32 0
  %14 = load %struct.arizona*, %struct.arizona** %13, align 8
  store %struct.arizona* %14, %struct.arizona** %6, align 8
  %15 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %4, align 8
  %16 = call i32 @snd_soc_dapm_new_controls(%struct.snd_soc_dapm_context* %15, i32* @arizona_spkl, i32 1)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %1
  %20 = load i32, i32* %7, align 4
  store i32 %20, i32* %2, align 4
  br label %35

21:                                               ; preds = %1
  %22 = load %struct.arizona*, %struct.arizona** %6, align 8
  %23 = getelementptr inbounds %struct.arizona, %struct.arizona* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  switch i32 %24, label %26 [
    i32 128, label %25
    i32 130, label %25
    i32 129, label %25
  ]

25:                                               ; preds = %21, %21, %21
  br label %34

26:                                               ; preds = %21
  %27 = load %struct.snd_soc_dapm_context*, %struct.snd_soc_dapm_context** %4, align 8
  %28 = call i32 @snd_soc_dapm_new_controls(%struct.snd_soc_dapm_context* %27, i32* @arizona_spkr, i32 1)
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %26
  %32 = load i32, i32* %7, align 4
  store i32 %32, i32* %2, align 4
  br label %35

33:                                               ; preds = %26
  br label %34

34:                                               ; preds = %33, %25
  store i32 0, i32* %2, align 4
  br label %35

35:                                               ; preds = %34, %31, %19
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local %struct.snd_soc_dapm_context* @snd_soc_component_get_dapm(%struct.snd_soc_component*) #1

declare dso_local %struct.arizona_priv* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @snd_soc_dapm_new_controls(%struct.snd_soc_dapm_context*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
