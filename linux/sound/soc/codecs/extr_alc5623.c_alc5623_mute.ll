; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_alc5623.c_alc5623_mute.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_alc5623.c_alc5623_mute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }

@ALC5623_MISC_M_DAC_L_INPUT = common dso_local global i32 0, align 4
@ALC5623_MISC_M_DAC_R_INPUT = common dso_local global i32 0, align 4
@ALC5623_MISC_CTRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_dai*, i32)* @alc5623_mute to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alc5623_mute(%struct.snd_soc_dai* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_soc_dai*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_soc_component*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %3, align 8
  %9 = getelementptr inbounds %struct.snd_soc_dai, %struct.snd_soc_dai* %8, i32 0, i32 0
  %10 = load %struct.snd_soc_component*, %struct.snd_soc_component** %9, align 8
  store %struct.snd_soc_component* %10, %struct.snd_soc_component** %5, align 8
  %11 = load i32, i32* @ALC5623_MISC_M_DAC_L_INPUT, align 4
  %12 = load i32, i32* @ALC5623_MISC_M_DAC_R_INPUT, align 4
  %13 = or i32 %11, %12
  store i32 %13, i32* %6, align 4
  %14 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %15 = load i32, i32* @ALC5623_MISC_CTRL, align 4
  %16 = call i32 @snd_soc_component_read32(%struct.snd_soc_component* %14, i32 %15)
  %17 = load i32, i32* %6, align 4
  %18 = xor i32 %17, -1
  %19 = and i32 %16, %18
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %4, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %2
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* %7, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %7, align 4
  br label %26

26:                                               ; preds = %22, %2
  %27 = load %struct.snd_soc_component*, %struct.snd_soc_component** %5, align 8
  %28 = load i32, i32* @ALC5623_MISC_CTRL, align 4
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @snd_soc_component_write(%struct.snd_soc_component* %27, i32 %28, i32 %29)
  ret i32 %30
}

declare dso_local i32 @snd_soc_component_read32(%struct.snd_soc_component*, i32) #1

declare dso_local i32 @snd_soc_component_write(%struct.snd_soc_component*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
