; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_tlv320aic23.c_tlv320aic23_set_dai_sysclk.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_tlv320aic23.c_tlv320aic23_set_dai_sysclk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { i32 }
%struct.aic23 = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32, i32, i32)* @tlv320aic23_set_dai_sysclk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tlv320aic23_set_dai_sysclk(%struct.snd_soc_dai* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.snd_soc_dai*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.aic23*, align 8
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %5, align 8
  %11 = call %struct.aic23* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai* %10)
  store %struct.aic23* %11, %struct.aic23** %9, align 8
  %12 = load i32, i32* %7, align 4
  %13 = load %struct.aic23*, %struct.aic23** %9, align 8
  %14 = getelementptr inbounds %struct.aic23, %struct.aic23* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 4
  ret i32 0
}

declare dso_local %struct.aic23* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
