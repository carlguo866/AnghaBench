; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_pcm1681.c_pcm1681_digital_mute.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_pcm1681.c_pcm1681_digital_mute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }
%struct.pcm1681_private = type { i32 }

@PCM1681_SOFT_MUTE_ALL = common dso_local global i32 0, align 4
@PCM1681_SOFT_MUTE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32)* @pcm1681_digital_mute to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcm1681_digital_mute(%struct.snd_soc_dai* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_soc_dai*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_soc_component*, align 8
  %6 = alloca %struct.pcm1681_private*, align 8
  %7 = alloca i32, align 4
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %3, align 8
  %9 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %8, i32 0, i32 0
  %10 = load %struct.snd_soc_component*, %struct.snd_soc_component** %9, align 8
  store %struct.snd_soc_component* %10, %struct.snd_soc_component** %5, align 8
  %11 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %12 = call %struct.pcm1681_private* @snd_soc_component_get_drvdata(%struct.snd_soc_component* %11)
  store %struct.pcm1681_private* %12, %struct.pcm1681_private** %6, align 8
  %13 = load i32, i32* %4, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* @PCM1681_SOFT_MUTE_ALL, align 4
  store i32 %16, i32* %7, align 4
  br label %18

17:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  br label %18

18:                                               ; preds = %17, %15
  %19 = load %struct.pcm1681_private*, %struct.pcm1681_private** %6, align 8
  %20 = getelementptr inbounds %struct.pcm1681_private, %struct.pcm1681_private* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @PCM1681_SOFT_MUTE, align 4
  %23 = load i32, i32* %7, align 4
  %24 = call i32 @regmap_write(i32 %21, i32 %22, i32 %23)
  ret i32 %24
}

declare dso_local %struct.pcm1681_private* @snd_soc_component_get_drvdata(%struct.snd_soc_component*) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
